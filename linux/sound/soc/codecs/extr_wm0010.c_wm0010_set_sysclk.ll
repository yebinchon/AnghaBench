; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm0010.c_wm0010_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.snd_soc_component = type { i32 }
%struct.wm0010_priv = type { i32, i32, i64 }

@pll_clock_map = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @wm0010_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm0010_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wm0010_priv*, align 8
  %12 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %6, align 8
  %14 = call %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %13)
  store %struct.wm0010_priv* %14, %struct.wm0010_priv** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.wm0010_priv*, %struct.wm0010_priv** %11, align 8
  %17 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %20)
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %18, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.wm0010_priv*, %struct.wm0010_priv** %11, align 8
  %30 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  br label %68

31:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %34)
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %40 = load i32, i32* %12, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp uge i32 %38, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %37
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wm0010_priv*, %struct.wm0010_priv** %11, align 8
  %54 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pll_clock_map, align 8
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.wm0010_priv*, %struct.wm0010_priv** %11, align 8
  %62 = getelementptr inbounds %struct.wm0010_priv, %struct.wm0010_priv* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %67

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %12, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %32

67:                                               ; preds = %46, %32
  br label %68

68:                                               ; preds = %67, %28
  ret i32 0
}

declare dso_local %struct.wm0010_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
