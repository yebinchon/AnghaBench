; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_of_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_da7218.c_da7218_of_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da7218_pdata = type { i32, %struct.da7218_hpldet_pdata*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.da7218_hpldet_pdata = type { i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.da7218_priv = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dlg,micbias1-lvl-millivolt\00", align 1
@DA7218_MICBIAS_1_6V = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"dlg,micbias2-lvl-millivolt\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"dlg,mic1-amp-in-sel\00", align 1
@DA7218_MIC_AMP_IN_SEL_DIFF = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"dlg,mic2-amp-in-sel\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"dlg,dmic1-data-sel\00", align 1
@DA7218_DMIC_DATA_LRISE_RFALL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"dlg,dmic1-samplephase\00", align 1
@DA7218_DMIC_SAMPLE_ON_CLKEDGE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"dlg,dmic1-clkrate-hz\00", align 1
@DA7218_DMIC_CLK_3_0MHZ = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"dlg,dmic2-data-sel\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"dlg,dmic2-samplephase\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dlg,dmic2-clkrate-hz\00", align 1
@DA7217_DEV_ID = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"dlg,hp-diff-single-supply\00", align 1
@DA7218_DEV_ID = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"da7218_hpldet\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"dlg,jack-rate-us\00", align 1
@DA7218_HPLDET_JACK_RATE_40US = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"dlg,jack-debounce\00", align 1
@DA7218_HPLDET_JACK_DEBOUNCE_2 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"dlg,jack-threshold-pct\00", align 1
@DA7218_HPLDET_JACK_THR_84PCT = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"dlg,comp-inv\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"dlg,hyst\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"dlg,discharge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.da7218_pdata* (%struct.snd_soc_component*)* @da7218_of_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.da7218_pdata* @da7218_of_to_pdata(%struct.snd_soc_component* %0) #0 {
  %2 = alloca %struct.da7218_pdata*, align 8
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.da7218_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.da7218_pdata*, align 8
  %8 = alloca %struct.da7218_hpldet_pdata*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %12 = call %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.da7218_priv* %12, %struct.da7218_priv** %4, align 8
  %13 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %14 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %19 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.TYPE_2__* %20, i32 96, i32 %21)
  %23 = bitcast i8* %22 to %struct.da7218_pdata*
  store %struct.da7218_pdata* %23, %struct.da7218_pdata** %7, align 8
  %24 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %25 = icmp ne %struct.da7218_pdata* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store %struct.da7218_pdata* null, %struct.da7218_pdata** %2, align 8
  br label %278

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i64 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %10)
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i8* @da7218_of_micbias_lvl(%struct.snd_soc_component* %32, i32 %33)
  %35 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %36 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %35, i32 0, i32 11
  store i8* %34, i8** %36, align 8
  br label %41

