; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_setup_algs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm_adsp.c_wm_adsp2_setup_algs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm_adsp = type { i64, i32 }
%struct.wmfw_adsp2_id_hdr = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wmfw_adsp2_alg_hdr = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wm_adsp_alg_region = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.wm_adsp_region = type { i32 }

@WMFW_ADSP2_XM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to read algorithm info: %d\0A\00", align 1
@WMFW_ADSP2_YM = common dso_local global i32 0, align 4
@WMFW_ADSP2_ZM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%d: ID %x v%d.%d.%d XM@%x YM@%x ZM@%x\0A\00", align 1
@SNDRV_CTL_ELEM_TYPE_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Missing length info for region XM with ID %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Missing length info for region YM with ID %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Missing length info for region ZM with ID %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm_adsp*)* @wm_adsp2_setup_algs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm_adsp2_setup_algs(%struct.wm_adsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm_adsp*, align 8
  %4 = alloca %struct.wmfw_adsp2_id_hdr, align 4
  %5 = alloca %struct.wmfw_adsp2_alg_hdr*, align 8
  %6 = alloca %struct.wm_adsp_alg_region*, align 8
  %7 = alloca %struct.wm_adsp_region*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wm_adsp* %0, %struct.wm_adsp** %3, align 8
  %13 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %14 = load i32, i32* @WMFW_ADSP2_XM, align 4
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
  br label %420

25:                                               ; preds = %1
  %26 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %27 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %7, align 8
  %30 = getelementptr inbounds %struct.wm_adsp_region, %struct.wm_adsp_region* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_raw_read(i32 %28, i32 %31, %struct.wmfw_adsp2_id_hdr* %4, i32 20)
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
  br label %420

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = zext i32 %43 to i64
  store i64 %44, i64* %10, align 8
  %45 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %46 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 1
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @wmfw_parse_id_header(%struct.wm_adsp* %45, %struct.TYPE_4__* %46, i64 %47)
  %49 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %50 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %51 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %49, i32 %50, i32 %53, i32 %55)
  %57 = bitcast %struct.wmfw_adsp2_alg_hdr* %56 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %57, %struct.wm_adsp_alg_region** %6, align 8
  %58 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %59 = bitcast %struct.wm_adsp_alg_region* %58 to %struct.wmfw_adsp2_alg_hdr*
  %60 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %40
  %63 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %64 = bitcast %struct.wm_adsp_alg_region* %63 to %struct.wmfw_adsp2_alg_hdr*
  %65 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %64)
  store i32 %65, i32* %2, align 4
  br label %420

66:                                               ; preds = %40
  %67 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %68 = load i32, i32* @WMFW_ADSP2_YM, align 4
  %69 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %67, i32 %68, i32 %71, i32 %73)
  %75 = bitcast %struct.wmfw_adsp2_alg_hdr* %74 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %75, %struct.wm_adsp_alg_region** %6, align 8
  %76 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %77 = bitcast %struct.wm_adsp_alg_region* %76 to %struct.wmfw_adsp2_alg_hdr*
  %78 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %82 = bitcast %struct.wm_adsp_alg_region* %81 to %struct.wmfw_adsp2_alg_hdr*
  %83 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %82)
  store i32 %83, i32* %2, align 4
  br label %420

84:                                               ; preds = %66
  %85 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %86 = load i32, i32* @WMFW_ADSP2_ZM, align 4
  %87 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.wmfw_adsp2_id_hdr, %struct.wmfw_adsp2_id_hdr* %4, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %85, i32 %86, i32 %89, i32 %91)
  %93 = bitcast %struct.wmfw_adsp2_alg_hdr* %92 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %93, %struct.wm_adsp_alg_region** %6, align 8
  %94 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %95 = bitcast %struct.wm_adsp_alg_region* %94 to %struct.wmfw_adsp2_alg_hdr*
  %96 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %84
  %99 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %100 = bitcast %struct.wm_adsp_alg_region* %99 to %struct.wmfw_adsp2_alg_hdr*
  %101 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %100)
  store i32 %101, i32* %2, align 4
  br label %420

102:                                              ; preds = %84
  store i32 5, i32* %8, align 4
  %103 = load i64, i64* %10, align 8
  %104 = mul i64 20, %103
  %105 = udiv i64 %104, 4
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.wm_adsp_region*, %struct.wm_adsp_region** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp* %107, i64 %108, %struct.wm_adsp_region* %109, i32 %110, i32 %111)
  store %struct.wmfw_adsp2_alg_hdr* %112, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %113 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %114 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %118 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %117)
  store i32 %118, i32* %2, align 4
  br label %420

119:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %412, %119
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %10, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %415

