; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_resmask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_cpuset.c_cpuset_write_resmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_open_file = type { i32 }
%struct.cpuset = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@cpuset_hotplug_work = common dso_local global i32 0, align 4
@cpuset_rwsem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cpuset_migrate_mm_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_open_file*, i8*, i64, i32)* @cpuset_write_resmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpuset_write_resmask(%struct.kernfs_open_file* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.kernfs_open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuset*, align 8
  %10 = alloca %struct.cpuset*, align 8
  %11 = alloca i32, align 4
  store %struct.kernfs_open_file* %0, %struct.kernfs_open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %13 = call i32 @of_css(%struct.kernfs_open_file* %12)
  %14 = call %struct.cpuset* @css_cs(i32 %13)
  store %struct.cpuset* %14, %struct.cpuset** %9, align 8
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %11, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strstrip(i8* %17)
  store i8* %18, i8** %6, align 8
  %19 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %20 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %19, i32 0, i32 0
  %21 = call i32 @css_get(i32* %20)
  %22 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %23 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kernfs_break_active_protection(i32 %24)
  %26 = call i32 @flush_work(i32* @cpuset_hotplug_work)
  %27 = call i32 (...) @get_online_cpus()
  %28 = call i32 @percpu_down_write(i32* @cpuset_rwsem)
  %29 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %30 = call i32 @is_cpuset_online(%struct.cpuset* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %62

33:                                               ; preds = %4
  %34 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %35 = call %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %34)
  store %struct.cpuset* %35, %struct.cpuset** %10, align 8
  %36 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %37 = icmp ne %struct.cpuset* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %62

41:                                               ; preds = %33
  %42 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %43 = call %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %56 [
    i32 129, label %46
    i32 128, label %51
  ]

46:                                               ; preds = %41
  %47 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %48 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @update_cpumask(%struct.cpuset* %47, %struct.cpuset* %48, i8* %49)
  store i32 %50, i32* %11, align 4
  br label %59

51:                                               ; preds = %41
  %52 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %53 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @update_nodemask(%struct.cpuset* %52, %struct.cpuset* %53, i8* %54)
  store i32 %55, i32* %11, align 4
  br label %59

56:                                               ; preds = %41
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %51, %46
  %60 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %61 = call i32 @free_cpuset(%struct.cpuset* %60)
  br label %62

62:                                               ; preds = %59, %38, %32
  %63 = call i32 @percpu_up_write(i32* @cpuset_rwsem)
  %64 = call i32 (...) @put_online_cpus()
  %65 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %5, align 8
  %66 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @kernfs_unbreak_active_protection(i32 %67)
  %69 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %70 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %69, i32 0, i32 0
  %71 = call i32 @css_put(i32* %70)
  %72 = load i32, i32* @cpuset_migrate_mm_wq, align 4
  %73 = call i32 @flush_workqueue(i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = sext i32 %74 to i64
  br label %80

78:                                               ; preds = %62
  %79 = load i64, i64* %7, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  ret i64 %81
}

declare dso_local %struct.cpuset* @css_cs(i32) #1

declare dso_local i32 @of_css(%struct.kernfs_open_file*) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i32 @css_get(i32*) #1

declare dso_local i32 @kernfs_break_active_protection(i32) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @percpu_down_write(i32*) #1

declare dso_local i32 @is_cpuset_online(%struct.cpuset*) #1

declare dso_local %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset*) #1

declare dso_local %struct.TYPE_2__* @of_cft(%struct.kernfs_open_file*) #1

declare dso_local i32 @update_cpumask(%struct.cpuset*, %struct.cpuset*, i8*) #1

declare dso_local i32 @update_nodemask(%struct.cpuset*, %struct.cpuset*, i8*) #1

declare dso_local i32 @free_cpuset(%struct.cpuset*) #1

declare dso_local i32 @percpu_up_write(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @kernfs_unbreak_active_protection(i32) #1

declare dso_local i32 @css_put(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
