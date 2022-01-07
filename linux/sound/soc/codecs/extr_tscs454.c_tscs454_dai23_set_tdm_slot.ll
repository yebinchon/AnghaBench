; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_dai23_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_tscs454_dai23_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Invalid TDM slot mask (%d)\0A\00", align 1
@R_PCMP2CTL1 = common dso_local global i32 0, align 4
@R_PCMP3CTL1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unrecognized interface %d (%d)\0A\00", align 1
@FV_PCMSOP_1 = common dso_local global i32 0, align 4
@FV_PCMSIP_1 = common dso_local global i32 0, align 4
@FV_PCMSOP_2 = common dso_local global i32 0, align 4
@FV_PCMSIP_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid number of slots (%d)\0A\00", align 1
@FV_PCMDSSP_16 = common dso_local global i32 0, align 4
@FV_PCMDSSP_24 = common dso_local global i32 0, align 4
@FV_PCMDSSP_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid TDM slot width (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to set slots (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @tscs454_dai23_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tscs454_dai23_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
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
  %17 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %16, i32 0, i32 1
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %17, align 8
  store %struct.snd_soc_component* %18, %struct.snd_soc_component** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %118

22:                                               ; preds = %5
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 1, %24
  %26 = icmp uge i32 %23, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 1, %29
  %31 = icmp uge i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %27, %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %36 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %15, align 4
  store i32 %40, i32* %6, align 4
  br label %118

41:                                               ; preds = %27
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %43 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %49 [
    i32 129, label %45
    i32 128, label %47
  ]

45:                                               ; preds = %41
  %46 = load i32, i32* @R_PCMP2CTL1, align 4
  store i32 %46, i32* %13, align 4
  br label %61

47:                                               ; preds = %41
  %48 = load i32, i32* @R_PCMP3CTL1, align 4
  store i32 %48, i32* %13, align 4
  br label %61

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %15, align 4
  %52 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %53 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %56 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %118

61:                                               ; preds = %47, %45
  %62 = load i32, i32* %10, align 4
  switch i32 %62, label %71 [
    i32 1, label %63
    i32 2, label %67
  ]

63:                                               ; preds = %61
  %64 = load i32, i32* @FV_PCMSOP_1, align 4
  %65 = load i32, i32* @FV_PCMSIP_1, align 4
  %66 = or i32 %64, %65
  store i32 %66, i32* %14, align 4
  br label %80

67:                                               ; preds = %61
  %68 = load i32, i32* @FV_PCMSOP_2, align 4
  %69 = load i32, i32* @FV_PCMSIP_2, align 4
  %70 = or i32 %68, %69
  store i32 %70, i32* %14, align 4
  br label %80

71:                                               ; preds = %61
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %15, align 4
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %75 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %6, align 4
  br label %118

80:                                               ; preds = %67, %63
  %81 = load i32, i32* %11, align 4
  switch i32 %81, label %94 [
    i32 16, label %82
    i32 24, label %86
    i32 32, label %90
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* @FV_PCMDSSP_16, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %14, align 4
  br label %103

86:                                               ; preds = %80
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @FV_PCMDSSP_24, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %14, align 4
  br label %103

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @FV_PCMDSSP_32, align 4
  %93 = or i32 %91, %92
  store i32 %93, i32* %14, align 4
  br label %103

94:                                               ; preds = %80
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %99, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %118

103:                                              ; preds = %90, %86, %82
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %104, i32 %105, i32 %106)
  store i32 %107, i32* %15, align 4
  %108 = load i32, i32* %15, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %112 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %6, align 4
  br label %118

117:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %110, %94, %71, %49, %32, %21
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
