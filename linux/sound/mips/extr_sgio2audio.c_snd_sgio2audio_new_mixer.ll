; ModuleID = '/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_new_mixer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/mips/extr_sgio2audio.c_snd_sgio2audio_new_mixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sgio2audio = type { i32 }

@sgio2audio_ctrl_pcm0 = common dso_local global i32 0, align 4
@sgio2audio_ctrl_pcm1 = common dso_local global i32 0, align 4
@sgio2audio_ctrl_reclevel = common dso_local global i32 0, align 4
@sgio2audio_ctrl_recsource = common dso_local global i32 0, align 4
@sgio2audio_ctrl_line = common dso_local global i32 0, align 4
@sgio2audio_ctrl_cd = common dso_local global i32 0, align 4
@sgio2audio_ctrl_mic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sgio2audio*)* @snd_sgio2audio_new_mixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_sgio2audio_new_mixer(%struct.snd_sgio2audio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sgio2audio*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_sgio2audio* %0, %struct.snd_sgio2audio** %3, align 8
  %5 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %6 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %9 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_pcm0, %struct.snd_sgio2audio* %8)
  %10 = call i32 @snd_ctl_add(i32 %7, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %17 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %20 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_pcm1, %struct.snd_sgio2audio* %19)
  %21 = call i32 @snd_ctl_add(i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %82

26:                                               ; preds = %15
  %27 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %28 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %31 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_reclevel, %struct.snd_sgio2audio* %30)
  %32 = call i32 @snd_ctl_add(i32 %29, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %82

37:                                               ; preds = %26
  %38 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %39 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %42 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_recsource, %struct.snd_sgio2audio* %41)
  %43 = call i32 @snd_ctl_add(i32 %40, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %82

48:                                               ; preds = %37
  %49 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %50 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %53 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_line, %struct.snd_sgio2audio* %52)
  %54 = call i32 @snd_ctl_add(i32 %51, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %82

59:                                               ; preds = %48
  %60 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %61 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %64 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_cd, %struct.snd_sgio2audio* %63)
  %65 = call i32 @snd_ctl_add(i32 %62, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %82

70:                                               ; preds = %59
  %71 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %72 = getelementptr inbounds %struct.snd_sgio2audio, %struct.snd_sgio2audio* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.snd_sgio2audio*, %struct.snd_sgio2audio** %3, align 8
  %75 = call i32 @snd_ctl_new1(i32* @sgio2audio_ctrl_mic, %struct.snd_sgio2audio* %74)
  %76 = call i32 @snd_ctl_add(i32 %73, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %70
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %79, %68, %57, %46, %35, %24, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(i32*, %struct.snd_sgio2audio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
