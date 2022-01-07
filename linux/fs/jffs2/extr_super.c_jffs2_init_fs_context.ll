; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_super.c_jffs2_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.jffs2_sb_info* }
%struct.jffs2_sb_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jffs2_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @jffs2_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.jffs2_sb_info*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.jffs2_sb_info* @kzalloc(i32 4, i32 %5)
  store %struct.jffs2_sb_info* %6, %struct.jffs2_sb_info** %4, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %8 = icmp ne %struct.jffs2_sb_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %14 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 1
  store %struct.jffs2_sb_info* %13, %struct.jffs2_sb_info** %15, align 8
  %16 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %17 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %16, i32 0, i32 0
  store i32* @jffs2_context_ops, i32** %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.jffs2_sb_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
