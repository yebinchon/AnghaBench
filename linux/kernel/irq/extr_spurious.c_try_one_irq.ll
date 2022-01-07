; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_spurious.c_try_one_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_spurious.c_try_one_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.irqaction*, i32 }
%struct.irqaction = type { i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@__IRQF_TIMER = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4
@IRQS_POLL_INPROGRESS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_desc*, i32)* @try_one_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_one_irq(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.irqaction*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @IRQ_NONE, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 1
  %10 = call i32 @raw_spin_lock(i32* %9)
  %11 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %12 = call i64 @irq_settings_is_per_cpu(%struct.irq_desc* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = call i64 @irq_settings_is_nested_thread(%struct.irq_desc* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = call i64 @irq_settings_is_polled(%struct.irq_desc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %2
  br label %100

23:                                               ; preds = %18
  %24 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 3
  %26 = call i64 @irqd_irq_disabled(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %100

32:                                               ; preds = %28, %23
  %33 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %34 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %33, i32 0, i32 2
  %35 = load %struct.irqaction*, %struct.irqaction** %34, align 8
  store %struct.irqaction* %35, %struct.irqaction** %6, align 8
  %36 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %37 = icmp ne %struct.irqaction* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %32
  %39 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %40 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IRQF_SHARED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %47 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @__IRQF_TIMER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %38, %32
  br label %100

53:                                               ; preds = %45
  %54 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %55 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %54, i32 0, i32 3
  %56 = call i64 @irqd_irq_inprogress(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @IRQS_PENDING, align 4
  %60 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %61 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %100

64:                                               ; preds = %53
  %65 = load i32, i32* @IRQS_POLL_INPROGRESS, align 4
  %66 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %67 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %91, %64
  %71 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %72 = call i64 @handle_irq_event(%struct.irq_desc* %71)
  %73 = load i64, i64* @IRQ_HANDLED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %79 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %78, i32 0, i32 2
  %80 = load %struct.irqaction*, %struct.irqaction** %79, align 8
  store %struct.irqaction* %80, %struct.irqaction** %6, align 8
  br label %81

81:                                               ; preds = %77
  %82 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %83 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @IRQS_PENDING, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.irqaction*, %struct.irqaction** %6, align 8
  %90 = icmp ne %struct.irqaction* %89, null
  br label %91

91:                                               ; preds = %88, %81
  %92 = phi i1 [ false, %81 ], [ %90, %88 ]
  br i1 %92, label %70, label %93

93:                                               ; preds = %91
  %94 = load i32, i32* @IRQS_POLL_INPROGRESS, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %97 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %58, %52, %31, %22
  %101 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %102 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %101, i32 0, i32 1
  %103 = call i32 @raw_spin_unlock(i32* %102)
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @IRQ_HANDLED, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  ret i32 %107
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i64 @irq_settings_is_per_cpu(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_is_nested_thread(%struct.irq_desc*) #1

declare dso_local i64 @irq_settings_is_polled(%struct.irq_desc*) #1

declare dso_local i64 @irqd_irq_disabled(i32*) #1

declare dso_local i64 @irqd_irq_inprogress(i32*) #1

declare dso_local i64 @handle_irq_event(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
