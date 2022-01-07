; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.hugetlbfs_fs_context* }
%struct.hugetlbfs_fs_context = type { i32, i32, i32, i32, i8*, i8*, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@default_hstate = common dso_local global i32 0, align 4
@NO_SIZE = common dso_local global i8* null, align 8
@hugetlbfs_fs_context_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @hugetlbfs_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.hugetlbfs_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.hugetlbfs_fs_context* @kzalloc(i32 48, i32 %5)
  store %struct.hugetlbfs_fs_context* %6, %struct.hugetlbfs_fs_context** %4, align 8
  %7 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %8 = icmp ne %struct.hugetlbfs_fs_context* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %40

12:                                               ; preds = %1
  %13 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %14 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %16 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = call i32 (...) @current_fsuid()
  %18 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %19 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = call i32 (...) @current_fsgid()
  %21 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %21, i32 0, i32 7
  store i32 %20, i32* %22, align 8
  %23 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %24 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %23, i32 0, i32 2
  store i32 493, i32* %24, align 8
  %25 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %26 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %25, i32 0, i32 6
  store i32* @default_hstate, i32** %26, align 8
  %27 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %28 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %27, i32 0, i32 3
  store i32 -1, i32* %28, align 4
  %29 = load i8*, i8** @NO_SIZE, align 8
  %30 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %31 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @NO_SIZE, align 8
  %33 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %34 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %36 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %37 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %36, i32 0, i32 1
  store %struct.hugetlbfs_fs_context* %35, %struct.hugetlbfs_fs_context** %37, align 8
  %38 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %39 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %38, i32 0, i32 0
  store i32* @hugetlbfs_fs_context_ops, i32** %39, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %12, %9
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.hugetlbfs_fs_context* @kzalloc(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