125:                                              ; preds = %120
  %126 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %128, i64 %130
  %132 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %136, i64 %138
  %140 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @be32_to_cpu(i32 %142)
  %144 = and i32 %143, 16711680
  %145 = lshr i32 %144, 16
  %146 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %146, i64 %148
  %150 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be32_to_cpu(i32 %152)
  %154 = and i32 %153, 65280
  %155 = lshr i32 %154, 8
  %156 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %156, i64 %158
  %160 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @be32_to_cpu(i32 %162)
  %164 = and i32 %163, 255
  %165 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %165, i64 %167
  %169 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @be32_to_cpu(i32 %170)
  %172 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %172, i64 %174
  %176 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @be32_to_cpu(i32 %177)
  %179 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %179, i64 %181
  %183 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @be32_to_cpu(i32 %184)
  %186 = call i32 @adsp_info(%struct.wm_adsp* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %135, i32 %145, i32 %155, i32 %164, i32 %171, i32 %178, i32 %185)
  %187 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %188 = load i32, i32* @WMFW_ADSP2_XM, align 4
  %189 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %189, i64 %191
  %193 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %196, i64 %198
  %200 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %187, i32 %188, i32 %195, i32 %201)
  %203 = bitcast %struct.wmfw_adsp2_alg_hdr* %202 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %203, %struct.wm_adsp_alg_region** %6, align 8
  %204 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %205 = bitcast %struct.wm_adsp_alg_region* %204 to %struct.wmfw_adsp2_alg_hdr*
  %206 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %125
  %209 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %210 = bitcast %struct.wm_adsp_alg_region* %209 to %struct.wmfw_adsp2_alg_hdr*
  %211 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %210)
  store i32 %211, i32* %12, align 4
  br label %416

212:                                              ; preds = %125
  %213 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %214 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %261

217:                                              ; preds = %212
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = load i64, i64* %10, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %249

223:                                              ; preds = %217
  %224 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %224, i64 %227
  %229 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @be32_to_cpu(i32 %230)
  store i32 %231, i32* %9, align 4
  %232 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %232, i64 %234
  %236 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @be32_to_cpu(i32 %237)
  %239 = load i32, i32* %9, align 4
  %240 = sub i32 %239, %238
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = mul i32 %241, 4
  store i32 %242, i32* %9, align 4
  %243 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %244 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %245 = bitcast %struct.wm_adsp_alg_region* %244 to %struct.wmfw_adsp2_alg_hdr*
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %248 = call i32 @wm_adsp_create_control(%struct.wm_adsp* %243, %struct.wmfw_adsp2_alg_hdr* %245, i32 0, i32 %246, i32* null, i32 0, i32 0, i32 %247)
  br label %260

249:                                              ; preds = %217
  %250 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %251 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %251, i64 %253
  %255 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @be32_to_cpu(i32 %257)
  %259 = call i32 @adsp_warn(%struct.wm_adsp* %250, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %249, %223
  br label %261

261:                                              ; preds = %260, %212
  %262 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %263 = load i32, i32* @WMFW_ADSP2_YM, align 4
  %264 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %264, i64 %266
  %268 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %271, i64 %273
  %275 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %262, i32 %263, i32 %270, i32 %276)
  %278 = bitcast %struct.wmfw_adsp2_alg_hdr* %277 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %278, %struct.wm_adsp_alg_region** %6, align 8
  %279 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %280 = bitcast %struct.wm_adsp_alg_region* %279 to %struct.wmfw_adsp2_alg_hdr*
  %281 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %261
  %284 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %285 = bitcast %struct.wm_adsp_alg_region* %284 to %struct.wmfw_adsp2_alg_hdr*
  %286 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %285)
  store i32 %286, i32* %12, align 4
  br label %416

287:                                              ; preds = %261
  %288 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %289 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %336

292:                                              ; preds = %287
  %293 = load i32, i32* %11, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = load i64, i64* %10, align 8
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %298, label %324

298:                                              ; preds = %292
  %299 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %300 = load i32, i32* %11, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %299, i64 %302
  %304 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @be32_to_cpu(i32 %305)
  store i32 %306, i32* %9, align 4
  %307 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %308 = load i32, i32* %11, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %307, i64 %309
  %311 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 @be32_to_cpu(i32 %312)
  %314 = load i32, i32* %9, align 4
  %315 = sub i32 %314, %313
  store i32 %315, i32* %9, align 4
  %316 = load i32, i32* %9, align 4
  %317 = mul i32 %316, 4
  store i32 %317, i32* %9, align 4
  %318 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %319 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %320 = bitcast %struct.wm_adsp_alg_region* %319 to %struct.wmfw_adsp2_alg_hdr*
  %321 = load i32, i32* %9, align 4
  %322 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %323 = call i32 @wm_adsp_create_control(%struct.wm_adsp* %318, %struct.wmfw_adsp2_alg_hdr* %320, i32 0, i32 %321, i32* null, i32 0, i32 0, i32 %322)
  br label %335

324:                                              ; preds = %292
  %325 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %326 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %327 = load i32, i32* %11, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %326, i64 %328
  %330 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @be32_to_cpu(i32 %332)
  %334 = call i32 @adsp_warn(%struct.wm_adsp* %325, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %333)
  br label %335

335:                                              ; preds = %324, %298
  br label %336

