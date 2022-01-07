; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp1_setup_algs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp1_setup_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i64, i32 }
%struct.wmfw_adsp1_id_hdr = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wmfw_adsp1_alg_hdr = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wm_adsp_alg_region = type { %struct.TYPE_3__, i32, i32 }
%struct.wm_adsp_region = type { i32 }

@WMFW_ADSP1_DM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read algorithm info: %d\0A\00", align 1
@WMFW_ADSP1_ZM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%d: ID %x v%d.%d.%d DM@%x ZM@%x\0A\00", align 1
@SNDRV_CTL_ELEM_TYPE_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Missing length info for region DM with ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Missing length info for region ZM with ID %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp1_setup_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp1_setup_algs(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.wmfw_adsp1_id_hdr, align 4
  %5 = alloca %struct.wmfw_adsp1_alg_hdr*, align 8
  %6 = alloca %struct.wm_adsp_alg_region*, align 8
  %7 = alloca %struct.wm_adsp_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %13 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %14 = load i32, i32* @WMFW_ADSP1_DM, align 4
  %15 = call %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp* %13, i32 %14)
  store %struct.wm_adsp_region* %15, %struct.wm_adsp_region** %7, align 8
  %16 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %7, align 8
  %17 = icmp ne %struct.wm_adsp_region* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %320

25:                                               ; preds = %1
  %26 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %27 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %7, align 8
  %30 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_raw_read(i32 %28, i32 %31, %struct.wmfw_adsp1_id_hdr* %4, i32 16)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @adsp_err(%struct.wm_adsp* %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %2, align 4
  br label %320

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %46 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @wmfw_parse_id_header(%struct.wm_adsp* %45, %struct.TYPE_4__* %46, i64 %47)
  %49 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %50 = load i32, i32* @WMFW_ADSP1_ZM, align 4
  %51 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.wmfw_adsp1_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %49, i32 %50, i32 %53, i32 %55)
  %57 = bitcast %struct.wmfw_adsp1_alg_hdr* %56 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %57, %struct.wm_adsp_alg_region** %6, align 8
  %58 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %59 = bitcast %struct.wm_adsp_alg_region* %58 to %struct.wmfw_adsp1_alg_hdr*
  %60 = call i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %64 = bitcast %struct.wm_adsp_alg_region* %63 to %struct.wmfw_adsp1_alg_hdr*
  %65 = call i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr* %64)
  store i32 %65, i32* %2, align 4
  br label %320

66:                                               ; preds = %40
  %67 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %68 = load i32, i32* @WMFW_ADSP1_DM, align 4
  %69 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.wmfw_adsp1_id_hdr, %struct.wmfw_adsp1_id_hdr* %4, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.wmfw_adsp1_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %67, i32 %68, i32 %71, i32 %73)
  %75 = bitcast %struct.wmfw_adsp1_alg_hdr* %74 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %75, %struct.wm_adsp_alg_region** %6, align 8
  %76 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %77 = bitcast %struct.wm_adsp_alg_region* %76 to %struct.wmfw_adsp1_alg_hdr*
  %78 = call i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %82 = bitcast %struct.wm_adsp_alg_region* %81 to %struct.wmfw_adsp1_alg_hdr*
  %83 = call i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr* %82)
  store i32 %83, i32* %2, align 4
  br label %320

84:                                               ; preds = %66
  store i32 4, i32* %8, align 4
  %85 = load i64, i64* %10, align 8
  %86 = mul i64 16, %85
  %87 = udiv i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %9, align 4
  %89 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.wmfw_adsp1_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp* %89, i64 %90, %struct.wm_adsp_region* %91, i32 %92, i32 %93)
  store %struct.wmfw_adsp1_alg_hdr* %94, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %95 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %96 = call i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %100 = call i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr* %99)
  store i32 %100, i32* %2, align 4
  br label %320

101:                                              ; preds = %84
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %312, %101
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %10, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %315

107:                                              ; preds = %102
  %108 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %110, i64 %112
  %114 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @be32_to_cpu(i32 %116)
  %118 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %118, i64 %120
  %122 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be32_to_cpu(i32 %124)
  %126 = and i32 %125, 16711680
  %127 = lshr i32 %126, 16
  %128 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %128, i64 %130
  %132 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = and i32 %135, 65280
  %137 = lshr i32 %136, 8
  %138 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %138, i64 %140
  %142 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @be32_to_cpu(i32 %144)
  %146 = and i32 %145, 255
  %147 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %147, i64 %149
  %151 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be32_to_cpu(i32 %152)
  %154 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %154, i64 %156
  %158 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @be32_to_cpu(i32 %159)
  %161 = call i32 @adsp_info(%struct.wm_adsp* %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %117, i32 %127, i32 %137, i32 %146, i32 %153, i32 %160)
  %162 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %163 = load i32, i32* @WMFW_ADSP1_DM, align 4
  %164 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %164, i64 %166
  %168 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %171, i64 %173
  %175 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.wmfw_adsp1_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %162, i32 %163, i32 %170, i32 %176)
  %178 = bitcast %struct.wmfw_adsp1_alg_hdr* %177 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %178, %struct.wm_adsp_alg_region** %6, align 8
  %179 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %180 = bitcast %struct.wm_adsp_alg_region* %179 to %struct.wmfw_adsp1_alg_hdr*
  %181 = call i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %107
  %184 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %185 = bitcast %struct.wm_adsp_alg_region* %184 to %struct.wmfw_adsp1_alg_hdr*
  %186 = call i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr* %185)
  store i32 %186, i32* %12, align 4
  br label %316

