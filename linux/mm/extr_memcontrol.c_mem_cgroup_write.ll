; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_write.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.mem_cgroup = type { i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [142 x i8] c"kmem.limit_in_bytes is deprecated and will be removed. Please report your usecase to linux-mm@kvack.org if you depend on this functionality.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_open_file*, i8*, i64, i32)* @mem_cgroup_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_write(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mem_cgroup*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %14 = call i32 @of_css(%struct.kernfs_open_file* %13)
  %15 = call %struct.mem_cgroup* @mem_cgroup_from_css(i32 %14)
  store %struct.mem_cgroup* %15, %struct.mem_cgroup** %10, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strstrip(i8* %16)
  store i8* %17, i8** %7, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @page_counter_memparse(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %26 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MEMFILE_ATTR(i32 %28)
  switch i32 %29, label %65 [
    i32 133, label %30
    i32 132, label %61
  ]

30:                                               ; preds = %24
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %32 = call i32 @mem_cgroup_is_root(%struct.mem_cgroup* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %12, align 4
  br label %65

37:                                               ; preds = %30
  %38 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %39 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MEMFILE_TYPE(i32 %41)
  switch i32 %42, label %60 [
    i32 130, label %43
    i32 129, label %47
    i32 131, label %51
    i32 128, label %56
  ]

43:                                               ; preds = %37
  %44 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @mem_cgroup_resize_max(%struct.mem_cgroup* %44, i64 %45, i32 0)
  store i32 %46, i32* %12, align 4
  br label %60

47:                                               ; preds = %37
  %48 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @mem_cgroup_resize_max(%struct.mem_cgroup* %48, i64 %49, i32 1)
  store i32 %50, i32* %12, align 4
  br label %60

51:                                               ; preds = %37
  %52 = call i32 @pr_warn_once(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i32 @memcg_update_kmem_max(%struct.mem_cgroup* %53, i64 %54)
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %37
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %58 = load i64, i64* %11, align 8
  %59 = call i32 @memcg_update_tcp_max(%struct.mem_cgroup* %57, i64 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %37, %56, %51, %47, %43
  br label %65

61:                                               ; preds = %24
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %64 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %24, %61, %60, %34
  %66 = load i32, i32* %12, align 4
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

75:                                               ; preds = %72, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_css(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @page_counter_memparse(i8*, i8*, i64*) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i32 @mem_cgroup_is_root(%struct.mem_cgroup*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @mem_cgroup_resize_max(%struct.mem_cgroup*, i64, i32) #1

declare dso_local i32 @pr_warn_once(i8*) #1

declare dso_local i32 @memcg_update_kmem_max(%struct.mem_cgroup*, i64) #1

declare dso_local i32 @memcg_update_tcp_max(%struct.mem_cgroup*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
