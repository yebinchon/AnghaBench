; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_handle_button_press.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs42l42.c_cs42l42_handle_button_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs42l42_private = type { i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CS42L42_DET_INT2_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_TF_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_FT_MASK = common dso_local global i32 0, align 4
@CS42L42_M_HSBIAS_HIZ_MASK = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_RLS_MASK = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_DET_MASK = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_TF_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_DETECT_FT_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_HSBIAS_HIZ_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_RLS_SHIFT = common dso_local global i32 0, align 4
@CS42L42_M_SHORT_DET_SHIFT = common dso_local global i32 0, align 4
@CS42L42_MIC_DET_CTL1 = common dso_local global i32 0, align 4
@CS42L42_LATCH_TO_VP_MASK = common dso_local global i32 0, align 4
@CS42L42_EVENT_STAT_SEL_MASK = common dso_local global i32 0, align 4
@CS42L42_HS_DET_LEVEL_MASK = common dso_local global i32 0, align 4
@CS42L42_LATCH_TO_VP_SHIFT = common dso_local global i32 0, align 4
@CS42L42_EVENT_STAT_SEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_HS_DET_LEVEL_SHIFT = common dso_local global i32 0, align 4
@CS42L42_DET_STATUS2 = common dso_local global i32 0, align 4
@CS42L42_HS_TRUE_MASK = common dso_local global i32 0, align 4
@CS42L42_NUM_BIASES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Function C button press\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Function B button press\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Function D button press\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Function A button press\0A\00", align 1
@CS42L42_DET_INT_STATUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs42l42_private*)* @cs42l42_handle_button_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs42l42_handle_button_press(%struct.cs42l42_private* %0) #0 {
  %2 = alloca %struct.cs42l42_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cs42l42_private* %0, %struct.cs42l42_private** %2, align 8
  %5 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %6 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CS42L42_DET_INT2_MASK, align 4
  %9 = load i32, i32* @CS42L42_M_DETECT_TF_MASK, align 4
  %10 = load i32, i32* @CS42L42_M_DETECT_FT_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CS42L42_M_SHORT_RLS_MASK, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CS42L42_M_SHORT_DET_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CS42L42_M_DETECT_TF_SHIFT, align 4
  %19 = shl i32 1, %18
  %20 = load i32, i32* @CS42L42_M_DETECT_FT_SHIFT, align 4
  %21 = shl i32 1, %20
  %22 = or i32 %19, %21
  %23 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_SHIFT, align 4
  %24 = shl i32 1, %23
  %25 = or i32 %22, %24
  %26 = load i32, i32* @CS42L42_M_SHORT_RLS_SHIFT, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  %29 = load i32, i32* @CS42L42_M_SHORT_DET_SHIFT, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %17, i32 %31)
  %33 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %34 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 1000
  %37 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %38 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %39, 2000
  %41 = call i32 @usleep_range(i32 %36, i32 %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %83, %1
  %43 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %44 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CS42L42_MIC_DET_CTL1, align 4
  %47 = load i32, i32* @CS42L42_LATCH_TO_VP_MASK, align 4
  %48 = load i32, i32* @CS42L42_EVENT_STAT_SEL_MASK, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CS42L42_HS_DET_LEVEL_MASK, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CS42L42_LATCH_TO_VP_SHIFT, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* @CS42L42_EVENT_STAT_SEL_SHIFT, align 4
  %55 = shl i32 0, %54
  %56 = or i32 %53, %55
  %57 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %58 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CS42L42_HS_DET_LEVEL_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %56, %65
  %67 = call i32 @regmap_update_bits(i32 %45, i32 %46, i32 %51, i32 %66)
  %68 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %69 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CS42L42_DET_STATUS2, align 4
  %72 = call i32 @regmap_read(i32 %70, i32 %71, i32* %4)
  br label %73

73:                                               ; preds = %42
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @CS42L42_HS_TRUE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @CS42L42_NUM_BIASES, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %78, %73
  %84 = phi i1 [ false, %73 ], [ %82, %78 ]
  br i1 %84, label %42, label %85

85:                                               ; preds = %83
  %86 = load i32, i32* %3, align 4
  switch i32 %86, label %115 [
    i32 1, label %87
    i32 2, label %94
    i32 3, label %101
    i32 4, label %108
  ]

87:                                               ; preds = %85
  %88 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %89 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_dbg(i32 %92, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %115

94:                                               ; preds = %85
  %95 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %96 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %95, i32 0, i32 3
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_dbg(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %115

101:                                              ; preds = %85
  %102 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %103 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_dbg(i32 %106, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %115

108:                                              ; preds = %85
  %109 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %110 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dev_dbg(i32 %113, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %85, %108, %101, %94, %87
  %116 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %117 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @CS42L42_MIC_DET_CTL1, align 4
  %120 = load i32, i32* @CS42L42_LATCH_TO_VP_MASK, align 4
  %121 = load i32, i32* @CS42L42_EVENT_STAT_SEL_MASK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @CS42L42_HS_DET_LEVEL_MASK, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @CS42L42_LATCH_TO_VP_SHIFT, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* @CS42L42_EVENT_STAT_SEL_SHIFT, align 4
  %128 = shl i32 0, %127
  %129 = or i32 %126, %128
  %130 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %131 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CS42L42_HS_DET_LEVEL_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %129, %136
  %138 = call i32 @regmap_update_bits(i32 %118, i32 %119, i32 %124, i32 %137)
  %139 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %140 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CS42L42_DET_INT_STATUS2, align 4
  %143 = call i32 @regmap_read(i32 %141, i32 %142, i32* %4)
  %144 = load %struct.cs42l42_private*, %struct.cs42l42_private** %2, align 8
  %145 = getelementptr inbounds %struct.cs42l42_private, %struct.cs42l42_private* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CS42L42_DET_INT2_MASK, align 4
  %148 = load i32, i32* @CS42L42_M_DETECT_TF_MASK, align 4
  %149 = load i32, i32* @CS42L42_M_DETECT_FT_MASK, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_MASK, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @CS42L42_M_SHORT_RLS_MASK, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @CS42L42_M_SHORT_DET_MASK, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @CS42L42_M_DETECT_TF_SHIFT, align 4
  %158 = shl i32 0, %157
  %159 = load i32, i32* @CS42L42_M_DETECT_FT_SHIFT, align 4
  %160 = shl i32 0, %159
  %161 = or i32 %158, %160
  %162 = load i32, i32* @CS42L42_M_HSBIAS_HIZ_SHIFT, align 4
  %163 = shl i32 0, %162
  %164 = or i32 %161, %163
  %165 = load i32, i32* @CS42L42_M_SHORT_RLS_SHIFT, align 4
  %166 = shl i32 1, %165
  %167 = or i32 %164, %166
  %168 = load i32, i32* @CS42L42_M_SHORT_DET_SHIFT, align 4
  %169 = shl i32 1, %168
  %170 = or i32 %167, %169
  %171 = call i32 @regmap_update_bits(i32 %146, i32 %147, i32 %156, i32 %170)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
