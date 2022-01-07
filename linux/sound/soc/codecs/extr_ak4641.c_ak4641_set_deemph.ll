; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4641.c_ak4641_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ak4641_priv = type { i64, i64 }

@deemph_settings = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"Set deemphasis %d\0A\00", align 1
@AK4641_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @ak4641_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4641_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.ak4641_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %6 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %7 = call %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %6)
  store %struct.ak4641_priv* %7, %struct.ak4641_priv** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i64*, i64** @deemph_settings, align 8
  %11 = call i32 @ARRAY_SIZE(i64* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %8
  %14 = load %struct.ak4641_priv*, %struct.ak4641_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load i64*, i64** @deemph_settings, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %18
  %26 = load i64*, i64** @deemph_settings, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ak4641_priv*, %struct.ak4641_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = call i64 @abs(i64 %34)
  %36 = load i64*, i64** @deemph_settings, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ak4641_priv*, %struct.ak4641_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = call i64 @abs(i64 %44)
  %46 = icmp slt i64 %35, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %25, %18, %13
  %50 = load %struct.ak4641_priv*, %struct.ak4641_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ak4641_priv, %struct.ak4641_priv* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i64*, i64** @deemph_settings, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %54, %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %8

67:                                               ; preds = %8
  %68 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %69 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %74 = load i32, i32* @AK4641_DAC, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %73, i32 %74, i32 3, i32 %75)
  ret i32 %76
}

declare dso_local %struct.ak4641_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
