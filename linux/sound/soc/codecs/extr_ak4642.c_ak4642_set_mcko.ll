; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_set_mcko.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ak4642.c_ak4642_set_mcko.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@ak4642_set_mcko.fs_list = internal constant [16 x i32] [i32 8000, i32 12000, i32 16000, i32 24000, i32 7350, i32 11025, i32 14700, i32 22050, i32 0, i32 0, i32 32000, i32 48000, i32 0, i32 0, i32 29400, i32 44100], align 16
@ak4642_set_mcko.ps_list = internal constant [4 x i32] [i32 256, i32 128, i32 64, i32 32], align 16
@MD_CTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32)* @ak4642_set_mcko to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak4642_set_mcko(%struct.snd_soc_component* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %43, %2
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ak4642_set_mcko.ps_list, i64 0, i64 0))
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([16 x i32], [16 x i32]* @ak4642_set_mcko.fs_list, i64 0, i64 0))
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* @ak4642_set_mcko.ps_list, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* @ak4642_set_mcko.fs_list, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %22, %26
  %28 = icmp eq i32 %18, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %17
  %30 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %31 = load i32, i32* @MD_CTL2, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @PSs(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @FSs(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %30, i32 %31, i32 %36)
  store i32 0, i32* %3, align 4
  br label %47

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %8

46:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

declare dso_local i32 @PSs(i32) #1

declare dso_local i32 @FSs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
