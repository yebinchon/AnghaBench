; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_edge_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_edge_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@IRQS_REPLAY = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_edge_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 1
  %5 = call i32 @raw_spin_lock(i32* %4)
  %6 = load i32, i32* @IRQS_REPLAY, align 4
  %7 = load i32, i32* @IRQS_WAITING, align 4
  %8 = or i32 %6, %7
  %9 = xor i32 %8, -1
  %10 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %11 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %15 = call i32 @irq_may_run(%struct.irq_desc* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IRQS_PENDING, align 4
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %24 = call i32 @mask_ack_irq(%struct.irq_desc* %23)
  br label %108

25:                                               ; preds = %1
  %26 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 2
  %28 = call i64 @irqd_irq_disabled(%struct.TYPE_6__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %32 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @IRQS_PENDING, align 4
  %37 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %42 = call i32 @mask_ack_irq(%struct.irq_desc* %41)
  br label %108

43:                                               ; preds = %30
  %44 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %45 = call i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc* %44)
  %46 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %47 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %50, align 8
  %52 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %53 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %52, i32 0, i32 2
  %54 = call i32 %51(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %105, %43
  %56 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %66 = call i32 @mask_irq(%struct.irq_desc* %65)
  br label %108

67:                                               ; preds = %55
  %68 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %69 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IRQS_PENDING, align 4
  %72 = and i32 %70, %71
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %77 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %76, i32 0, i32 2
  %78 = call i64 @irqd_irq_disabled(%struct.TYPE_6__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %82 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %81, i32 0, i32 2
  %83 = call i64 @irqd_irq_masked(%struct.TYPE_6__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %87 = call i32 @unmask_irq(%struct.irq_desc* %86)
  br label %88

88:                                               ; preds = %85, %80, %75
  br label %89

89:                                               ; preds = %88, %67
  %90 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %91 = call i32 @handle_irq_event(%struct.irq_desc* %90)
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IRQS_PENDING, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %101 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %100, i32 0, i32 2
  %102 = call i64 @irqd_irq_disabled(%struct.TYPE_6__* %101)
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %99, %92
  %106 = phi i1 [ false, %92 ], [ %104, %99 ]
  br i1 %106, label %55, label %107

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %64, %35, %17
  %109 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %110 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %109, i32 0, i32 1
  %111 = call i32 @raw_spin_unlock(i32* %110)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @irq_may_run(%struct.irq_desc*) #1

declare dso_local i32 @mask_ack_irq(%struct.irq_desc*) #1

declare dso_local i64 @irqd_irq_disabled(%struct.TYPE_6__*) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mask_irq(%struct.irq_desc*) #1

declare dso_local i64 @irqd_irq_masked(%struct.TYPE_6__*) #1

declare dso_local i32 @unmask_irq(%struct.irq_desc*) #1

declare dso_local i32 @handle_irq_event(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
