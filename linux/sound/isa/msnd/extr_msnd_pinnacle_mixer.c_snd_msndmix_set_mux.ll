; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_set_mux.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/msnd/extr_msnd_pinnacle_mixer.c_snd_msndmix_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_msnd = type { i32 }

@MSND_MASK_IMIX = common dso_local global i32 0, align 4
@HDEXAR_SET_ANA_IN = common dso_local global i8 0, align 1
@MSND_MASK_SYNTH = common dso_local global i32 0, align 4
@HDEXAR_SET_SYNTH_IN = common dso_local global i8 0, align 1
@MSND_MASK_DIGITAL = common dso_local global i32 0, align 4
@HDEXAR_SET_DAT_IN = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@HDEX_AUX_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_msnd*, i32)* @snd_msndmix_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_msndmix_set_mux(%struct.snd_msnd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_msnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.snd_msnd* %0, %struct.snd_msnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %19 [
    i32 0, label %10
    i32 1, label %13
    i32 2, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @MSND_MASK_IMIX, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i8, i8* @HDEXAR_SET_ANA_IN, align 1
  store i8 %12, i8* %8, align 1
  br label %22

13:                                               ; preds = %2
  %14 = load i32, i32* @MSND_MASK_SYNTH, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8, i8* @HDEXAR_SET_SYNTH_IN, align 1
  store i8 %15, i8* %8, align 1
  br label %22

16:                                               ; preds = %2
  %17 = load i32, i32* @MSND_MASK_DIGITAL, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i8, i8* @HDEXAR_SET_DAT_IN, align 1
  store i8 %18, i8* %8, align 1
  br label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %16, %13, %10
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %25 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  %32 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %33 = load i8, i8* %8, align 1
  %34 = call i32 @snd_msnd_send_word(%struct.snd_msnd* %32, i32 0, i32 0, i8 zeroext %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %38 = load i32, i32* @HDEX_AUX_REQ, align 4
  %39 = call i32 @snd_msnd_send_dsp_cmd(%struct.snd_msnd* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.snd_msnd*, %struct.snd_msnd** %4, align 8
  %44 = getelementptr inbounds %struct.snd_msnd, %struct.snd_msnd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  store i32 1, i32* %7, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %31
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @snd_msnd_send_word(%struct.snd_msnd*, i32, i32, i8 zeroext) #1

declare dso_local i32 @snd_msnd_send_dsp_cmd(%struct.snd_msnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
