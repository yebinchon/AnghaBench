; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___attach_discard_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___attach_discard_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_cmd = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.rb_node = type { i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.discard_cmd* (%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32, %struct.rb_node*, %struct.rb_node**, i32)* @__attach_discard_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.discard_cmd* @__attach_discard_cmd(%struct.f2fs_sb_info* %0, %struct.block_device* %1, i32 %2, i32 %3, i32 %4, %struct.rb_node* %5, %struct.rb_node** %6, i32 %7) #0 {
  %9 = alloca %struct.f2fs_sb_info*, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rb_node*, align 8
  %15 = alloca %struct.rb_node**, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.discard_cmd_control*, align 8
  %18 = alloca %struct.discard_cmd*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %9, align 8
  store %struct.block_device* %1, %struct.block_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.rb_node* %5, %struct.rb_node** %14, align 8
  store %struct.rb_node** %6, %struct.rb_node*** %15, align 8
  store i32 %7, i32* %16, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %20 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %21, align 8
  store %struct.discard_cmd_control* %22, %struct.discard_cmd_control** %17, align 8
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %24 = load %struct.block_device*, %struct.block_device** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.discard_cmd* @__create_discard_cmd(%struct.f2fs_sb_info* %23, %struct.block_device* %24, i32 %25, i32 %26, i32 %27)
  store %struct.discard_cmd* %28, %struct.discard_cmd** %18, align 8
  %29 = load %struct.discard_cmd*, %struct.discard_cmd** %18, align 8
  %30 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %29, i32 0, i32 0
  %31 = load %struct.rb_node*, %struct.rb_node** %14, align 8
  %32 = load %struct.rb_node**, %struct.rb_node*** %15, align 8
  %33 = call i32 @rb_link_node(i32* %30, %struct.rb_node* %31, %struct.rb_node** %32)
  %34 = load %struct.discard_cmd*, %struct.discard_cmd** %18, align 8
  %35 = getelementptr inbounds %struct.discard_cmd, %struct.discard_cmd* %34, i32 0, i32 0
  %36 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %17, align 8
  %37 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %36, i32 0, i32 0
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @rb_insert_color_cached(i32* %35, i32* %37, i32 %38)
  %40 = load %struct.discard_cmd*, %struct.discard_cmd** %18, align 8
  ret %struct.discard_cmd* %40
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.discard_cmd* @__create_discard_cmd(%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