37:                                               ; preds = %27
  %38 = load i8*, i8** @DA7218_MICBIAS_1_6V, align 8
  %39 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %40 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i64 @of_property_read_u32(%struct.device_node* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %44 = icmp sge i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i8* @da7218_of_micbias_lvl(%struct.snd_soc_component* %46, i32 %47)
  %49 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %50 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %49, i32 0, i32 10
  store i8* %48, i8** %50, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load i8*, i8** @DA7218_MICBIAS_1_6V, align 8
  %53 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %54 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %53, i32 0, i32 10
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load %struct.device_node*, %struct.device_node** %5, align 8
  %57 = call i32 @of_property_read_string(%struct.device_node* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %9)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = call i8* @da7218_of_mic_amp_in_sel(%struct.snd_soc_component* %60, i8* %61)
  %63 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %64 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  br label %69

65:                                               ; preds = %55
  %66 = load i8*, i8** @DA7218_MIC_AMP_IN_SEL_DIFF, align 8
  %67 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %68 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %67, i32 0, i32 9
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32 @of_property_read_string(%struct.device_node* %70, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %9)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i8* @da7218_of_mic_amp_in_sel(%struct.snd_soc_component* %74, i8* %75)
  %77 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %78 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  br label %83

79:                                               ; preds = %69
  %80 = load i8*, i8** @DA7218_MIC_AMP_IN_SEL_DIFF, align 8
  %81 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %82 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.device_node*, %struct.device_node** %5, align 8
  %85 = call i32 @of_property_read_string(%struct.device_node* %84, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %9)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = call i8* @da7218_of_dmic_data_sel(%struct.snd_soc_component* %88, i8* %89)
  %91 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %92 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  br label %97

93:                                               ; preds = %83
  %94 = load i8*, i8** @DA7218_DMIC_DATA_LRISE_RFALL, align 8
  %95 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %96 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.device_node*, %struct.device_node** %5, align 8
  %99 = call i32 @of_property_read_string(%struct.device_node* %98, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8** %9)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = call i8* @da7218_of_dmic_samplephase(%struct.snd_soc_component* %102, i8* %103)
  %105 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %106 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  br label %111

107:                                              ; preds = %97
  %108 = load i8*, i8** @DA7218_DMIC_SAMPLE_ON_CLKEDGE, align 8
  %109 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %110 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  %112 = load %struct.device_node*, %struct.device_node** %5, align 8
  %113 = call i64 @of_property_read_u32(%struct.device_node* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i8* @da7218_of_dmic_clkrate(%struct.snd_soc_component* %116, i32 %117)
  %119 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %120 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %119, i32 0, i32 5
  store i8* %118, i8** %120, align 8
  br label %125

121:                                              ; preds = %111
  %122 = load i8*, i8** @DA7218_DMIC_CLK_3_0MHZ, align 8
  %123 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %124 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.device_node*, %struct.device_node** %5, align 8
  %127 = call i32 @of_property_read_string(%struct.device_node* %126, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8** %9)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %125
  %130 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = call i8* @da7218_of_dmic_data_sel(%struct.snd_soc_component* %130, i8* %131)
  %133 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %134 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %133, i32 0, i32 4
  store i8* %132, i8** %134, align 8
  br label %139

135:                                              ; preds = %125
  %136 = load i8*, i8** @DA7218_DMIC_DATA_LRISE_RFALL, align 8
  %137 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %138 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.device_node*, %struct.device_node** %5, align 8
  %141 = call i32 @of_property_read_string(%struct.device_node* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8** %9)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = call i8* @da7218_of_dmic_samplephase(%struct.snd_soc_component* %144, i8* %145)
  %147 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %148 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %153

149:                                              ; preds = %139
  %150 = load i8*, i8** @DA7218_DMIC_SAMPLE_ON_CLKEDGE, align 8
  %151 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %152 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.device_node*, %struct.device_node** %5, align 8
  %155 = call i64 @of_property_read_u32(%struct.device_node* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %10)
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i8* @da7218_of_dmic_clkrate(%struct.snd_soc_component* %158, i32 %159)
  %161 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %162 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  br label %167

163:                                              ; preds = %153
  %164 = load i8*, i8** @DA7218_DMIC_CLK_3_0MHZ, align 8
  %165 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %166 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  br label %167

167:                                              ; preds = %163, %157
  %168 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %169 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DA7217_DEV_ID, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load %struct.device_node*, %struct.device_node** %5, align 8
  %175 = call i64 @of_property_read_bool(%struct.device_node* %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %179 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %178, i32 0, i32 0
  store i32 1, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %173
  br label %181

181:                                              ; preds = %180, %167
  %182 = load %struct.da7218_priv*, %struct.da7218_priv** %4, align 8
  %183 = getelementptr inbounds %struct.da7218_priv, %struct.da7218_priv* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @DA7218_DEV_ID, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %276

187:                                              ; preds = %181
  %188 = load %struct.device_node*, %struct.device_node** %5, align 8
  %189 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %188, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  store %struct.device_node* %189, %struct.device_node** %6, align 8
  %190 = load %struct.device_node*, %struct.device_node** %6, align 8
  %191 = icmp ne %struct.device_node* %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  store %struct.da7218_pdata* %193, %struct.da7218_pdata** %2, align 8
  br label %278

194:                                              ; preds = %187
  %195 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %196 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %195, i32 0, i32 0
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = load i32, i32* @GFP_KERNEL, align 4
  %199 = call i8* @devm_kzalloc(%struct.TYPE_2__* %197, i32 24, i32 %198)
  %200 = bitcast i8* %199 to %struct.da7218_hpldet_pdata*
  store %struct.da7218_hpldet_pdata* %200, %struct.da7218_hpldet_pdata** %8, align 8
  %201 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %202 = icmp ne %struct.da7218_hpldet_pdata* %201, null
  br i1 %202, label %207, label %203

203:                                              ; preds = %194
  %204 = load %struct.device_node*, %struct.device_node** %6, align 8
  %205 = call i32 @of_node_put(%struct.device_node* %204)
  %206 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  store %struct.da7218_pdata* %206, %struct.da7218_pdata** %2, align 8
  br label %278

207:                                              ; preds = %194
  %208 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %209 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  %210 = getelementptr inbounds %struct.da7218_pdata, %struct.da7218_pdata* %209, i32 0, i32 1
  store %struct.da7218_hpldet_pdata* %208, %struct.da7218_hpldet_pdata** %210, align 8
  %211 = load %struct.device_node*, %struct.device_node** %6, align 8
  %212 = call i64 @of_property_read_u32(%struct.device_node* %211, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32* %10)
  %213 = icmp sge i64 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @da7218_of_jack_rate(%struct.snd_soc_component* %215, i32 %216)
  %218 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %219 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 4
  br label %224

220:                                              ; preds = %207
  %221 = load i32, i32* @DA7218_HPLDET_JACK_RATE_40US, align 4
  %222 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %223 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  br label %224

224:                                              ; preds = %220, %214
  %225 = load %struct.device_node*, %struct.device_node** %6, align 8
  %226 = call i64 @of_property_read_u32(%struct.device_node* %225, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32* %10)
  %227 = icmp sge i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @da7218_of_jack_debounce(%struct.snd_soc_component* %229, i32 %230)
  %232 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %233 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  br label %238

234:                                              ; preds = %224
  %235 = load i32, i32* @DA7218_HPLDET_JACK_DEBOUNCE_2, align 4
  %236 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %237 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %234, %228
  %239 = load %struct.device_node*, %struct.device_node** %6, align 8
  %240 = call i64 @of_property_read_u32(%struct.device_node* %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32* %10)
  %241 = icmp sge i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %238
  %243 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @da7218_of_jack_thr(%struct.snd_soc_component* %243, i32 %244)
  %246 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %247 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 4
  br label %252

248:                                              ; preds = %238
  %249 = load i32, i32* @DA7218_HPLDET_JACK_THR_84PCT, align 4
  %250 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %251 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %250, i32 0, i32 3
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %248, %242
  %253 = load %struct.device_node*, %struct.device_node** %6, align 8
  %254 = call i64 @of_property_read_bool(%struct.device_node* %253, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %258 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %257, i32 0, i32 0
  store i32 1, i32* %258, align 4
  br label %259

259:                                              ; preds = %256, %252
  %260 = load %struct.device_node*, %struct.device_node** %6, align 8
  %261 = call i64 @of_property_read_bool(%struct.device_node* %260, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %259
  %264 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %265 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  br label %266

266:                                              ; preds = %263, %259
  %267 = load %struct.device_node*, %struct.device_node** %6, align 8
  %268 = call i64 @of_property_read_bool(%struct.device_node* %267, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load %struct.da7218_hpldet_pdata*, %struct.da7218_hpldet_pdata** %8, align 8
  %272 = getelementptr inbounds %struct.da7218_hpldet_pdata, %struct.da7218_hpldet_pdata* %271, i32 0, i32 2
  store i32 1, i32* %272, align 4
  br label %273

273:                                              ; preds = %270, %266
  %274 = load %struct.device_node*, %struct.device_node** %6, align 8
  %275 = call i32 @of_node_put(%struct.device_node* %274)
  br label %276

276:                                              ; preds = %273, %181
  %277 = load %struct.da7218_pdata*, %struct.da7218_pdata** %7, align 8
  store %struct.da7218_pdata* %277, %struct.da7218_pdata** %2, align 8
  br label %278

278:                                              ; preds = %276, %203, %192, %26
  %279 = load %struct.da7218_pdata*, %struct.da7218_pdata** %2, align 8
  ret %struct.da7218_pdata* %279
}

declare dso_local %struct.da7218_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i8* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @da7218_of_micbias_lvl(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i8* @da7218_of_mic_amp_in_sel(%struct.snd_soc_component*, i8*) #1

declare dso_local i8* @da7218_of_dmic_data_sel(%struct.snd_soc_component*, i8*) #1

declare dso_local i8* @da7218_of_dmic_samplephase(%struct.snd_soc_component*, i8*) #1

declare dso_local i8* @da7218_of_dmic_clkrate(%struct.snd_soc_component*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @da7218_of_jack_rate(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @da7218_of_jack_debounce(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @da7218_of_jack_thr(%struct.snd_soc_component*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
