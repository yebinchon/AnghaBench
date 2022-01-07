; ModuleID = '/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/sched/extr_cpufreq_schedutil.c_sugov_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sugov_tunables = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cpufreq_policy = type { %struct.sugov_policy* }
%struct.sugov_policy = type { %struct.sugov_tunables*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@global_tunables_lock = common dso_local global i32 0, align 4
@global_tunables = common dso_local global %struct.sugov_tunables* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@sugov_tunables_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@schedutil_gov = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"initialization failed (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @sugov_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sugov_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.sugov_policy*, align 8
  %5 = alloca %struct.sugov_tunables*, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 0
  %9 = load %struct.sugov_policy*, %struct.sugov_policy** %8, align 8
  %10 = icmp ne %struct.sugov_policy* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %107

14:                                               ; preds = %1
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %16 = call i32 @cpufreq_enable_fast_switch(%struct.cpufreq_policy* %15)
  %17 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %18 = call %struct.sugov_policy* @sugov_policy_alloc(%struct.cpufreq_policy* %17)
  store %struct.sugov_policy* %18, %struct.sugov_policy** %4, align 8
  %19 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %20 = icmp ne %struct.sugov_policy* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %101

24:                                               ; preds = %14
  %25 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %26 = call i32 @sugov_kthread_create(%struct.sugov_policy* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %98

30:                                               ; preds = %24
  %31 = call i32 @mutex_lock(i32* @global_tunables_lock)
  %32 = load %struct.sugov_tunables*, %struct.sugov_tunables** @global_tunables, align 8
  %33 = icmp ne %struct.sugov_tunables* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %30
  %35 = call i32 (...) @have_governor_per_policy()
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %94

41:                                               ; preds = %34
  %42 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  store %struct.sugov_policy* %42, %struct.sugov_policy** %44, align 8
  %45 = load %struct.sugov_tunables*, %struct.sugov_tunables** @global_tunables, align 8
  %46 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %47 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %46, i32 0, i32 0
  store %struct.sugov_tunables* %45, %struct.sugov_tunables** %47, align 8
  %48 = load %struct.sugov_tunables*, %struct.sugov_tunables** @global_tunables, align 8
  %49 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %48, i32 0, i32 0
  %50 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %51 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %50, i32 0, i32 1
  %52 = call i32 @gov_attr_set_get(%struct.TYPE_4__* %49, i32* %51)
  br label %83

53:                                               ; preds = %30
  %54 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %55 = call %struct.sugov_tunables* @sugov_tunables_alloc(%struct.sugov_policy* %54)
  store %struct.sugov_tunables* %55, %struct.sugov_tunables** %5, align 8
  %56 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %57 = icmp ne %struct.sugov_tunables* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %94

61:                                               ; preds = %53
  %62 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %63 = call i32 @cpufreq_policy_transition_delay_us(%struct.cpufreq_policy* %62)
  %64 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %65 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %67 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %68 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %67, i32 0, i32 0
  store %struct.sugov_policy* %66, %struct.sugov_policy** %68, align 8
  %69 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %70 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %71 = getelementptr inbounds %struct.sugov_policy, %struct.sugov_policy* %70, i32 0, i32 0
  store %struct.sugov_tunables* %69, %struct.sugov_tunables** %71, align 8
  %72 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %73 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %76 = call i32 @get_governor_parent_kobj(%struct.cpufreq_policy* %75)
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @schedutil_gov, i32 0, i32 0), align 4
  %78 = call i32 @kobject_init_and_add(i32* %74, i32* @sugov_tunables_ktype, i32 %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %61
  br label %85

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %82, %41
  %84 = call i32 @mutex_unlock(i32* @global_tunables_lock)
  store i32 0, i32* %2, align 4
  br label %107

85:                                               ; preds = %81
  %86 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %87 = getelementptr inbounds %struct.sugov_tunables, %struct.sugov_tunables* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @kobject_put(i32* %88)
  %90 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %91 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %90, i32 0, i32 0
  store %struct.sugov_policy* null, %struct.sugov_policy** %91, align 8
  %92 = load %struct.sugov_tunables*, %struct.sugov_tunables** %5, align 8
  %93 = call i32 @sugov_tunables_free(%struct.sugov_tunables* %92)
  br label %94

94:                                               ; preds = %85, %58, %38
  %95 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %96 = call i32 @sugov_kthread_stop(%struct.sugov_policy* %95)
  %97 = call i32 @mutex_unlock(i32* @global_tunables_lock)
  br label %98

98:                                               ; preds = %94, %29
  %99 = load %struct.sugov_policy*, %struct.sugov_policy** %4, align 8
  %100 = call i32 @sugov_policy_free(%struct.sugov_policy* %99)
  br label %101

101:                                              ; preds = %98, %21
  %102 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %103 = call i32 @cpufreq_disable_fast_switch(%struct.cpufreq_policy* %102)
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %101, %83, %11
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @cpufreq_enable_fast_switch(%struct.cpufreq_policy*) #1

declare dso_local %struct.sugov_policy* @sugov_policy_alloc(%struct.cpufreq_policy*) #1

declare dso_local i32 @sugov_kthread_create(%struct.sugov_policy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @have_governor_per_policy(...) #1

declare dso_local i32 @gov_attr_set_get(%struct.TYPE_4__*, i32*) #1

declare dso_local %struct.sugov_tunables* @sugov_tunables_alloc(%struct.sugov_policy*) #1

declare dso_local i32 @cpufreq_policy_transition_delay_us(%struct.cpufreq_policy*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @get_governor_parent_kobj(%struct.cpufreq_policy*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @sugov_tunables_free(%struct.sugov_tunables*) #1

declare dso_local i32 @sugov_kthread_stop(%struct.sugov_policy*) #1

declare dso_local i32 @sugov_policy_free(%struct.sugov_policy*) #1

declare dso_local i32 @cpufreq_disable_fast_switch(%struct.cpufreq_policy*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
