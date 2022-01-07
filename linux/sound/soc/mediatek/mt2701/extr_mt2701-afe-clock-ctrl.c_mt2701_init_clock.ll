; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_init_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/mediatek/mt2701/extr_mt2701-afe-clock-ctrl.c_mt2701_init_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_base_afe = type { i32, %struct.mt2701_afe_private* }
%struct.mt2701_afe_private = type { %struct.clk*, %struct.mt2701_i2s_path*, %struct.TYPE_2__*, %struct.clk** }
%struct.clk = type { i32 }
%struct.mt2701_i2s_path = type { %struct.clk*, %struct.clk**, %struct.clk*, %struct.clk*, %struct.clk* }
%struct.TYPE_2__ = type { i32 }

@MT2701_BASE_CLK_NUM = common dso_local global i32 0, align 4
@base_clks = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [18 x i8] c"failed to get %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"i2s%d_src_sel\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"i2s%d_src_div\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"i2s%d_mclk_en\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"i2so%d_hop_ck\00", align 1
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"i2si%d_hop_ck\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"asrc%d_out_ck\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"audio_mrgif_pd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt2701_init_clock(%struct.mtk_base_afe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_base_afe*, align 8
  %4 = alloca %struct.mt2701_afe_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt2701_i2s_path*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca [13 x i8], align 1
  store %struct.mtk_base_afe* %0, %struct.mtk_base_afe** %3, align 8
  %9 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %10 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %9, i32 0, i32 1
  %11 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %10, align 8
  store %struct.mt2701_afe_private* %11, %struct.mt2701_afe_private** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %61, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MT2701_BASE_CLK_NUM, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %12
  %17 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8**, i8*** @base_clks, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @devm_clk_get(i32 %19, i8* %24)
  %26 = bitcast i8* %25 to %struct.clk*
  %27 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %28 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %27, i32 0, i32 3
  %29 = load %struct.clk**, %struct.clk*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.clk*, %struct.clk** %29, i64 %31
  store %struct.clk* %26, %struct.clk** %32, align 8
  %33 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %34 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %33, i32 0, i32 3
  %35 = load %struct.clk**, %struct.clk*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.clk*, %struct.clk** %35, i64 %37
  %39 = load %struct.clk*, %struct.clk** %38, align 8
  %40 = call i64 @IS_ERR(%struct.clk* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %16
  %43 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %44 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i8**, i8*** @base_clks, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %53 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %52, i32 0, i32 3
  %54 = load %struct.clk**, %struct.clk*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.clk*, %struct.clk** %54, i64 %56
  %58 = load %struct.clk*, %struct.clk** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.clk* %58)
  store i32 %59, i32* %2, align 4
  br label %273

60:                                               ; preds = %16
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %12

64:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %242, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %68 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %245

