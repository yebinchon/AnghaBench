; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_modify_status.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_irq_modify_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32 }

@_IRQ_NOAUTOEN = common dso_local global i64 0, align 8
@IRQD_NO_BALANCING = common dso_local global i64 0, align 8
@IRQD_PER_CPU = common dso_local global i64 0, align 8
@IRQD_TRIGGER_MASK = common dso_local global i64 0, align 8
@IRQD_LEVEL = common dso_local global i64 0, align 8
@IRQD_MOVE_PCNTXT = common dso_local global i64 0, align 8
@IRQ_TYPE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irq_modify_status(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.irq_desc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.irq_desc* @irq_get_desc_lock(i32 %11, i64* %7, i32 0)
  store %struct.irq_desc* %12, %struct.irq_desc** %10, align 8
  %13 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %14 = icmp ne %struct.irq_desc* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %100

16:                                               ; preds = %3
  %17 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @_IRQ_NOAUTOEN, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ false, %16 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON_ONCE(i32 %28)
  %30 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @irq_settings_clr_and_set(%struct.irq_desc* %30, i64 %31, i64 %32)
  %34 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %35 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %34, i32 0, i32 0
  %36 = call i64 @irqd_get_trigger_type(i32* %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 0
  %39 = load i64, i64* @IRQD_NO_BALANCING, align 8
  %40 = load i64, i64* @IRQD_PER_CPU, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @IRQD_TRIGGER_MASK, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* @IRQD_LEVEL, align 8
  %45 = or i64 %43, %44
  %46 = load i64, i64* @IRQD_MOVE_PCNTXT, align 8
  %47 = or i64 %45, %46
  %48 = call i32 @irqd_clear(i32* %38, i64 %47)
  %49 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %50 = call i64 @irq_settings_has_no_balance_set(%struct.irq_desc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %26
  %53 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %54 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %53, i32 0, i32 0
  %55 = load i64, i64* @IRQD_NO_BALANCING, align 8
  %56 = call i32 @irqd_set(i32* %54, i64 %55)
  br label %57

57:                                               ; preds = %52, %26
  %58 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %59 = call i64 @irq_settings_is_per_cpu(%struct.irq_desc* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %63 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %62, i32 0, i32 0
  %64 = load i64, i64* @IRQD_PER_CPU, align 8
  %65 = call i32 @irqd_set(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %68 = call i64 @irq_settings_can_move_pcntxt(%struct.irq_desc* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %72 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %71, i32 0, i32 0
  %73 = load i64, i64* @IRQD_MOVE_PCNTXT, align 8
  %74 = call i32 @irqd_set(i32* %72, i64 %73)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %77 = call i64 @irq_settings_is_level(%struct.irq_desc* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %81 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %80, i32 0, i32 0
  %82 = load i64, i64* @IRQD_LEVEL, align 8
  %83 = call i32 @irqd_set(i32* %81, i64 %82)
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %86 = call i64 @irq_settings_get_trigger_mask(%struct.irq_desc* %85)
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* @IRQ_TYPE_NONE, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i64, i64* %9, align 8
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %90, %84
  %93 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 0
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @irqd_set(i32* %94, i64 %95)
  %97 = load %struct.irq_desc*, %struct.irq_desc** %10, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @irq_put_desc_unlock(%struct.irq_desc* %97, i64 %98)
  br label %100

100:                                              ; preds = %92, %15
  ret void
}

declare dso_local %struct.irq_desc* @irq_get_desc_lock(i32, i64*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irq_settings_clr_and_set(%struct.irq_desc*, i64, i64) #1

declare dso_local i64 @irqd_get_trigger_type(i32*) #1

declare dso_local i32 @irqd_clear(i32*, i64) #1

declare dso_local i64 @irq_settings_has_no_balance_set(%struct.irq_desc*) #1

declare dso_local i32 @irqd_set(i32*, i64) #1

declare dso_local i64 @irq_settings_is_per_cpu(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_can_move_pcntxt(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_is_level(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_get_trigger_mask(%struct.irq_desc*) #1

declare dso_local i32 @irq_put_desc_unlock(%struct.irq_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
