; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___insert_discard_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c___insert_discard_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.discard_cmd = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.block_device = type { i32 }
%struct.rb_node = type { i32 }
%struct.discard_cmd_control = type { i32 }
%struct.TYPE_2__ = type { %struct.discard_cmd_control* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.discard_cmd* (%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32, %struct.rb_node**, %struct.rb_node*)* @__insert_discard_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.discard_cmd* @__insert_discard_tree(%struct.f2fs_sb_info* %0, %struct.block_device* %1, i32 %2, i32 %3, i32 %4, %struct.rb_node** %5, %struct.rb_node* %6) #0 {
  %8 = alloca %struct.discard_cmd*, align 8
  %9 = alloca %struct.f2fs_sb_info*, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rb_node**, align 8
  %15 = alloca %struct.rb_node*, align 8
  %16 = alloca %struct.discard_cmd_control*, align 8
  %17 = alloca %struct.rb_node**, align 8
  %18 = alloca %struct.rb_node*, align 8
  %19 = alloca %struct.discard_cmd*, align 8
  %20 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %9, align 8
  store %struct.block_device* %1, %struct.block_device** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.rb_node** %5, %struct.rb_node*** %14, align 8
  store %struct.rb_node* %6, %struct.rb_node** %15, align 8
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %22 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %23, align 8
  store %struct.discard_cmd_control* %24, %struct.discard_cmd_control** %16, align 8
  store %struct.rb_node* null, %struct.rb_node** %18, align 8
  store %struct.discard_cmd* null, %struct.discard_cmd** %19, align 8
  store i32 1, i32* %20, align 4
  %25 = load %struct.rb_node**, %struct.rb_node*** %14, align 8
  %26 = icmp ne %struct.rb_node** %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %7
  %28 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %29 = icmp ne %struct.rb_node* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  store %struct.rb_node* %31, %struct.rb_node** %18, align 8
  %32 = load %struct.rb_node**, %struct.rb_node*** %14, align 8
  store %struct.rb_node** %32, %struct.rb_node*** %17, align 8
  br label %39

33:                                               ; preds = %27, %7
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %35 = load %struct.discard_cmd_control*, %struct.discard_cmd_control** %16, align 8
  %36 = getelementptr inbounds %struct.discard_cmd_control, %struct.discard_cmd_control* %35, i32 0, i32 0
  %37 = load i32, i32* %11, align 4
  %38 = call %struct.rb_node** @f2fs_lookup_rb_tree_for_insert(%struct.f2fs_sb_info* %34, i32* %36, %struct.rb_node** %18, i32 %37, i32* %20)
  store %struct.rb_node** %38, %struct.rb_node*** %17, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %9, align 8
  %41 = load %struct.block_device*, %struct.block_device** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  %46 = load %struct.rb_node**, %struct.rb_node*** %17, align 8
  %47 = load i32, i32* %20, align 4
  %48 = call %struct.discard_cmd* @__attach_discard_cmd(%struct.f2fs_sb_info* %40, %struct.block_device* %41, i32 %42, i32 %43, i32 %44, %struct.rb_node* %45, %struct.rb_node** %46, i32 %47)
  store %struct.discard_cmd* %48, %struct.discard_cmd** %19, align 8
  %49 = load %struct.discard_cmd*, %struct.discard_cmd** %19, align 8
  %50 = icmp ne %struct.discard_cmd* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  store %struct.discard_cmd* null, %struct.discard_cmd** %8, align 8
  br label %54

52:                                               ; preds = %39
  %53 = load %struct.discard_cmd*, %struct.discard_cmd** %19, align 8
  store %struct.discard_cmd* %53, %struct.discard_cmd** %8, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.discard_cmd*, %struct.discard_cmd** %8, align 8
  ret %struct.discard_cmd* %55
}

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.rb_node** @f2fs_lookup_rb_tree_for_insert(%struct.f2fs_sb_info*, i32*, %struct.rb_node**, i32, i32*) #1

declare dso_local %struct.discard_cmd* @__attach_discard_cmd(%struct.f2fs_sb_info*, %struct.block_device*, i32, i32, i32, %struct.rb_node*, %struct.rb_node**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
