; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mxs/extr_mxs-saif.c_mxs_saif_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.mxs_saif = type { i32, i32, i32, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MXS_SAIF_STATE_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to enable master clock\0A\00", align 1
@BM_SAIF_CTRL_RUN = common dso_local global i32 0, align 4
@SAIF_CTRL = common dso_local global i64 0, align 8
@MXS_SET_ADDR = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@SAIF_DATA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"CTRL 0x%x STAT 0x%x\0A\00", align 1
@SAIF_STAT = common dso_local global i64 0, align 8
@MXS_SAIF_STATE_STOPPED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@MXS_CLR_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, %struct.snd_soc_dai*)* @mxs_saif_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_saif_trigger(%struct.snd_pcm_substream* %0, i32 %1, %struct.snd_soc_dai* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca %struct.mxs_saif*, align 8
  %9 = alloca %struct.mxs_saif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %7, align 8
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %13 = call %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.mxs_saif* %13, %struct.mxs_saif** %8, align 8
  %14 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %15 = call %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif* %14)
  store %struct.mxs_saif* %15, %struct.mxs_saif** %9, align 8
  %16 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %17 = icmp ne %struct.mxs_saif* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %230

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %226 [
    i32 130, label %23
    i32 131, label %23
    i32 132, label %23
    i32 128, label %163
    i32 129, label %163
    i32 133, label %163
  ]

23:                                               ; preds = %21, %21, %21
  %24 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %25 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MXS_SAIF_STATE_RUNNING, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %230

30:                                               ; preds = %23
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %36 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_enable(i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %30
  %42 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %43 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %230

47:                                               ; preds = %30
  %48 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %49 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %50 = icmp ne %struct.mxs_saif* %48, %49
  br i1 %50, label %51, label %78

51:                                               ; preds = %47
  %52 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %53 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clk_enable(i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %60 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %64 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clk_disable(i32 %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %230

68:                                               ; preds = %51
  %69 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %70 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %71 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SAIF_CTRL, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* @MXS_SET_ADDR, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @__raw_writel(i32 %69, i64 %76)
  br label %78

78:                                               ; preds = %68, %47
  %79 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %80 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %85 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %86 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @SAIF_CTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i64, i64* @MXS_SET_ADDR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @__raw_writel(i32 %84, i64 %91)
  br label %93

93:                                               ; preds = %83, %78
  %94 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %95 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %101 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @SAIF_DATA, align 8
  %104 = add nsw i64 %102, %103
  %105 = call i32 @__raw_writel(i32 0, i64 %104)
  %106 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %107 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SAIF_DATA, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @__raw_writel(i32 0, i64 %110)
  br label %125

112:                                              ; preds = %93
  %113 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %114 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SAIF_DATA, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @__raw_readl(i64 %117)
  %119 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %120 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SAIF_DATA, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @__raw_readl(i64 %123)
  br label %125

125:                                              ; preds = %112, %99
  %126 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %127 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load i32, i32* @MXS_SAIF_STATE_RUNNING, align 4
  %129 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %130 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %132 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %135 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @SAIF_CTRL, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @__raw_readl(i64 %138)
  %140 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %141 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @SAIF_STAT, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @__raw_readl(i64 %144)
  %146 = call i32 (i32, i8*, ...) @dev_dbg(i32 %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %145)
  %147 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %148 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %151 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @SAIF_CTRL, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @__raw_readl(i64 %154)
  %156 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %157 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SAIF_STAT, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @__raw_readl(i64 %160)
  %162 = call i32 (i32, i8*, ...) @dev_dbg(i32 %149, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %155, i32 %161)
  br label %229

163:                                              ; preds = %21, %21, %21
  %164 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %165 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @MXS_SAIF_STATE_STOPPED, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store i32 0, i32* %4, align 4
  br label %230

170:                                              ; preds = %163
  %171 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %172 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @dev_dbg(i32 %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %175 = load i32, i32* @USEC_PER_SEC, align 4
  %176 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %177 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sdiv i32 %175, %178
  store i32 %179, i32* %10, align 4
  %180 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %181 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %196, label %184

184:                                              ; preds = %170
  %185 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %186 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %187 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @SAIF_CTRL, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i64, i64* @MXS_CLR_ADDR, align 8
  %192 = add nsw i64 %190, %191
  %193 = call i32 @__raw_writel(i32 %185, i64 %192)
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @udelay(i32 %194)
  br label %196

196:                                              ; preds = %184, %170
  %197 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %198 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @clk_disable(i32 %199)
  %201 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %202 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %203 = icmp ne %struct.mxs_saif* %201, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %196
  %205 = load i32, i32* @BM_SAIF_CTRL_RUN, align 4
  %206 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %207 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @SAIF_CTRL, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i64, i64* @MXS_CLR_ADDR, align 8
  %212 = add nsw i64 %210, %211
  %213 = call i32 @__raw_writel(i32 %205, i64 %212)
  %214 = load i32, i32* %10, align 4
  %215 = call i32 @udelay(i32 %214)
  %216 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %217 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @clk_disable(i32 %218)
  br label %220

220:                                              ; preds = %204, %196
  %221 = load %struct.mxs_saif*, %struct.mxs_saif** %9, align 8
  %222 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  %223 = load i32, i32* @MXS_SAIF_STATE_STOPPED, align 4
  %224 = load %struct.mxs_saif*, %struct.mxs_saif** %8, align 8
  %225 = getelementptr inbounds %struct.mxs_saif, %struct.mxs_saif* %224, i32 0, i32 2
  store i32 %223, i32* %225, align 8
  br label %229

226:                                              ; preds = %21
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %230

229:                                              ; preds = %220, %125
  store i32 0, i32* %4, align 4
  br label %230

230:                                              ; preds = %229, %226, %169, %58, %41, %29, %18
  %231 = load i32, i32* %4, align 4
  ret i32 %231
}

declare dso_local %struct.mxs_saif* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.mxs_saif* @mxs_saif_get_master(%struct.mxs_saif*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
