; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_madera.c_madera_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@madera_mixer_texts = common dso_local global i32* null, align 8
@MADERA_NUM_MIXER_INPUTS = common dso_local global i32 0, align 4
@madera_mixer_values = common dso_local global i32* null, align 8
@MADERA_MAX_HP_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @madera_core_init(%struct.madera_priv* %0) #0 {
  %2 = alloca %struct.madera_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.madera_priv* %0, %struct.madera_priv** %2, align 8
  %4 = load i32*, i32** @madera_mixer_texts, align 8
  %5 = load i32, i32* @MADERA_NUM_MIXER_INPUTS, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load i32*, i32** @madera_mixer_values, align 8
  %15 = load i32, i32* @MADERA_NUM_MIXER_INPUTS, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %25 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_get_platdata(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %33 = call i32 @madera_prop_get_pdata(%struct.madera_priv* %32)
  br label %34

34:                                               ; preds = %31, %1
  %35 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %36 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %35, i32 0, i32 1
  %37 = call i32 @mutex_init(i32* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %51, %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MADERA_MAX_HP_OUTPUT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %38
  %43 = load %struct.madera_priv*, %struct.madera_priv** %2, align 8
  %44 = getelementptr inbounds %struct.madera_priv, %struct.madera_priv* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %38

54:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dev_get_platdata(i32) #1

declare dso_local i32 @madera_prop_get_pdata(%struct.madera_priv*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
