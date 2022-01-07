; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_oom_synchronize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_mem_cgroup_oom_synchronize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mem_cgroup*, i32, i32 }
%struct.mem_cgroup = type { i32, i32 }
%struct.oom_wait_info = type { %struct.TYPE_4__, %struct.mem_cgroup* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i64 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@memcg_oom_wake_function = common dso_local global i32 0, align 4
@memcg_oom_waitq = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_oom_synchronize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.oom_wait_info, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %4, align 8
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %11 = icmp ne %struct.mem_cgroup* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  br label %79

17:                                               ; preds = %13
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %19 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 1
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %19, align 8
  %20 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @memcg_oom_wake_function, align 4
  %23 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %26 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %27, align 8
  %28 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %32 = load i32, i32* @TASK_KILLABLE, align 4
  %33 = call i32 @prepare_to_wait(i32* @memcg_oom_waitq, %struct.TYPE_4__* %31, i32 %32)
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %35 = call i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup* %34)
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %37 = call i32 @mem_cgroup_oom_trylock(%struct.mem_cgroup* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %17
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %42 = call i32 @mem_cgroup_oom_notify(%struct.mem_cgroup* %41)
  br label %43

43:                                               ; preds = %40, %17
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %43
  %47 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %48 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %46
  %52 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %53 = call i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup* %52)
  %54 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %55 = call i32 @finish_wait(i32* @memcg_oom_waitq, %struct.TYPE_4__* %54)
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @mem_cgroup_out_of_memory(%struct.mem_cgroup* %56, i32 %59, i32 %62)
  br label %70

64:                                               ; preds = %46, %43
  %65 = call i32 (...) @schedule()
  %66 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %67 = call i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup* %66)
  %68 = getelementptr inbounds %struct.oom_wait_info, %struct.oom_wait_info* %5, i32 0, i32 0
  %69 = call i32 @finish_wait(i32* @memcg_oom_waitq, %struct.TYPE_4__* %68)
  br label %70

70:                                               ; preds = %64, %51
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %75 = call i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup* %74)
  %76 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %77 = call i32 @memcg_oom_recover(%struct.mem_cgroup* %76)
  br label %78

78:                                               ; preds = %73, %70
  br label %79

79:                                               ; preds = %78, %16
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %81, align 8
  %82 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %83 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %82, i32 0, i32 0
  %84 = call i32 @css_put(i32* %83)
  store i32 1, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @prepare_to_wait(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mem_cgroup_mark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_oom_trylock(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_oom_notify(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_unmark_under_oom(%struct.mem_cgroup*) #1

declare dso_local i32 @finish_wait(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mem_cgroup_out_of_memory(%struct.mem_cgroup*, i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @mem_cgroup_oom_unlock(%struct.mem_cgroup*) #1

declare dso_local i32 @memcg_oom_recover(%struct.mem_cgroup*) #1

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