73:                                               ; preds = %65
  %74 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %75 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %74, i32 0, i32 1
  %76 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %76, i64 %78
  store %struct.mt2701_i2s_path* %79, %struct.mt2701_i2s_path** %6, align 8
  %80 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @snprintf(i8* %80, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %84 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %87 = call i8* @devm_clk_get(i32 %85, i8* %86)
  %88 = bitcast i8* %87 to %struct.clk*
  %89 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %90 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %89, i32 0, i32 4
  store %struct.clk* %88, %struct.clk** %90, align 8
  %91 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %92 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %91, i32 0, i32 4
  %93 = load %struct.clk*, %struct.clk** %92, align 8
  %94 = call i64 @IS_ERR(%struct.clk* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %73
  %97 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %98 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %101 = call i32 @dev_err(i32 %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %100)
  %102 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %103 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %102, i32 0, i32 4
  %104 = load %struct.clk*, %struct.clk** %103, align 8
  %105 = call i32 @PTR_ERR(%struct.clk* %104)
  store i32 %105, i32* %2, align 4
  br label %273

106:                                              ; preds = %73
  %107 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @snprintf(i8* %107, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  %110 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %111 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %114 = call i8* @devm_clk_get(i32 %112, i8* %113)
  %115 = bitcast i8* %114 to %struct.clk*
  %116 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %117 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %116, i32 0, i32 3
  store %struct.clk* %115, %struct.clk** %117, align 8
  %118 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %119 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %118, i32 0, i32 3
  %120 = load %struct.clk*, %struct.clk** %119, align 8
  %121 = call i64 @IS_ERR(%struct.clk* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %106
  %124 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %125 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %128 = call i32 @dev_err(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %127)
  %129 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %130 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %129, i32 0, i32 3
  %131 = load %struct.clk*, %struct.clk** %130, align 8
  %132 = call i32 @PTR_ERR(%struct.clk* %131)
  store i32 %132, i32* %2, align 4
  br label %273

133:                                              ; preds = %106
  %134 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @snprintf(i8* %134, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %135)
  %137 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %138 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %141 = call i8* @devm_clk_get(i32 %139, i8* %140)
  %142 = bitcast i8* %141 to %struct.clk*
  %143 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %144 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %143, i32 0, i32 2
  store %struct.clk* %142, %struct.clk** %144, align 8
  %145 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %146 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %145, i32 0, i32 2
  %147 = load %struct.clk*, %struct.clk** %146, align 8
  %148 = call i64 @IS_ERR(%struct.clk* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %133
  %151 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %152 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %155 = call i32 @dev_err(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %154)
  %156 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %157 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %156, i32 0, i32 2
  %158 = load %struct.clk*, %struct.clk** %157, align 8
  %159 = call i32 @PTR_ERR(%struct.clk* %158)
  store i32 %159, i32* %2, align 4
  br label %273

160:                                              ; preds = %133
  %161 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @snprintf(i8* %161, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %162)
  %164 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %165 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %168 = call i8* @devm_clk_get(i32 %166, i8* %167)
  %169 = bitcast i8* %168 to %struct.clk*
  store %struct.clk* %169, %struct.clk** %7, align 8
  %170 = load %struct.clk*, %struct.clk** %7, align 8
  %171 = call i64 @IS_ERR(%struct.clk* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %160
  %174 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %175 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %178 = call i32 @dev_err(i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %177)
  %179 = load %struct.clk*, %struct.clk** %7, align 8
  %180 = call i32 @PTR_ERR(%struct.clk* %179)
  store i32 %180, i32* %2, align 4
  br label %273

181:                                              ; preds = %160
  %182 = load %struct.clk*, %struct.clk** %7, align 8
  %183 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %184 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %183, i32 0, i32 1
  %185 = load %struct.clk**, %struct.clk*** %184, align 8
  %186 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %187 = getelementptr inbounds %struct.clk*, %struct.clk** %185, i64 %186
  store %struct.clk* %182, %struct.clk** %187, align 8
  %188 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @snprintf(i8* %188, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %189)
  %191 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %192 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %195 = call i8* @devm_clk_get(i32 %193, i8* %194)
  %196 = bitcast i8* %195 to %struct.clk*
  store %struct.clk* %196, %struct.clk** %7, align 8
  %197 = load %struct.clk*, %struct.clk** %7, align 8
  %198 = call i64 @IS_ERR(%struct.clk* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %181
  %201 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %202 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %205 = call i32 @dev_err(i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %204)
  %206 = load %struct.clk*, %struct.clk** %7, align 8
  %207 = call i32 @PTR_ERR(%struct.clk* %206)
  store i32 %207, i32* %2, align 4
  br label %273

208:                                              ; preds = %181
  %209 = load %struct.clk*, %struct.clk** %7, align 8
  %210 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %211 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %210, i32 0, i32 1
  %212 = load %struct.clk**, %struct.clk*** %211, align 8
  %213 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %214 = getelementptr inbounds %struct.clk*, %struct.clk** %212, i64 %213
  store %struct.clk* %209, %struct.clk** %214, align 8
  %215 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %216 = load i32, i32* %5, align 4
  %217 = call i32 @snprintf(i8* %215, i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %216)
  %218 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %219 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %222 = call i8* @devm_clk_get(i32 %220, i8* %221)
  %223 = bitcast i8* %222 to %struct.clk*
  %224 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %225 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %224, i32 0, i32 0
  store %struct.clk* %223, %struct.clk** %225, align 8
  %226 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %227 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %226, i32 0, i32 0
  %228 = load %struct.clk*, %struct.clk** %227, align 8
  %229 = call i64 @IS_ERR(%struct.clk* %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %208
  %232 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %233 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds [13 x i8], [13 x i8]* %8, i64 0, i64 0
  %236 = call i32 @dev_err(i32 %234, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %235)
  %237 = load %struct.mt2701_i2s_path*, %struct.mt2701_i2s_path** %6, align 8
  %238 = getelementptr inbounds %struct.mt2701_i2s_path, %struct.mt2701_i2s_path* %237, i32 0, i32 0
  %239 = load %struct.clk*, %struct.clk** %238, align 8
  %240 = call i32 @PTR_ERR(%struct.clk* %239)
  store i32 %240, i32* %2, align 4
  br label %273

241:                                              ; preds = %208
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %5, align 4
  br label %65

245:                                              ; preds = %65
  %246 = load %struct.mtk_base_afe*, %struct.mtk_base_afe** %3, align 8
  %247 = getelementptr inbounds %struct.mtk_base_afe, %struct.mtk_base_afe* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i8* @devm_clk_get(i32 %248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %250 = bitcast i8* %249 to %struct.clk*
  %251 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %252 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %251, i32 0, i32 0
  store %struct.clk* %250, %struct.clk** %252, align 8
  %253 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %254 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %253, i32 0, i32 0
  %255 = load %struct.clk*, %struct.clk** %254, align 8
  %256 = call i64 @IS_ERR(%struct.clk* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %245
  %259 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %260 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %259, i32 0, i32 0
  %261 = load %struct.clk*, %struct.clk** %260, align 8
  %262 = call i32 @PTR_ERR(%struct.clk* %261)
  %263 = load i32, i32* @EPROBE_DEFER, align 4
  %264 = sub nsw i32 0, %263
  %265 = icmp eq i32 %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32, i32* @EPROBE_DEFER, align 4
  %268 = sub nsw i32 0, %267
  store i32 %268, i32* %2, align 4
  br label %273

269:                                              ; preds = %258
  %270 = load %struct.mt2701_afe_private*, %struct.mt2701_afe_private** %4, align 8
  %271 = getelementptr inbounds %struct.mt2701_afe_private, %struct.mt2701_afe_private* %270, i32 0, i32 0
  store %struct.clk* null, %struct.clk** %271, align 8
  br label %272

272:                                              ; preds = %269, %245
  store i32 0, i32* %2, align 4
  br label %273

273:                                              ; preds = %272, %266, %231, %200, %173, %150, %123, %96, %42
  %274 = load i32, i32* %2, align 4
  ret i32 %274
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
