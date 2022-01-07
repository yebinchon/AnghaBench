; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_print_oom_meminfo.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_print_oom_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"memory: usage %llukB, limit %llukB, failcnt %lu\0A\00", align 1
@memory_cgrp_subsys = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"swap: usage %llukB, limit %llukB, failcnt %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"memory+swap: usage %llukB, limit %llukB, failcnt %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"kmem: usage %llukB, limit %llukB, failcnt %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Memory cgroup stats for \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_print_oom_meminfo(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca i8*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  %4 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %5 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %4, i32 0, i32 4
  %6 = call i64 @page_counter_read(%struct.TYPE_4__* %5)
  %7 = trunc i64 %6 to i32
  %8 = call i32 @K(i32 %7)
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %10 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @K(i32 %13)
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %14, i32 %18)
  %20 = load i32, i32* @memory_cgrp_subsys, align 4
  %21 = call i64 @cgroup_subsys_on_dfl(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %24, i32 0, i32 3
  %26 = call i64 @page_counter_read(%struct.TYPE_4__* %25)
  %27 = trunc i64 %26 to i32
  %28 = call i32 @K(i32 %27)
  %29 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %30 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @K(i32 %33)
  %35 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %36 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %34, i32 %38)
  br label %73

40:                                               ; preds = %1
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %42 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %41, i32 0, i32 2
  %43 = call i64 @page_counter_read(%struct.TYPE_4__* %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @K(i32 %44)
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %47 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @K(i32 %50)
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %53 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %51, i32 %55)
  %57 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %58 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %57, i32 0, i32 1
  %59 = call i64 @page_counter_read(%struct.TYPE_4__* %58)
  %60 = trunc i64 %59 to i32
  %61 = call i32 @K(i32 %60)
  %62 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %63 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @K(i32 %66)
  %68 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %69 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %40, %23
  %74 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %75 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %76 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @pr_cont_cgroup_path(i32 %78)
  %80 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %82 = call i8* @memory_stat_format(%struct.mem_cgroup* %81)
  store i8* %82, i8** %3, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %73
  br label %91

86:                                               ; preds = %73
  %87 = load i8*, i8** %3, align 8
  %88 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @kfree(i8* %89)
  br label %91

91:                                               ; preds = %86, %85
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @K(i32) #1

declare dso_local i64 @page_counter_read(%struct.TYPE_4__*) #1

declare dso_local i64 @cgroup_subsys_on_dfl(i32) #1

declare dso_local i32 @pr_cont_cgroup_path(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i8* @memory_stat_format(%struct.mem_cgroup*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
