; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { i64 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_MODIFY_CLOCK = common dso_local global i32 0, align 4
@PCXHR_MODIFY_CLOCK_S_BIT = common dso_local global i32 0, align 4
@PCXHR_IRQ_TIMER_FREQ = common dso_local global i32 0, align 4
@PCXHR_IRQ_TIMER_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_set_clock(%struct.pcxhr_mgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_rmh, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

12:                                               ; preds = %2
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %14 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @hr222_sub_set_clock(%struct.pcxhr_mgr* %18, i32 %19, i32* %8)
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pcxhr_sub_set_clock(%struct.pcxhr_mgr* %22, i32 %23, i32* %8)
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %70

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %30
  %34 = load i32, i32* @CMD_MODIFY_CLOCK, align 4
  %35 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %6, i32 %34)
  %36 = load i32, i32* @PCXHR_MODIFY_CLOCK_S_BIT, align 4
  %37 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @PCXHR_IRQ_TIMER_FREQ, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %33
  %46 = load i32, i32* @PCXHR_IRQ_TIMER_PERIOD, align 4
  %47 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %46, i32* %49, align 4
  br label %56

50:                                               ; preds = %33
  %51 = load i32, i32* @PCXHR_IRQ_TIMER_PERIOD, align 4
  %52 = mul nsw i32 %51, 2
  %53 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %45
  %57 = load i32, i32* %5, align 4
  %58 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %57, i32* %60, align 4
  %61 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %6, i32 0, i32 1
  store i32 3, i32* %61, align 8
  %62 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %63 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %62, %struct.pcxhr_rmh* %6)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %70

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %30
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %28, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @hr222_sub_set_clock(%struct.pcxhr_mgr*, i32, i32*) #1

declare dso_local i32 @pcxhr_sub_set_clock(%struct.pcxhr_mgr*, i32, i32*) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
