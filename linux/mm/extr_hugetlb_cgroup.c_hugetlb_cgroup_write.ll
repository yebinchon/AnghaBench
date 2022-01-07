; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb_cgroup.c_hugetlb_cgroup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.hugetlb_cgroup = type { i32* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@hstates = common dso_local global i32* null, align 8
@hugetlb_limit_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @hugetlb_cgroup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_cgroup_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.hugetlb_cgroup*, align 8
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %15 = call i32 @of_css(%struct.kernfs_open_file* %14)
  %16 = call %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(i32 %15)
  store %struct.hugetlb_cgroup* %16, %struct.hugetlb_cgroup** %13, align 8
  %17 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %13, align 8
  %18 = call i64 @hugetlb_cgroup_is_root(%struct.hugetlb_cgroup* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %75

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strstrip(i8* %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @page_counter_memparse(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %12)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %75

32:                                               ; preds = %23
  %33 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %34 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MEMFILE_IDX(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32*, i32** @hstates, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = call i32 @huge_page_order(i32* %42)
  %44 = shl i32 1, %43
  %45 = call i64 @round_down(i64 %38, i32 %44)
  store i64 %45, i64* %12, align 8
  %46 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %47 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @MEMFILE_ATTR(i32 %49)
  switch i32 %50, label %62 [
    i32 128, label %51
  ]

51:                                               ; preds = %32
  %52 = call i32 @mutex_lock(i32* @hugetlb_limit_mutex)
  %53 = load %struct.hugetlb_cgroup*, %struct.hugetlb_cgroup** %13, align 8
  %54 = getelementptr inbounds %struct.hugetlb_cgroup, %struct.hugetlb_cgroup* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @page_counter_set_max(i32* %58, i64 %59)
  store i32 %60, i32* %10, align 4
  %61 = call i32 @mutex_unlock(i32* @hugetlb_limit_mutex)
  br label %65

62:                                               ; preds = %32
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %62, %51
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = sext i32 %66 to i64
  br label %72

70:                                               ; preds = %65
  %71 = load i64, i64* %8, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %30, %20
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.hugetlb_cgroup* @hugetlb_cgroup_from_css(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i64 @hugetlb_cgroup_is_root(%struct.hugetlb_cgroup*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @page_counter_memparse(i8*, i8*, i64*) #1

declare dso_local i32 @MEMFILE_IDX(i32) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @huge_page_order(i32*) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @page_counter_set_max(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
