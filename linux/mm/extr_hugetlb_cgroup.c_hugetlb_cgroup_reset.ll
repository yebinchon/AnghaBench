; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_reset.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.page_counter = type { i32 }
%struct.hugetlb_cgroup = type { %struct.page_counter* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @hugetlb_cgroup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hugetlb_cgroup_reset(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page_counter*, align 8
  %11 = alloca %struct.hugetlb_cgroup*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %13 = call i32 @of_css(%struct.kernfs_open_file* %12)
  %14 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(i32 %13)
  store %struct.hugetlb_cgroup* %14, %struct.hugetlb_cgroup** %11, align 8
  %15 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %11, align 8
  %16 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %15, i32 0, i32 0
  %17 = load %struct.page_counter*, %struct.page_counter** %16, align 8
  %18 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %19 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @MEMFILE_IDX(i32 %21)
  %23 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %17, i64 %22
  store %struct.page_counter* %23, %struct.page_counter** %10, align 8
  %24 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %25 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @MEMFILE_ATTR(i32 %27)
  switch i32 %28, label %35 [
    i32 128, label %29
    i32 129, label %32
  ]

29:                                               ; preds = %4
  %30 = load %struct.page_counter*, %struct.page_counter** %10, align 8
  %31 = call i32 @page_counter_reset_watermark(%struct.page_counter* %30)
  br label %38

32:                                               ; preds = %4
  %33 = load %struct.page_counter*, %struct.page_counter** %10, align 8
  %34 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  br label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %32, %29
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = sext i32 %39 to i64
  br label %45

43:                                               ; preds = %38
  %44 = load i64, i64* %7, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  ret i64 %46
}

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i64 @MEMFILE_IDX(i32) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @page_counter_reset_watermark(%struct.page_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
