; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.fuse_fs_context* }
%struct.fuse_fs_context = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@fuse_fill_super = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @fuse_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.fuse_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i32 0, i32 0
  %7 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %6, align 8
  store %struct.fuse_fs_context* %7, %struct.fuse_fs_context** %4, align 8
  %8 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %4, align 8
  %9 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %4, align 8
  %19 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.fuse_fs_context*, %struct.fuse_fs_context** %4, align 8
  %24 = getelementptr inbounds %struct.fuse_fs_context, %struct.fuse_fs_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22, %17, %12, %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %32 = load i32, i32* @fuse_fill_super, align 4
  %33 = call i32 @get_tree_nodev(%struct.fs_context* %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @get_tree_nodev(%struct.fs_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
