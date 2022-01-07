; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_dai1_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_dai1_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid TDM slot mask (%d)\0A\00", align 1
@FV_TDMSO_2 = common dso_local global i32 0, align 4
@FV_TDMSI_2 = common dso_local global i32 0, align 4
@FV_TDMSO_4 = common dso_local global i32 0, align 4
@FV_TDMSI_4 = common dso_local global i32 0, align 4
@FV_TDMSO_6 = common dso_local global i32 0, align 4
@FV_TDMSI_6 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid number of slots (%d)\0A\00", align 1
@FV_TDMDSS_16 = common dso_local global i32 0, align 4
@FV_TDMDSS_24 = common dso_local global i32 0, align 4
@FV_TDMDSS_32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid TDM slot width (%d)\0A\00", align 1
@R_TDMCTL1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to set slots (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @tscs454_dai1_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_dai1_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %16 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %15, i32 0, i32 0
  %17 = load %struct.snd_soc_component*, %struct.snd_soc_component** %16, align 8
  store %struct.snd_soc_component* %17, %struct.snd_soc_component** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %101

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 1, %23
  %25 = icmp uge i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  %30 = icmp uge i32 %27, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %35 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %6, align 4
  br label %101

40:                                               ; preds = %26
  %41 = load i32, i32* %10, align 4
  switch i32 %41, label %54 [
    i32 2, label %42
    i32 4, label %46
    i32 6, label %50
  ]

42:                                               ; preds = %40
  %43 = load i32, i32* @FV_TDMSO_2, align 4
  %44 = load i32, i32* @FV_TDMSI_2, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %13, align 4
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* @FV_TDMSO_4, align 4
  %48 = load i32, i32* @FV_TDMSI_4, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %13, align 4
  br label %63

50:                                               ; preds = %40
  %51 = load i32, i32* @FV_TDMSO_6, align 4
  %52 = load i32, i32* @FV_TDMSI_6, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %13, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %58 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %6, align 4
  br label %101

63:                                               ; preds = %50, %46, %42
  %64 = load i32, i32* %11, align 4
  switch i32 %64, label %77 [
    i32 16, label %65
    i32 24, label %69
    i32 32, label %73
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @FV_TDMDSS_16, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %13, align 4
  br label %86

69:                                               ; preds = %63
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @FV_TDMDSS_24, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %13, align 4
  br label %86

73:                                               ; preds = %63
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @FV_TDMDSS_32, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %13, align 4
  br label %86

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  %80 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %81 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %101

86:                                               ; preds = %73, %69, %65
  %87 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %88 = load i32, i32* @R_TDMCTL1, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %87, i32 %88, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %95 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %101

100:                                              ; preds = %86
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %93, %77, %54, %31, %20
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