187:                                              ; preds = %107
  %188 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %189 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %236

192:                                              ; preds = %187
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %10, align 8
  %197 = icmp ult i64 %195, %196
  br i1 %197, label %198, label %224

198:                                              ; preds = %192
  %199 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %199, i64 %202
  %204 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @be32_to_cpu(i32 %205)
  store i32 %206, i32* %9, align 4
  %207 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %207, i64 %209
  %211 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @be32_to_cpu(i32 %212)
  %214 = load i32, i32* %9, align 4
  %215 = sub i32 %214, %213
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = mul i32 %216, 4
  store i32 %217, i32* %9, align 4
  %218 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %219 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %220 = bitcast %struct.wm_adsp_alg_region* %219 to %struct.wmfw_adsp1_alg_hdr*
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %223 = call i32 @wm_adsp_create_control(%struct.wm_adsp* %218, %struct.wmfw_adsp1_alg_hdr* %220, i32 0, i32 %221, i32* null, i32 0, i32 0, i32 %222)
  br label %235

224:                                              ; preds = %192
  %225 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %226 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %226, i64 %228
  %230 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @be32_to_cpu(i32 %232)
  %234 = call i32 @adsp_warn(%struct.wm_adsp* %225, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %224, %198
  br label %236

236:                                              ; preds = %235, %187
  %237 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %238 = load i32, i32* @WMFW_ADSP1_ZM, align 4
  %239 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %239, i64 %241
  %243 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %247 = load i32, i32* %11, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %246, i64 %248
  %250 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call %struct.wmfw_adsp1_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %237, i32 %238, i32 %245, i32 %251)
  %253 = bitcast %struct.wmfw_adsp1_alg_hdr* %252 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %253, %struct.wm_adsp_alg_region** %6, align 8
  %254 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %255 = bitcast %struct.wm_adsp_alg_region* %254 to %struct.wmfw_adsp1_alg_hdr*
  %256 = call i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr* %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %236
  %259 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %260 = bitcast %struct.wm_adsp_alg_region* %259 to %struct.wmfw_adsp1_alg_hdr*
  %261 = call i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr* %260)
  store i32 %261, i32* %12, align 4
  br label %316

262:                                              ; preds = %236
  %263 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %264 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %311

267:                                              ; preds = %262
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = load i64, i64* %10, align 8
  %272 = icmp ult i64 %270, %271
  br i1 %272, label %273, label %299

273:                                              ; preds = %267
  %274 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %274, i64 %277
  %279 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @be32_to_cpu(i32 %280)
  store i32 %281, i32* %9, align 4
  %282 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %283 = load i32, i32* %11, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %282, i64 %284
  %286 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @be32_to_cpu(i32 %287)
  %289 = load i32, i32* %9, align 4
  %290 = sub i32 %289, %288
  store i32 %290, i32* %9, align 4
  %291 = load i32, i32* %9, align 4
  %292 = mul i32 %291, 4
  store i32 %292, i32* %9, align 4
  %293 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %294 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %295 = bitcast %struct.wm_adsp_alg_region* %294 to %struct.wmfw_adsp1_alg_hdr*
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %298 = call i32 @wm_adsp_create_control(%struct.wm_adsp* %293, %struct.wmfw_adsp1_alg_hdr* %295, i32 0, i32 %296, i32* null, i32 0, i32 0, i32 %297)
  br label %310

299:                                              ; preds = %267
  %300 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %301 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %301, i64 %303
  %305 = getelementptr inbounds %struct.wmfw_adsp1_alg_hdr, %struct.wmfw_adsp1_alg_hdr* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @be32_to_cpu(i32 %307)
  %309 = call i32 @adsp_warn(%struct.wm_adsp* %300, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %308)
  br label %310

310:                                              ; preds = %299, %273
  br label %311

311:                                              ; preds = %310, %262
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %11, align 4
  br label %102

315:                                              ; preds = %102
  br label %316

316:                                              ; preds = %315, %258, %183
  %317 = load %struct.wmfw_adsp1_alg_hdr*, %struct.wmfw_adsp1_alg_hdr** %5, align 8
  %318 = call i32 @kfree(%struct.wmfw_adsp1_alg_hdr* %317)
  %319 = load i32, i32* %12, align 4
  store i32 %319, i32* %2, align 4
  br label %320

320:                                              ; preds = %316, %98, %80, %62, %35, %22
  %321 = load i32, i32* %2, align 4
  ret i32 %321
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, %struct.wmfw_adsp1_id_hdr*, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wmfw_parse_id_header(%struct.wm_adsp*, %struct.TYPE_4__*, i64) #1

declare dso_local %struct.wmfw_adsp1_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wmfw_adsp1_alg_hdr*) #1

declare dso_local i32 @PTR_ERR(%struct.wmfw_adsp1_alg_hdr*) #1

declare dso_local %struct.wmfw_adsp1_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp*, i64, %struct.wm_adsp_region*, i32, i32) #1

declare dso_local i32 @adsp_info(%struct.wm_adsp*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wm_adsp_create_control(%struct.wm_adsp*, %struct.wmfw_adsp1_alg_hdr*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @adsp_warn(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.wmfw_adsp1_alg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
