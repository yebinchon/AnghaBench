; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_cpu_tdm_slots.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-card.c_axg_card_parse_cpu_tdm_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_card = type { i32 }
%struct.snd_soc_dai_link = type { i64, i64 }
%struct.device_node = type { i32 }
%struct.axg_dai_link_tdm_data = type { i32, i32, i64*, i64* }

@AXG_TDM_NUM_LANES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dai-tdm-slot-tx-mask-%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"dai-tdm-slot-rx-mask-%d\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"tdm link has no cpu slots\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"dai-tdm-slot-num\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"bad slot number\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"dai-tdm-slot-width\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_card*, %struct.snd_soc_dai_link*, %struct.device_node*, %struct.axg_dai_link_tdm_data*)* @axg_card_parse_cpu_tdm_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_card_parse_cpu_tdm_slots(%struct.snd_soc_card* %0, %struct.snd_soc_dai_link* %1, %struct.device_node* %2, %struct.axg_dai_link_tdm_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_card*, align 8
  %7 = alloca %struct.snd_soc_dai_link*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.axg_dai_link_tdm_data*, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.snd_soc_card* %0, %struct.snd_soc_card** %6, align 8
  store %struct.snd_soc_dai_link* %1, %struct.snd_soc_dai_link** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.axg_dai_link_tdm_data* %3, %struct.axg_dai_link_tdm_data** %9, align 8
  %14 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %15 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AXG_TDM_NUM_LANES, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @devm_kcalloc(i32 %16, i32 %17, i32 8, i32 %18)
  %20 = bitcast i8* %19 to i64*
  %21 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %22 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %21, i32 0, i32 3
  store i64* %20, i64** %22, align 8
  %23 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %24 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AXG_TDM_NUM_LANES, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @devm_kcalloc(i32 %25, i32 %26, i32 8, i32 %27)
  %29 = bitcast i8* %28 to i64*
  %30 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %31 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %30, i32 0, i32 2
  store i64* %29, i64** %31, align 8
  %32 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %33 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %38 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %172

44:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  store i64 0, i64* %11, align 8
  br label %45

45:                                               ; preds = %71, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @AXG_TDM_NUM_LANES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @snprintf(i8* %50, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.device_node*, %struct.device_node** %8, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %55 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %56 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %55, i32 0, i32 3
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = call i32 @snd_soc_of_get_slot_mask(%struct.device_node* %53, i8* %54, i64* %60)
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %64 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %63, i32 0, i32 3
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @max(i64 %62, i64 %69)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %49
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %79 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %81

81:                                               ; preds = %107, %80
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @AXG_TDM_NUM_LANES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @snprintf(i8* %86, i32 32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.device_node*, %struct.device_node** %8, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %91 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %92 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %91, i32 0, i32 2
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = call i32 @snd_soc_of_get_slot_mask(%struct.device_node* %89, i8* %90, i64* %96)
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %100 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %99, i32 0, i32 2
  %101 = load i64*, i64** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @max(i64 %98, i64 %105)
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %85
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %81

110:                                              ; preds = %81
  %111 = load i64, i64* %12, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %110
  %114 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %7, align 8
  %115 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %114, i32 0, i32 0
  store i64 0, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i64, i64* %11, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %124 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %172

129:                                              ; preds = %119, %116
  %130 = load %struct.device_node*, %struct.device_node** %8, align 8
  %131 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %132 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %131, i32 0, i32 0
  %133 = call i32 @of_property_read_u32(%struct.device_node* %130, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %132)
  %134 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %135 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %145, label %138

138:                                              ; preds = %129
  %139 = load i64, i64* %11, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i64 @max(i64 %139, i64 %140)
  %142 = call i32 @fls(i64 %141)
  %143 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %144 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  br label %167

145:                                              ; preds = %129
  %146 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %147 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i64, i64* %11, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i64 @max(i64 %149, i64 %150)
  %152 = call i32 @fls(i64 %151)
  %153 = icmp slt i32 %148, %152
  br i1 %153, label %159, label %154

154:                                              ; preds = %145
  %155 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %156 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 32
  br i1 %158, label %159, label %166

159:                                              ; preds = %154, %145
  %160 = load %struct.snd_soc_card*, %struct.snd_soc_card** %6, align 8
  %161 = getelementptr inbounds %struct.snd_soc_card, %struct.snd_soc_card* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @dev_err(i32 %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %172

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %138
  %168 = load %struct.device_node*, %struct.device_node** %8, align 8
  %169 = load %struct.axg_dai_link_tdm_data*, %struct.axg_dai_link_tdm_data** %9, align 8
  %170 = getelementptr inbounds %struct.axg_dai_link_tdm_data, %struct.axg_dai_link_tdm_data* %169, i32 0, i32 1
  %171 = call i32 @of_property_read_u32(%struct.device_node* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %170)
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %167, %159, %122, %41
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @snd_soc_of_get_slot_mask(%struct.device_node*, i8*, i64*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
