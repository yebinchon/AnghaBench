; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_mc13783.c_mc13783_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@AUDIO_CLK_SEL = common dso_local global i32 0, align 4
@mc13783_sysclk = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@MC13783_CLK_CLIB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @mc13783_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_set_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 0
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = call i32 @AUDIO_CLK(i32 7)
  %20 = load i32, i32* @AUDIO_CLK_SEL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %45, %5
  %23 = load i32, i32* %13, align 4
  %24 = load i32*, i32** @mc13783_sysclk, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i32*, i32** @mc13783_sysclk, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ult i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %45

35:                                               ; preds = %27
  %36 = load i32*, i32** @mc13783_sysclk, align 8
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %22

48:                                               ; preds = %43, %22
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** @mc13783_sysclk, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %74

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MC13783_CLK_CLIB, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @AUDIO_CLK_SEL, align 4
  %62 = load i32, i32* %14, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %14, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @AUDIO_CLK(i32 %65)
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %69, i32 %70, i32 %71, i32 %72)
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %64, %53
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @AUDIO_CLK(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
