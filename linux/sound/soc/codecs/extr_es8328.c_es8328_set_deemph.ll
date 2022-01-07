; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_deemph.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_es8328.c_es8328_set_deemph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.snd_soc_component = type { i32 }
%struct.es8328_priv = type { i64, i64 }

@deemph_settings = common dso_local global %struct.TYPE_3__* null, align 8
@ES8328_DACCONTROL6_DEEMPH_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Set deemphasis %d\0A\00", align 1
@ES8328_DACCONTROL6 = common dso_local global i32 0, align 4
@ES8328_DACCONTROL6_DEEMPH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*)* @es8328_set_deemph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es8328_set_deemph(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.snd_soc_component*, align 8
  %3 = alloca %struct.es8328_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %2, align 8
  %7 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %8 = call %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %7)
  store %struct.es8328_priv* %8, %struct.es8328_priv** %3, align 8
  %9 = load %struct.es8328_priv*, %struct.es8328_priv** %3, align 8
  %10 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %56

13:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @deemph_settings, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %49

19:                                               ; preds = %14
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @deemph_settings, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.es8328_priv*, %struct.es8328_priv** %3, align 8
  %27 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i64 @abs(i64 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @deemph_settings, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.es8328_priv*, %struct.es8328_priv** %3, align 8
  %38 = getelementptr inbounds %struct.es8328_priv, %struct.es8328_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = call i64 @abs(i64 %40)
  %42 = icmp slt i64 %30, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %19
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %19
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @deemph_settings, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %1
  %57 = load i32, i32* @ES8328_DACCONTROL6_DEEMPH_OFF, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %60 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.snd_soc_component*, %struct.snd_soc_component** %2, align 8
  %65 = load i32, i32* @ES8328_DACCONTROL6, align 4
  %66 = load i32, i32* @ES8328_DACCONTROL6_DEEMPH_MASK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %64, i32 %65, i32 %66, i32 %67)
  ret i32 %68
}

declare dso_local %struct.es8328_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
