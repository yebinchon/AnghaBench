; ModuleID = '/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_wait_clear_underrun_bit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/x86/extr_intel_hdmi_audio.c_wait_clear_underrun_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_intelhad = type { i32 }

@AUD_HDMI_STATUS = common dso_local global i32 0, align 4
@AUD_HDMI_STATUS_MASK_UNDERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to clear UNDERRUN bits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_intelhad*)* @wait_clear_underrun_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_clear_underrun_bit(%struct.snd_intelhad* %0) #0 {
  %2 = alloca %struct.snd_intelhad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_intelhad* %0, %struct.snd_intelhad** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 100
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  %9 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %10 = load i32, i32* @AUD_HDMI_STATUS, align 4
  %11 = call i32 @had_read_register(%struct.snd_intelhad* %9, i32 %10, i32* %4)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @AUD_HDMI_STATUS_MASK_UNDERRUN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %32

17:                                               ; preds = %8
  %18 = call i32 @udelay(i32 100)
  %19 = call i32 (...) @cond_resched()
  %20 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %21 = load i32, i32* @AUD_HDMI_STATUS, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @had_write_register(%struct.snd_intelhad* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  %28 = load %struct.snd_intelhad*, %struct.snd_intelhad** %2, align 8
  %29 = getelementptr inbounds %struct.snd_intelhad, %struct.snd_intelhad* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %16
  ret void
}

declare dso_local i32 @had_read_register(%struct.snd_intelhad*, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @had_write_register(%struct.snd_intelhad*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
