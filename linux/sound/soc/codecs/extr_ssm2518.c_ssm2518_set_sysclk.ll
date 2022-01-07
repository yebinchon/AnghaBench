; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_ssm2518.c_ssm2518_set_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.ssm2518 = type { i32, i32, i32* }

@SSM2518_SYSCLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SSM2518_POWER1_NO_BCLK = common dso_local global i32 0, align 4
@ssm2518_constraints_2048000 = common dso_local global i32 0, align 4
@ssm2518_constraints_2822000 = common dso_local global i32 0, align 4
@ssm2518_constraints_3072000 = common dso_local global i32 0, align 4
@ssm2518_constraints_12288000 = common dso_local global i32 0, align 4
@SSM2518_REG_POWER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32, i32, i32)* @ssm2518_set_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssm2518_set_sysclk(%struct.snd_soc_component* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ssm2518*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %7, align 8
  %15 = call %struct.ssm2518* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %14)
  store %struct.ssm2518* %15, %struct.ssm2518** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @SSM2518_SYSCLK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %61

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %27 [
    i32 128, label %24
    i32 129, label %25
  ]

24:                                               ; preds = %22
  store i32 0, i32* %13, align 4
  br label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @SSM2518_POWER1_NO_BCLK, align 4
  store i32 %26, i32* %13, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %61

30:                                               ; preds = %25, %24
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %47 [
    i32 0, label %32
    i32 2048000, label %35
    i32 4096000, label %35
    i32 8192000, label %35
    i32 3200000, label %35
    i32 6400000, label %35
    i32 12800000, label %35
    i32 2822000, label %38
    i32 5644800, label %38
    i32 11289600, label %38
    i32 16934400, label %38
    i32 22579200, label %38
    i32 33868800, label %38
    i32 4410000, label %38
    i32 8820000, label %38
    i32 17640000, label %38
    i32 3072000, label %41
    i32 6144000, label %41
    i32 38864000, label %41
    i32 4800000, label %41
    i32 9600000, label %41
    i32 19200000, label %41
    i32 12288000, label %44
    i32 16384000, label %44
    i32 24576000, label %44
  ]

32:                                               ; preds = %30
  %33 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %34 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %50

35:                                               ; preds = %30, %30, %30, %30, %30, %30
  %36 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %37 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %36, i32 0, i32 2
  store i32* @ssm2518_constraints_2048000, i32** %37, align 8
  br label %50

38:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30
  %39 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %40 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %39, i32 0, i32 2
  store i32* @ssm2518_constraints_2822000, i32** %40, align 8
  br label %50

41:                                               ; preds = %30, %30, %30, %30, %30, %30
  %42 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %43 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %42, i32 0, i32 2
  store i32* @ssm2518_constraints_3072000, i32** %43, align 8
  br label %50

44:                                               ; preds = %30, %30, %30
  %45 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %46 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %45, i32 0, i32 2
  store i32* @ssm2518_constraints_12288000, i32** %46, align 8
  br label %50

47:                                               ; preds = %30
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %61

50:                                               ; preds = %44, %41, %38, %35, %32
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %53 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ssm2518*, %struct.ssm2518** %12, align 8
  %55 = getelementptr inbounds %struct.ssm2518, %struct.ssm2518* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SSM2518_REG_POWER1, align 4
  %58 = load i32, i32* @SSM2518_POWER1_NO_BCLK, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @regmap_update_bits(i32 %56, i32 %57, i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %50, %47, %27, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.ssm2518* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
