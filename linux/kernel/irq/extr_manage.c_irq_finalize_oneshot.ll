; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_finalize_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_finalize_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }
%struct.irqaction = type { i64, i32, i32 }

@IRQS_ONESHOT = common dso_local global i32 0, align 4
@irq_forced_secondary_handler = common dso_local global i64 0, align 8
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, %struct.irqaction*)* @irq_finalize_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_finalize_oneshot(%struct.irq_desc* %0, %struct.irqaction* %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irqaction*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %5 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %6 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IRQS_ONESHOT, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %13 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @irq_forced_secondary_handler, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %2
  br label %77

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %30, %18
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = call i32 @chip_bus_lock(%struct.irq_desc* %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 1
  %24 = call i32 @raw_spin_lock_irq(i32* %23)
  %25 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 2
  %27 = call i32 @irqd_irq_inprogress(i32* %26)
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 1
  %33 = call i32 @raw_spin_unlock_irq(i32* %32)
  %34 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %35 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %34)
  %36 = call i32 (...) @cpu_relax()
  br label %19

37:                                               ; preds = %19
  %38 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %39 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %40 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %39, i32 0, i32 2
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %71

44:                                               ; preds = %37
  %45 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %46 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = xor i32 %47, -1
  %49 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %44
  %58 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %59 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %58, i32 0, i32 2
  %60 = call i32 @irqd_irq_disabled(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %64 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %63, i32 0, i32 2
  %65 = call i64 @irqd_irq_masked(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %69 = call i32 @unmask_threaded_irq(%struct.irq_desc* %68)
  br label %70

70:                                               ; preds = %67, %62, %57, %44
  br label %71

71:                                               ; preds = %70, %43
  %72 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %73 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %72, i32 0, i32 1
  %74 = call i32 @raw_spin_unlock_irq(i32* %73)
  %75 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %76 = call i32 @chip_bus_sync_unlock(%struct.irq_desc* %75)
  br label %77

77:                                               ; preds = %71, %17
  ret void
}

declare dso_local i32 @chip_bus_lock(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irqd_irq_inprogress(i32*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

declare dso_local i32 @chip_bus_sync_unlock(%struct.irq_desc*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @irqd_irq_disabled(i32*) #1

declare dso_local i64 @irqd_irq_masked(i32*) #1

declare dso_local i32 @unmask_threaded_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
