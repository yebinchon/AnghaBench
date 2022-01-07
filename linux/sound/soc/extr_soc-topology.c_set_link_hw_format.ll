; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_set_link_hw_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_set_link_hw_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai_link = type { i32 }
%struct.snd_soc_tplg_link_config = type { i64, %struct.snd_soc_tplg_hw_config*, i32 }
%struct.snd_soc_tplg_hw_config = type { i64, i32, i8, i8, i64, i64, i32 }

@SND_SOC_DAIFMT_FORMAT_MASK = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_GATED = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CONT = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_NB_IF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_IB_NF = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_IB_IF = common dso_local global i32 0, align 4
@SND_SOC_TPLG_BCLK_CM = common dso_local global i64 0, align 8
@SND_SOC_TPLG_FSYNC_CM = common dso_local global i64 0, align 8
@SND_SOC_DAIFMT_CBM_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFM = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBM_CFS = common dso_local global i32 0, align 4
@SND_SOC_DAIFMT_CBS_CFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dai_link*, %struct.snd_soc_tplg_link_config*)* @set_link_hw_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_link_hw_format(%struct.snd_soc_dai_link* %0, %struct.snd_soc_tplg_link_config* %1) #0 {
  %3 = alloca %struct.snd_soc_dai_link*, align 8
  %4 = alloca %struct.snd_soc_tplg_link_config*, align 8
  %5 = alloca %struct.snd_soc_tplg_hw_config*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct.snd_soc_dai_link* %0, %struct.snd_soc_dai_link** %3, align 8
  store %struct.snd_soc_tplg_link_config* %1, %struct.snd_soc_tplg_link_config** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %173, %2
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %4, align 8
  %14 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %176

18:                                               ; preds = %11
  %19 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %4, align 8
  %20 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %19, i32 0, i32 1
  %21 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %21, i64 %23
  store %struct.snd_soc_tplg_hw_config* %24, %struct.snd_soc_tplg_hw_config** %5, align 8
  %25 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %26 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.snd_soc_tplg_link_config*, %struct.snd_soc_tplg_link_config** %4, align 8
  %29 = getelementptr inbounds %struct.snd_soc_tplg_link_config, %struct.snd_soc_tplg_link_config* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %173

33:                                               ; preds = %18
  %34 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %35 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* @SND_SOC_DAIFMT_FORMAT_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %41 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %57 [
    i32 128, label %45
    i32 129, label %51
  ]

45:                                               ; preds = %33
  %46 = load i32, i32* @SND_SOC_DAIFMT_GATED, align 4
  %47 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %48 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %58

51:                                               ; preds = %33
  %52 = load i32, i32* @SND_SOC_DAIFMT_CONT, align 4
  %53 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %54 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %58

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %57, %51, %45
  %59 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %60 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %59, i32 0, i32 2
  %61 = load i8, i8* %60, align 4
  store i8 %61, i8* %8, align 1
  %62 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %63 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %62, i32 0, i32 3
  %64 = load i8, i8* %63, align 1
  store i8 %64, i8* %9, align 1
  %65 = load i8, i8* %8, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %58
  %68 = load i8, i8* %9, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* @SND_SOC_DAIFMT_NB_NF, align 4
  %72 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %110

76:                                               ; preds = %67, %58
  %77 = load i8, i8* %8, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i8, i8* %9, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* @SND_SOC_DAIFMT_NB_IF, align 4
  %85 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %86 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %109

89:                                               ; preds = %79, %76
  %90 = load i8, i8* %8, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i8, i8* %9, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* @SND_SOC_DAIFMT_IB_NF, align 4
  %98 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %99 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %108

102:                                              ; preds = %93, %89
  %103 = load i32, i32* @SND_SOC_DAIFMT_IB_IF, align 4
  %104 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %105 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  br label %109

109:                                              ; preds = %108, %83
  br label %110

110:                                              ; preds = %109, %70
  %111 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %112 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @SND_SOC_TPLG_BCLK_CM, align 8
  %115 = icmp eq i64 %113, %114
  %116 = zext i1 %115 to i32
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %6, align 1
  %118 = load %struct.snd_soc_tplg_hw_config*, %struct.snd_soc_tplg_hw_config** %5, align 8
  %119 = getelementptr inbounds %struct.snd_soc_tplg_hw_config, %struct.snd_soc_tplg_hw_config* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SND_SOC_TPLG_FSYNC_CM, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %7, align 1
  %125 = load i8, i8* %6, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %110
  %129 = load i8, i8* %7, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFM, align 4
  %134 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %135 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %172

138:                                              ; preds = %128, %110
  %139 = load i8, i8* %6, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = load i8, i8* %7, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFM, align 4
  %147 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %148 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %171

151:                                              ; preds = %141, %138
  %152 = load i8, i8* %6, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i8, i8* %7, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* @SND_SOC_DAIFMT_CBM_CFS, align 4
  %160 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %161 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %170

164:                                              ; preds = %155, %151
  %165 = load i32, i32* @SND_SOC_DAIFMT_CBS_CFS, align 4
  %166 = load %struct.snd_soc_dai_link*, %struct.snd_soc_dai_link** %3, align 8
  %167 = getelementptr inbounds %struct.snd_soc_dai_link, %struct.snd_soc_dai_link* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %164, %158
  br label %171

171:                                              ; preds = %170, %145
  br label %172

172:                                              ; preds = %171, %132
  br label %173

173:                                              ; preds = %172, %32
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %11

176:                                              ; preds = %11
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
