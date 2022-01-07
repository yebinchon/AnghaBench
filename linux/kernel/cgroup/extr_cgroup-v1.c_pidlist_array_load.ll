; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_pidlist_array_load.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cgroup-v1.c_pidlist_array_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, i32 }
%struct.cgroup_pidlist = type { i32*, i32 }
%struct.css_task_iter = type { i32 }
%struct.task_struct = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CGROUP_FILE_PROCS = common dso_local global i32 0, align 4
@cmppid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, i32, %struct.cgroup_pidlist**)* @pidlist_array_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidlist_array_load(%struct.cgroup* %0, i32 %1, %struct.cgroup_pidlist** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cgroup_pidlist**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.css_task_iter, align 4
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca %struct.cgroup_pidlist*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cgroup_pidlist** %2, %struct.cgroup_pidlist*** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %16 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = call i32 @cgroup_task_count(%struct.cgroup* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32* @kvmalloc_array(i32 %20, i32 4, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %102

28:                                               ; preds = %3
  %29 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %30 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %29, i32 0, i32 0
  %31 = call i32 @css_task_iter_start(i32* %30, i32 0, %struct.css_task_iter* %12)
  br label %32

32:                                               ; preds = %63, %28
  %33 = call %struct.task_struct* @css_task_iter_next(%struct.css_task_iter* %12)
  store %struct.task_struct* %33, %struct.task_struct** %13, align 8
  %34 = icmp ne %struct.task_struct* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %64

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @CGROUP_FILE_PROCS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %49 = call i32 @task_tgid_vnr(%struct.task_struct* %48)
  store i32 %49, i32* %10, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %52 = call i32 @task_pid_vnr(%struct.task_struct* %51)
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %10, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %53
  br label %32

64:                                               ; preds = %42, %32
  %65 = call i32 @css_task_iter_end(%struct.css_task_iter* %12)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %9, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @cmppid, align 4
  %70 = call i32 @sort(i32* %67, i32 %68, i32 4, i32 %69, i32* null)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @CGROUP_FILE_PROCS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @pidlist_uniq(i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %64
  %79 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call %struct.cgroup_pidlist* @cgroup_pidlist_find_create(%struct.cgroup* %79, i32 %80)
  store %struct.cgroup_pidlist* %81, %struct.cgroup_pidlist** %14, align 8
  %82 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %83 = icmp ne %struct.cgroup_pidlist* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @kvfree(i32* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %102

89:                                               ; preds = %78
  %90 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %91 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @kvfree(i32* %92)
  %94 = load i32*, i32** %8, align 8
  %95 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %96 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %99 = getelementptr inbounds %struct.cgroup_pidlist, %struct.cgroup_pidlist* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.cgroup_pidlist*, %struct.cgroup_pidlist** %14, align 8
  %101 = load %struct.cgroup_pidlist**, %struct.cgroup_pidlist*** %7, align 8
  store %struct.cgroup_pidlist* %100, %struct.cgroup_pidlist** %101, align 8
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %89, %84, %25
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @cgroup_task_count(%struct.cgroup*) #1

declare dso_local i32* @kvmalloc_array(i32, i32, i32) #1

declare dso_local i32 @css_task_iter_start(i32*, i32, %struct.css_task_iter*) #1

declare dso_local %struct.task_struct* @css_task_iter_next(%struct.css_task_iter*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_tgid_vnr(%struct.task_struct*) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @css_task_iter_end(%struct.css_task_iter*) #1

declare dso_local i32 @sort(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @pidlist_uniq(i32*, i32) #1

declare dso_local %struct.cgroup_pidlist* @cgroup_pidlist_find_create(%struct.cgroup*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
