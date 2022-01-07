; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l34.c_cs35l34_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.cs35l34_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS35L34_TDM_RX_CTL_1_AUDIN = common dso_local global i32 0, align 4
@CS35L34_X_LOC = common dso_local global i32 0, align 4
@CS35L34_TDM_TX_CTL_3_VPMON = common dso_local global i32 0, align 4
@CS35L34_X_STATE = common dso_local global i32 0, align 4
@CS35L34_TDM_TX_CTL_4_VBSTMON = common dso_local global i32 0, align 4
@CS35L34_TDM_TX_CTL_1_VMON = common dso_local global i32 0, align 4
@CS35L34_TDM_TX_CTL_2_IMON = common dso_local global i32 0, align 4
@CS35L34_TDM_TX_SLOT_EN_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @cs35l34_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l34_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.cs35l34_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %19 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %18, i32 0, i32 0
  %20 = load %struct.snd_soc_component*, %struct.snd_soc_component** %19, align 8
  store %struct.snd_soc_component* %20, %struct.snd_soc_component** %12, align 8
  %21 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %22 = call %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %21)
  store %struct.cs35l34_private* %22, %struct.cs35l34_private** %13, align 8
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %139

28:                                               ; preds = %5
  %29 = load %struct.cs35l34_private*, %struct.cs35l34_private** %13, align 8
  %30 = getelementptr inbounds %struct.cs35l34_private, %struct.cs35l34_private* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @ffs(i32 %31)
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %38 = load i32, i32* @CS35L34_TDM_RX_CTL_1_AUDIN, align 4
  %39 = load i32, i32* @CS35L34_X_LOC, align 4
  %40 = load i32, i32* %16, align 4
  %41 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ffs(i32 %43)
  %45 = sub nsw i32 %44, 1
  store i32 %45, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %47 = load i32, i32* @CS35L34_TDM_TX_CTL_3_VPMON, align 4
  %48 = load i32, i32* @CS35L34_X_STATE, align 4
  %49 = load i32, i32* @CS35L34_X_LOC, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @CS35L34_X_STATE, align 4
  %52 = load i32, i32* @CS35L34_X_LOC, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %46, i32 %47, i32 %50, i32 %53)
  %55 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %56 = load i32, i32* @CS35L34_TDM_TX_CTL_4_VBSTMON, align 4
  %57 = load i32, i32* @CS35L34_X_STATE, align 4
  %58 = load i32, i32* @CS35L34_X_LOC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CS35L34_X_STATE, align 4
  %61 = load i32, i32* @CS35L34_X_LOC, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %55, i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %111, %42
  %65 = load i32, i32* %16, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %138

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %72 = load i32, i32* @CS35L34_TDM_TX_CTL_1_VMON, align 4
  %73 = load i32, i32* @CS35L34_X_STATE, align 4
  %74 = load i32, i32* @CS35L34_X_LOC, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %71, i32 %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %70, %67
  %79 = load i32, i32* %17, align 4
  %80 = icmp eq i32 %79, 4
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %83 = load i32, i32* @CS35L34_TDM_TX_CTL_2_IMON, align 4
  %84 = load i32, i32* @CS35L34_X_STATE, align 4
  %85 = load i32, i32* @CS35L34_X_LOC, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %82, i32 %83, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %78
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %90, 3
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %94 = load i32, i32* @CS35L34_TDM_TX_CTL_3_VPMON, align 4
  %95 = load i32, i32* @CS35L34_X_STATE, align 4
  %96 = load i32, i32* @CS35L34_X_LOC, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %93, i32 %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92, %89
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 7
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %105 = load i32, i32* @CS35L34_TDM_TX_CTL_4_VBSTMON, align 4
  %106 = load i32, i32* @CS35L34_X_STATE, align 4
  %107 = load i32, i32* @CS35L34_X_LOC, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %104, i32 %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i32, i32* @CS35L34_TDM_TX_SLOT_EN_4, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sdiv i32 %113, 8
  %115 = sub nsw i32 %112, %114
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = sdiv i32 %117, 8
  %119 = mul nsw i32 %118, 8
  %120 = sub nsw i32 %116, %119
  store i32 %120, i32* %15, align 4
  %121 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %15, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* %15, align 4
  %126 = shl i32 1, %125
  %127 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %121, i32 %122, i32 %124, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = shl i32 1, %128
  %130 = xor i32 %129, -1
  %131 = load i32, i32* %8, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ffs(i32 %133)
  %135 = sub nsw i32 %134, 1
  store i32 %135, i32* %16, align 4
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %17, align 4
  br label %64

138:                                              ; preds = %64
  store i32 0, i32* %6, align 4
  br label %139

139:                                              ; preds = %138, %25
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local %struct.cs35l34_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
