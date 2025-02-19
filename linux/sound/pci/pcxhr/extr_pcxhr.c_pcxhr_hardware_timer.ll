; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_hardware_timer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr.c_pcxhr_hardware_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32* }

@CMD_SET_TIMER_INTERRUPT = common dso_local global i32 0, align 4
@PCXHR_DSP_TIME_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"error pcxhr_hardware_timer err(%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32)* @pcxhr_hardware_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_hardware_timer(%struct.pcxhr_mgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pcxhr_mgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_rmh, align 8
  %6 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @CMD_SET_TIMER_INTERRUPT, align 4
  %8 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %5, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load i32, i32* @PCXHR_DSP_TIME_INVALID, align 4
  %13 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %14 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %16 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %5, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %17
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %11, %2
  %24 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %25 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %24, %struct.pcxhr_rmh* %5)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %3, align 8
  %30 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
