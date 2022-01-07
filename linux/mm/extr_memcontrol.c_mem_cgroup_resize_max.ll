; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_resize_max.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_resize_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.page_counter, %struct.page_counter }
%struct.page_counter = type { i64 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@memcg_max_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_cgroup*, i64, i32)* @mem_cgroup_resize_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_resize_max(%struct.mem_cgroup* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page_counter*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %15, i32 0, i32 0
  br label %20

17:                                               ; preds = %3
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %19 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %18, i32 0, i32 1
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi %struct.page_counter* [ %16, %14 ], [ %19, %17 ]
  store %struct.page_counter* %21, %struct.page_counter** %11, align 8
  br label %22

22:                                               ; preds = %91, %20
  %23 = load i32, i32* @current, align 4
  %24 = call i64 @signal_pending(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINTR, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %92

29:                                               ; preds = %22
  %30 = call i32 @mutex_lock(i32* @memcg_max_mutex)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %34, %38
  %40 = zext i1 %39 to i32
  br label %49

41:                                               ; preds = %29
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %44 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ule i64 %42, %46
  %48 = zext i1 %47 to i32
  br label %49

49:                                               ; preds = %41, %33
  %50 = phi i32 [ %40, %33 ], [ %48, %41 ]
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = call i32 @mutex_unlock(i32* @memcg_max_mutex)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %92

57:                                               ; preds = %49
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.page_counter*, %struct.page_counter** %11, align 8
  %60 = getelementptr inbounds %struct.page_counter, %struct.page_counter* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %7, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load %struct.page_counter*, %struct.page_counter** %11, align 8
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @page_counter_set_max(%struct.page_counter* %65, i64 %66)
  store i32 %67, i32* %9, align 4
  %68 = call i32 @mutex_unlock(i32* @memcg_max_mutex)
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %64
  br label %92

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %77 = call i32 @drain_all_stock(%struct.mem_cgroup* %76)
  store i32 1, i32* %8, align 4
  br label %91

78:                                               ; preds = %72
  %79 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup* %79, i32 1, i32 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* @EBUSY, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %92

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90, %75
  br i1 true, label %22, label %92

92:                                               ; preds = %91, %87, %71, %53, %26
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %100 = call i32 @memcg_oom_recover(%struct.mem_cgroup* %99)
  br label %101

101:                                              ; preds = %98, %95, %92
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @page_counter_set_max(%struct.page_counter*, i64) #1

declare dso_local i32 @drain_all_stock(%struct.mem_cgroup*) #1

declare dso_local i32 @try_to_free_mem_cgroup_pages(%struct.mem_cgroup*, i32, i32, i32) #1

declare dso_local i32 @memcg_oom_recover(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
