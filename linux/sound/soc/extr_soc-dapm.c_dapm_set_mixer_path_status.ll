; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_set_mixer_path_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_dapm_set_mixer_path_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_path = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32 }

@SND_SOC_NOPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_path*, i32, i32)* @dapm_set_mixer_path_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_set_mixer_path_status(%struct.snd_soc_dapm_path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.soc_mixer_control*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_dapm_path* %0, %struct.snd_soc_dapm_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %15 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %24, %struct.soc_mixer_control** %7, align 8
  %25 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %26 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %29 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %32 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @fls(i32 %34)
  %36 = shl i32 1, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %39 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SND_SOC_NOPM, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %3
  %45 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %46 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @soc_dapm_read(i32 %49, i32 %50, i32* %13)
  %52 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %53 = call i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %82

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %61 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %66 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %71 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @soc_dapm_read(i32 %69, i32 %72, i32* %13)
  br label %74

74:                                               ; preds = %64, %58
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %7, align 8
  %77 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = lshr i32 %75, %78
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %13, align 4
  br label %88

82:                                               ; preds = %55, %44
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %9, align 4
  %85 = lshr i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %13, align 4
  %94 = sub i32 %92, %93
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %102 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %106

103:                                              ; preds = %3
  %104 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %4, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %104, i32 0, i32 0
  store i32 0, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %95
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @soc_dapm_read(i32, i32, i32*) #1

declare dso_local i64 @snd_soc_volsw_is_stereo(%struct.soc_mixer_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
