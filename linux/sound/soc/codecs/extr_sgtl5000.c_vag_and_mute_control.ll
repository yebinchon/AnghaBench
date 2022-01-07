; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_vag_and_mute_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sgtl5000.c_vag_and_mute_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sgtl5000_priv = type { i8** }

@vag_and_mute_control.mute_mask = internal constant [3 x i32] [i32 133, i32 132, i32 132], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @vag_and_mute_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vag_and_mute_control(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sgtl5000_priv*, align 8
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %9 = call %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %8)
  store %struct.sgtl5000_priv* %9, %struct.sgtl5000_priv** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %71 [
    i32 128, label %11
    i32 130, label %24
    i32 129, label %41
    i32 131, label %57
  ]

11:                                               ; preds = %3
  %12 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @vag_and_mute_control.mute_mask, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @mute_output(%struct.snd_soc_component* %12, i32 %16)
  %18 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %19 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  store i8* %17, i8** %23, align 8
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @vag_power_on(%struct.snd_soc_component* %25, i32 %26)
  %28 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* @vag_and_mute_control.mute_mask, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %34 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @restore_output(%struct.snd_soc_component* %28, i32 %32, i8* %39)
  br label %72

41:                                               ; preds = %3
  %42 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* @vag_and_mute_control.mute_mask, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @mute_output(%struct.snd_soc_component* %42, i32 %46)
  %48 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %49 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  store i8* %47, i8** %53, align 8
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @vag_power_off(%struct.snd_soc_component* %54, i32 %55)
  br label %72

57:                                               ; preds = %3
  %58 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* @vag_and_mute_control.mute_mask, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sgtl5000_priv*, %struct.sgtl5000_priv** %7, align 8
  %64 = getelementptr inbounds %struct.sgtl5000_priv, %struct.sgtl5000_priv* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @restore_output(%struct.snd_soc_component* %58, i32 %62, i8* %69)
  br label %72

71:                                               ; preds = %3
  br label %72

72:                                               ; preds = %71, %57, %41, %24, %11
  ret i32 0
}

declare dso_local %struct.sgtl5000_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @mute_output(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @vag_power_on(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @restore_output(%struct.snd_soc_component*, i32, i8*) #1

declare dso_local i32 @vag_power_off(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
