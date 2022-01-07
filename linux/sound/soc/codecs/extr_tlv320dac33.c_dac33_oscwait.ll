; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_oscwait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320dac33.c_dac33_oscwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@DAC33_INT_OSC_STATUS = common dso_local global i32 0, align 4
@DAC33_OSCSTATUS_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"internal oscillator calibration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*)* @dac33_oscwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dac33_oscwait(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  store i32 60, i32* %3, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = call i32 @usleep_range(i32 1000, i32 2000)
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = load i32, i32* @DAC33_INT_OSC_STATUS, align 4
  %9 = call i32 @dac33_read(%struct.snd_soc_component* %7, i32 %8, i32* %4)
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 3
  %13 = load i32, i32* @DAC33_OSCSTATUS_NORMAL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = icmp ne i32 %16, 0
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i1 [ false, %10 ], [ %18, %15 ]
  br i1 %20, label %5, label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 3
  %24 = load i32, i32* @DAC33_OSCSTATUS_NORMAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %28 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %21
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dac33_read(%struct.snd_soc_component*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
