; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___free_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irqaction = type { i8*, i32, %struct.TYPE_4__*, i64, i32 (i32, i8*)*, %struct.irqaction* }
%struct.TYPE_4__ = type { i64 }
%struct.irq_desc = type { i32, %struct.TYPE_5__, i32, i32, %struct.irqaction*, i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Trying to free IRQ %d from IRQ context!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Trying to free already-free IRQ %d\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.irqaction* (%struct.irq_desc*, i8*)* @__free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.irqaction* @__free_irq(%struct.irq_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.irqaction*, align 8
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.irqaction*, align 8
  %8 = alloca %struct.irqaction**, align 8
  %9 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (...) @in_interrupt()
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @WARN(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %21 = call i32 @chip_bus_lock(%struct.irq_desc* %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 3
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @raw_spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 4
  store %struct.irqaction** %27, %struct.irqaction*** %8, align 8
  br label %28

28:                                               ; preds = %52, %2
  %29 = load %struct.irqaction**, %struct.irqaction*** %8, align 8
  %30 = load %struct.irqaction*, %struct.irqaction** %29, align 8
  store %struct.irqaction* %30, %struct.irqaction** %7, align 8
  %31 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %32 = icmp ne %struct.irqaction* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 3
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %41 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %40)
  %42 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %43 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  store %struct.irqaction* null, %struct.irqaction** %3, align 8
  br label %163

45:                                               ; preds = %28
  %46 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %47 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %55

52:                                               ; preds = %45
  %53 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %54 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %53, i32 0, i32 5
  store %struct.irqaction** %54, %struct.irqaction*** %8, align 8
  br label %28

55:                                               ; preds = %51
  %56 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %57 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %56, i32 0, i32 5
  %58 = load %struct.irqaction*, %struct.irqaction** %57, align 8
  %59 = load %struct.irqaction**, %struct.irqaction*** %8, align 8
  store %struct.irqaction* %58, %struct.irqaction** %59, align 8
  %60 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %61 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %62 = call i32 @irq_pm_remove_action(%struct.irq_desc* %60, %struct.irqaction* %61)
  %63 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %64 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %63, i32 0, i32 4
  %65 = load %struct.irqaction*, %struct.irqaction** %64, align 8
  %66 = icmp ne %struct.irqaction* %65, null
  br i1 %66, label %72, label %67

67:                                               ; preds = %55
  %68 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %69 = call i32 @irq_settings_clr_disable_unlazy(%struct.irq_desc* %68)
  %70 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %71 = call i32 @irq_shutdown(%struct.irq_desc* %70)
  br label %72

72:                                               ; preds = %67, %55
  %73 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %74 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %73, i32 0, i32 3
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @raw_spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %78 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %77)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %81 = call i32 @unregister_handler_proc(i32 %79, %struct.irqaction* %80)
  %82 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %83 = call i32 @__synchronize_hardirq(%struct.irq_desc* %82, i32 1)
  %84 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %85 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %122

88:                                               ; preds = %72
  %89 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %90 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @kthread_stop(i64 %91)
  %93 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %94 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @put_task_struct(i64 %95)
  %97 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %98 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = icmp ne %struct.TYPE_4__* %99, null
  br i1 %100, label %101, label %121

101:                                              ; preds = %88
  %102 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %103 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %102, i32 0, i32 2
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %101
  %109 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %110 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @kthread_stop(i64 %113)
  %115 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %116 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @put_task_struct(i64 %119)
  br label %121

121:                                              ; preds = %108, %101, %88
  br label %122

122:                                              ; preds = %121, %72
  %123 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %124 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %123, i32 0, i32 4
  %125 = load %struct.irqaction*, %struct.irqaction** %124, align 8
  %126 = icmp ne %struct.irqaction* %125, null
  br i1 %126, label %147, label %127

127:                                              ; preds = %122
  %128 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %129 = call i32 @chip_bus_lock(%struct.irq_desc* %128)
  %130 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %131 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %130, i32 0, i32 3
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @raw_spin_lock_irqsave(i32* %131, i64 %132)
  %134 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %135 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %134, i32 0, i32 1
  %136 = call i32 @irq_domain_deactivate_irq(%struct.TYPE_5__* %135)
  %137 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %138 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %137, i32 0, i32 3
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @raw_spin_unlock_irqrestore(i32* %138, i64 %139)
  %141 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %142 = call i32 @irq_release_resources(%struct.irq_desc* %141)
  %143 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %144 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %143)
  %145 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %146 = call i32 @irq_remove_timings(%struct.irq_desc* %145)
  br label %147

147:                                              ; preds = %127, %122
  %148 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %149 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %148, i32 0, i32 2
  %150 = call i32 @mutex_unlock(i32* %149)
  %151 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %152 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %151, i32 0, i32 1
  %153 = call i32 @irq_chip_pm_put(%struct.TYPE_5__* %152)
  %154 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %155 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @module_put(i32 %156)
  %158 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  %159 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = call i32 @kfree(%struct.TYPE_4__* %160)
  %162 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  store %struct.irqaction* %162, %struct.irqaction** %3, align 8
  br label %163

163:                                              ; preds = %147, %33
  %164 = load %struct.irqaction*, %struct.irqaction** %3, align 8
  ret %struct.irqaction* %164
}

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @chip_bus_lock(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @chip_bus_sync_unlock(%struct.irq_desc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_pm_remove_action(%struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @irq_settings_clr_disable_unlazy(%struct.irq_desc*) #1

declare dso_local i32 @irq_shutdown(%struct.irq_desc*) #1

declare dso_local i32 @unregister_handler_proc(i32, %struct.irqaction*) #1

declare dso_local i32 @__synchronize_hardirq(%struct.irq_desc*, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @put_task_struct(i64) #1

declare dso_local i32 @irq_domain_deactivate_irq(%struct.TYPE_5__*) #1

declare dso_local i32 @irq_release_resources(%struct.irq_desc*) #1

declare dso_local i32 @irq_remove_timings(%struct.irq_desc*) #1

declare dso_local i32 @irq_chip_pm_put(%struct.TYPE_5__*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
