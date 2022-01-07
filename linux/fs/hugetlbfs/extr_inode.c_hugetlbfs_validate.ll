; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_validate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_hugetlbfs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.hugetlbfs_fs_context* }
%struct.hugetlbfs_fs_context = type { i64, i64, i64, i64, i32, i32, i32 }

@NO_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"Minimum size can not be greater than maximum size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @hugetlbfs_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_validate(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.hugetlbfs_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i32 0, i32 0
  %7 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %6, align 8
  store %struct.hugetlbfs_fs_context* %7, %struct.hugetlbfs_fs_context** %4, align 8
  %8 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %9 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %12 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %15 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @hugetlbfs_size_to_hpages(i32 %10, i32 %13, i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %20 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %22 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %25 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %28 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @hugetlbfs_size_to_hpages(i32 %23, i32 %26, i64 %29)
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %33 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %35 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NO_SIZE, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %1
  %40 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %41 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hugetlbfs_fs_context*, %struct.hugetlbfs_fs_context** %4, align 8
  %44 = getelementptr inbounds %struct.hugetlbfs_fs_context, %struct.hugetlbfs_fs_context* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %39, %1
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @hugetlbfs_size_to_hpages(i32, i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
