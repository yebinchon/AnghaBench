; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padata_instance = type { i8*, i8*, %struct.TYPE_2__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpumask = type { i32 }
%struct.parallel_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s_parallel\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s_serial\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_CPU_INTENSIVE = common dso_local global i32 0, align 4
@padata_attr_type = common dso_local global i32 0, align 4
@hp_online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.padata_instance* (i8*, %struct.cpumask*, %struct.cpumask*)* @padata_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.padata_instance* @padata_alloc(i8* %0, %struct.cpumask* %1, %struct.cpumask* %2) #0 {
  %4 = alloca %struct.padata_instance*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca %struct.padata_instance*, align 8
  %9 = alloca %struct.parallel_data*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.cpumask* %1, %struct.cpumask** %6, align 8
  store %struct.cpumask* %2, %struct.cpumask** %7, align 8
  store %struct.parallel_data* null, %struct.parallel_data** %9, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.padata_instance* @kzalloc(i32 56, i32 %10)
  store %struct.padata_instance* %11, %struct.padata_instance** %8, align 8
  %12 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %13 = icmp ne %struct.padata_instance* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %136

15:                                               ; preds = %3
  %16 = load i32, i32* @WQ_UNBOUND, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16, i32 0, i8* %17)
  %19 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %20 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %22 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %133

26:                                               ; preds = %15
  %27 = call i32 (...) @get_online_cpus()
  %28 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %29 = load i32, i32* @WQ_CPU_INTENSIVE, align 4
  %30 = or i32 %28, %29
  %31 = load i8*, i8** %5, align 8
  %32 = call i8* @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 1, i8* %31)
  %33 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %34 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %36 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %26
  br label %127

40:                                               ; preds = %26
  %41 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %42 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @alloc_cpumask_var(i32* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %122

48:                                               ; preds = %40
  %49 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %50 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i32 @alloc_cpumask_var(i32* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %57 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @free_cpumask_var(i32 %59)
  br label %122

61:                                               ; preds = %48
  %62 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %63 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %64 = call i32 @padata_validate_cpumask(%struct.padata_instance* %62, %struct.cpumask* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %68 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %69 = call i32 @padata_validate_cpumask(%struct.padata_instance* %67, %struct.cpumask* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %61
  br label %111

72:                                               ; preds = %66
  %73 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %74 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %75 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %76 = call %struct.parallel_data* @padata_alloc_pd(%struct.padata_instance* %73, %struct.cpumask* %74, %struct.cpumask* %75)
  store %struct.parallel_data* %76, %struct.parallel_data** %9, align 8
  %77 = load %struct.parallel_data*, %struct.parallel_data** %9, align 8
  %78 = icmp ne %struct.parallel_data* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %111

80:                                               ; preds = %72
  %81 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %82 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.parallel_data*, %struct.parallel_data** %9, align 8
  %85 = call i32 @rcu_assign_pointer(i32 %83, %struct.parallel_data* %84)
  %86 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %87 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %91 = call i32 @cpumask_copy(i32 %89, %struct.cpumask* %90)
  %92 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %93 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %97 = call i32 @cpumask_copy(i32 %95, %struct.cpumask* %96)
  %98 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %99 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %101 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %100, i32 0, i32 6
  %102 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32* %101)
  %103 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %104 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %103, i32 0, i32 5
  %105 = call i32 @kobject_init(i32* %104, i32* @padata_attr_type)
  %106 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %107 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %106, i32 0, i32 4
  %108 = call i32 @mutex_init(i32* %107)
  %109 = call i32 (...) @put_online_cpus()
  %110 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  store %struct.padata_instance* %110, %struct.padata_instance** %4, align 8
  br label %137

111:                                              ; preds = %79, %71
  %112 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %113 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @free_cpumask_var(i32 %115)
  %117 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %118 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @free_cpumask_var(i32 %120)
  br label %122

122:                                              ; preds = %111, %55, %47
  %123 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %124 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @destroy_workqueue(i8* %125)
  br label %127

127:                                              ; preds = %122, %39
  %128 = call i32 (...) @put_online_cpus()
  %129 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %130 = getelementptr inbounds %struct.padata_instance, %struct.padata_instance* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @destroy_workqueue(i8* %131)
  br label %133

133:                                              ; preds = %127, %25
  %134 = load %struct.padata_instance*, %struct.padata_instance** %8, align 8
  %135 = call i32 @kfree(%struct.padata_instance* %134)
  br label %136

136:                                              ; preds = %133, %14
  store %struct.padata_instance* null, %struct.padata_instance** %4, align 8
  br label %137

137:                                              ; preds = %136, %80
  %138 = load %struct.padata_instance*, %struct.padata_instance** %4, align 8
  ret %struct.padata_instance* %138
}

declare dso_local %struct.padata_instance* @kzalloc(i32, i32) #1

declare dso_local i8* @alloc_workqueue(i8*, i32, i32, i8*) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @padata_validate_cpumask(%struct.padata_instance*, %struct.cpumask*) #1

declare dso_local %struct.parallel_data* @padata_alloc_pd(%struct.padata_instance*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.parallel_data*) #1

declare dso_local i32 @cpumask_copy(i32, %struct.cpumask*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(i32*) #1

declare dso_local i32 @kobject_init(i32*, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @put_online_cpus(...) #1

declare dso_local i32 @destroy_workqueue(i8*) #1

declare dso_local i32 @kfree(%struct.padata_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
