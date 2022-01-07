; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs35l33.c_cs35l33_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.cs35l33_private = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS35L33_RX_AUD = common dso_local global i32 0, align 4
@CS35L33_X_LOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Audio starts from slots %d\00", align 1
@CS35L33_TX_VPMON = common dso_local global i32 0, align 4
@CS35L33_X_STATE = common dso_local global i32 0, align 4
@cs35l33_vp_vbst_mon_route = common dso_local global i32* null, align 8
@CS35L33_TX_VMON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"VMON enabled in slots %d-%d\00", align 1
@CS35L33_TX_IMON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"IMON enabled in slots %d-%d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"VPMON enabled in slots %d\00", align 1
@CS35L33_TX_VBSTMON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"VBSTMON enabled in slots %d\00", align 1
@CS35L33_TX_EN4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32, i32)* @cs35l33_set_tdm_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs35l33_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  %13 = alloca %struct.snd_soc_dapm_context*, align 8
  %14 = alloca %struct.cs35l33_private*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %21 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %20, i32 0, i32 0
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %21, align 8
  store %struct.snd_soc_component* %22, %struct.snd_soc_component** %12, align 8
  %23 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %24 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %23)
  store %struct.snd_soc_dapm_context* %24, %struct.snd_soc_dapm_context** %13, align 8
  %25 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %26 = call %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %25)
  store %struct.cs35l33_private* %26, %struct.cs35l33_private** %14, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %198

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @ffs(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %40 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CS35L33_RX_AUD, align 4
  %43 = load i32, i32* @CS35L33_X_LOC, align 4
  %44 = load i32, i32* %18, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %47 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %38, %32
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ffs(i32 %52)
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %17, align 4
  br label %55

55:                                               ; preds = %72, %51
  %56 = load i32, i32* %17, align 4
  %57 = icmp ult i32 %56, 2
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %60 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CS35L33_TX_VPMON, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* @CS35L33_X_STATE, align 4
  %66 = load i32, i32* @CS35L33_X_LOC, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @CS35L33_X_STATE, align 4
  %69 = load i32, i32* @CS35L33_X_LOC, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_update_bits(i32 %61, i32 %64, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %17, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %17, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %77 = load i32*, i32** @cs35l33_vp_vbst_mon_route, align 8
  %78 = load i32*, i32** @cs35l33_vp_vbst_mon_route, align 8
  %79 = call i32 @ARRAY_SIZE(i32* %78)
  %80 = call i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context* %76, i32* %77, i32 %79)
  br label %81

81:                                               ; preds = %168, %75
  %82 = load i32, i32* %18, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %197

84:                                               ; preds = %81
  %85 = load i32, i32* %19, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %89 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @CS35L33_TX_VMON, align 4
  %92 = load i32, i32* @CS35L33_X_STATE, align 4
  %93 = load i32, i32* @CS35L33_X_LOC, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %18, align 4
  %96 = call i32 @regmap_update_bits(i32 %90, i32 %91, i32 %94, i32 %95)
  %97 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %98 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  %103 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %87, %84
  %105 = load i32, i32* %19, align 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %109 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @CS35L33_TX_IMON, align 4
  %112 = load i32, i32* @CS35L33_X_STATE, align 4
  %113 = load i32, i32* @CS35L33_X_LOC, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @regmap_update_bits(i32 %110, i32 %111, i32 %114, i32 %115)
  %117 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %118 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %18, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %107, %104
  %125 = load i32, i32* %19, align 4
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %127, label %146

127:                                              ; preds = %124
  %128 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %129 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @CS35L33_TX_VPMON, align 4
  %132 = load i32, i32* @CS35L33_X_STATE, align 4
  %133 = load i32, i32* @CS35L33_X_LOC, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @regmap_update_bits(i32 %130, i32 %131, i32 %134, i32 %135)
  %137 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %138 = load i32*, i32** @cs35l33_vp_vbst_mon_route, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %137, i32* %139, i32 2)
  %141 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %142 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %127, %124
  %147 = load i32, i32* %19, align 4
  %148 = icmp eq i32 %147, 5
  br i1 %148, label %149, label %168

149:                                              ; preds = %146
  %150 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %151 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @CS35L33_TX_VBSTMON, align 4
  %154 = load i32, i32* @CS35L33_X_STATE, align 4
  %155 = load i32, i32* @CS35L33_X_LOC, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* %18, align 4
  %158 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %156, i32 %157)
  %159 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %13, align 8
  %160 = load i32*, i32** @cs35l33_vp_vbst_mon_route, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = call i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context* %159, i32* %161, i32 2)
  %163 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %164 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %18, align 4
  %167 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %165, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %149, %146
  %169 = load i32, i32* @CS35L33_TX_EN4, align 4
  %170 = load i32, i32* %18, align 4
  %171 = sdiv i32 %170, 8
  %172 = sub nsw i32 %169, %171
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = sdiv i32 %174, 8
  %176 = mul nsw i32 %175, 8
  %177 = sub nsw i32 %173, %176
  store i32 %177, i32* %16, align 4
  %178 = load %struct.cs35l33_private*, %struct.cs35l33_private** %14, align 8
  %179 = getelementptr inbounds %struct.cs35l33_private, %struct.cs35l33_private* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* %16, align 4
  %183 = shl i32 1, %182
  %184 = load i32, i32* %16, align 4
  %185 = shl i32 1, %184
  %186 = call i32 @regmap_update_bits(i32 %180, i32 %181, i32 %183, i32 %185)
  %187 = load i32, i32* %18, align 4
  %188 = shl i32 1, %187
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %8, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @ffs(i32 %192)
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %19, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %81

197:                                              ; preds = %81
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %197, %29
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.cs35l33_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_dapm_del_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_soc_dapm_add_routes(%struct.snd_soc_dapm_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
