; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/uniphier/extr_aio-cpu.c_uniphier_aio_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.uniphier_aio = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@AUD_PLL_A1 = common dso_local global i32 0, align 4
@AUD_PLL_F1 = common dso_local global i32 0, align 4
@AUD_PLL_A2 = common dso_local global i32 0, align 4
@AUD_PLL_F2 = common dso_local global i32 0, align 4
@AUD_PLL_APLL = common dso_local global i32 0, align 4
@AUD_PLL_RX0 = common dso_local global i32 0, align 4
@AUD_PLL_USB0 = common dso_local global i32 0, align 4
@AUD_PLL_HSC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Sysclk(%d) is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Sysclk frequency is not supported(%d)\0A\00", align 1
@SND_SOC_CLOCK_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @uniphier_aio_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_aio_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uniphier_aio*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %16 = call %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai* %15)
  store %struct.uniphier_aio* %16, %struct.uniphier_aio** %10, align 8
  %17 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %18 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %47 [
    i32 130, label %24
    i32 137, label %27
    i32 133, label %29
    i32 136, label %31
    i32 132, label %33
    i32 138, label %35
    i32 134, label %37
    i32 135, label %39
    i32 129, label %41
    i32 128, label %43
    i32 131, label %45
  ]

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %108

27:                                               ; preds = %4
  %28 = load i32, i32* @AUD_PLL_A1, align 4
  store i32 %28, i32* %13, align 4
  br label %53

29:                                               ; preds = %4
  %30 = load i32, i32* @AUD_PLL_F1, align 4
  store i32 %30, i32* %13, align 4
  br label %53

31:                                               ; preds = %4
  %32 = load i32, i32* @AUD_PLL_A2, align 4
  store i32 %32, i32* %13, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load i32, i32* @AUD_PLL_F2, align 4
  store i32 %34, i32* %13, align 4
  br label %53

35:                                               ; preds = %4
  %36 = load i32, i32* @AUD_PLL_A1, align 4
  store i32 %36, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %53

37:                                               ; preds = %4
  %38 = load i32, i32* @AUD_PLL_F1, align 4
  store i32 %38, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %53

39:                                               ; preds = %4
  %40 = load i32, i32* @AUD_PLL_APLL, align 4
  store i32 %40, i32* %13, align 4
  br label %53

41:                                               ; preds = %4
  %42 = load i32, i32* @AUD_PLL_RX0, align 4
  store i32 %42, i32* %13, align 4
  br label %53

43:                                               ; preds = %4
  %44 = load i32, i32* @AUD_PLL_USB0, align 4
  store i32 %44, i32* %13, align 4
  br label %53

45:                                               ; preds = %4
  %46 = load i32, i32* @AUD_PLL_HSC0, align 4
  store i32 %46, i32* %13, align 4
  br label %53

47:                                               ; preds = %4
  %48 = load %struct.device*, %struct.device** %11, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %108

53:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %95

56:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %77, %56
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %60 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %59, i32 0, i32 3
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @find_divider(%struct.uniphier_aio* %66, i32 %67, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* %14, align 4
  %74 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %75 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %80

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %57

80:                                               ; preds = %72, %57
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %83 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %81, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %80
  %89 = load %struct.device*, %struct.device** %11, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %108

94:                                               ; preds = %80
  br label %95

95:                                               ; preds = %94, %53
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SND_SOC_CLOCK_OUT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %102 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.uniphier_aio*, %struct.uniphier_aio** %10, align 8
  %106 = getelementptr inbounds %struct.uniphier_aio, %struct.uniphier_aio* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %99
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %88, %47, %24
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local %struct.uniphier_aio* @uniphier_priv(%struct.snd_soc_dai*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @find_divider(%struct.uniphier_aio*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
