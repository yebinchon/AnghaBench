; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PCXHR_PLX_IRQCS = common dso_local global i32 0, align 4
@PCXHR_IRQCS_ACTIVE_PCIDB = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PCXHR_PLX_L2PCIDB = common dso_local global i32 0, align 4
@PCXHR_IRQ_TIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ERROR TIMER TOGGLE\0A\00", align 1
@PCXHR_IRQ_MASK = common dso_local global i32 0, align 4
@PCXHR_IRQ_ASYNC = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_INVALID = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PCXHR_FATAL_DSP_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pcxhr_mgr*
  store %struct.pcxhr_mgr* %11, %struct.pcxhr_mgr** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %13 = load i32, i32* @PCXHR_PLX_IRQCS, align 4
  %14 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PCXHR_IRQCS_ACTIVE_PCIDB, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %23 = load i32, i32* @PCXHR_PLX_L2PCIDB, align 4
  %24 = call i32 @PCXHR_INPL(%struct.pcxhr_mgr* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %26 = load i32, i32* @PCXHR_PLX_L2PCIDB, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @PCXHR_OUTPL(%struct.pcxhr_mgr* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @PCXHR_IRQ_TIMER, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %39 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %44 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %49 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %33
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %55 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %58 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  store i32 1, i32* %8, align 4
  br label %59

59:                                               ; preds = %52, %21
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PCXHR_IRQ_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @PCXHR_IRQ_ASYNC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @PCXHR_DSP_TIME_INVALID, align 4
  %71 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %72 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %76 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  store i32 1, i32* %8, align 4
  br label %77

77:                                               ; preds = %73, %59
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  br label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %19
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @PCXHR_INPL(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @PCXHR_OUTPL(%struct.pcxhr_mgr*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