336:                                              ; preds = %335, %287
  %337 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %338 = load i32, i32* @WMFW_ADSP2_ZM, align 4
  %339 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %339, i64 %341
  %343 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %347 = load i32, i32* %11, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %346, i64 %348
  %350 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = call %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp* %337, i32 %338, i32 %345, i32 %351)
  %353 = bitcast %struct.wmfw_adsp2_alg_hdr* %352 to %struct.wm_adsp_alg_region*
  store %struct.wm_adsp_alg_region* %353, %struct.wm_adsp_alg_region** %6, align 8
  %354 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %355 = bitcast %struct.wm_adsp_alg_region* %354 to %struct.wmfw_adsp2_alg_hdr*
  %356 = call i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr* %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %336
  %359 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %360 = bitcast %struct.wm_adsp_alg_region* %359 to %struct.wmfw_adsp2_alg_hdr*
  %361 = call i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr* %360)
  store i32 %361, i32* %12, align 4
  br label %416

362:                                              ; preds = %336
  %363 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %364 = getelementptr inbounds %struct.wm_adsp, %struct.wm_adsp* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = icmp eq i64 %365, 0
  br i1 %366, label %367, label %411

367:                                              ; preds = %362
  %368 = load i32, i32* %11, align 4
  %369 = add nsw i32 %368, 1
  %370 = sext i32 %369 to i64
  %371 = load i64, i64* %10, align 8
  %372 = icmp ult i64 %370, %371
  br i1 %372, label %373, label %399

373:                                              ; preds = %367
  %374 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %375 = load i32, i32* %11, align 4
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %374, i64 %377
  %379 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @be32_to_cpu(i32 %380)
  store i32 %381, i32* %9, align 4
  %382 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %383 = load i32, i32* %11, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %382, i64 %384
  %386 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @be32_to_cpu(i32 %387)
  %389 = load i32, i32* %9, align 4
  %390 = sub i32 %389, %388
  store i32 %390, i32* %9, align 4
  %391 = load i32, i32* %9, align 4
  %392 = mul i32 %391, 4
  store i32 %392, i32* %9, align 4
  %393 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %394 = load %struct.wm_adsp_alg_region*, %struct.wm_adsp_alg_region** %6, align 8
  %395 = bitcast %struct.wm_adsp_alg_region* %394 to %struct.wmfw_adsp2_alg_hdr*
  %396 = load i32, i32* %9, align 4
  %397 = load i32, i32* @SNDRV_CTL_ELEM_TYPE_BYTES, align 4
  %398 = call i32 @wm_adsp_create_control(%struct.wm_adsp* %393, %struct.wmfw_adsp2_alg_hdr* %395, i32 0, i32 %396, i32* null, i32 0, i32 0, i32 %397)
  br label %410

399:                                              ; preds = %367
  %400 = load %struct.wm_adsp*, %struct.wm_adsp** %3, align 8
  %401 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %402 = load i32, i32* %11, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %401, i64 %403
  %405 = getelementptr inbounds %struct.wmfw_adsp2_alg_hdr, %struct.wmfw_adsp2_alg_hdr* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @be32_to_cpu(i32 %407)
  %409 = call i32 @adsp_warn(%struct.wm_adsp* %400, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %408)
  br label %410

410:                                              ; preds = %399, %373
  br label %411

411:                                              ; preds = %410, %362
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %11, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %11, align 4
  br label %120

415:                                              ; preds = %120
  br label %416

416:                                              ; preds = %415, %358, %283, %208
  %417 = load %struct.wmfw_adsp2_alg_hdr*, %struct.wmfw_adsp2_alg_hdr** %5, align 8
  %418 = call i32 @kfree(%struct.wmfw_adsp2_alg_hdr* %417)
  %419 = load i32, i32* %12, align 4
  store i32 %419, i32* %2, align 4
  br label %420

420:                                              ; preds = %416, %116, %98, %80, %62, %35, %22
  %421 = load i32, i32* %2, align 4
  ret i32 %421
}

declare dso_local %struct.wm_adsp_region* @wm_adsp_find_region(%struct.wm_adsp*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @regmap_raw_read(i32, i32, %struct.wmfw_adsp2_id_hdr*, i32) #1

declare dso_local i32 @adsp_err(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @wmfw_parse_id_header(%struct.wm_adsp*, %struct.TYPE_4__*, i64) #1

declare dso_local %struct.wmfw_adsp2_alg_hdr* @wm_adsp_create_region(%struct.wm_adsp*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wmfw_adsp2_alg_hdr*) #1

declare dso_local i32 @PTR_ERR(%struct.wmfw_adsp2_alg_hdr*) #1

declare dso_local %struct.wmfw_adsp2_alg_hdr* @wm_adsp_read_algs(%struct.wm_adsp*, i64, %struct.wm_adsp_region*, i32, i32) #1

declare dso_local i32 @adsp_info(%struct.wm_adsp*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wm_adsp_create_control(%struct.wm_adsp*, %struct.wmfw_adsp2_alg_hdr*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @adsp_warn(%struct.wm_adsp*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.wmfw_adsp2_alg_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
