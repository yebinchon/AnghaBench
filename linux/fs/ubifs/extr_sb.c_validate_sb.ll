; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_validate_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_sb.c_validate_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_sb_node = type { i64, i32, i32, i32 }

@UBIFS_SIMPLE_KEY_FMT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"min. I/O unit mismatch: %d in superblock, %d real\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"LEB size mismatch: %d in superblock, %d real\00", align 1
@UBIFS_MIN_LOG_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_LPT_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_ORPH_LEBS = common dso_local global i64 0, align 8
@UBIFS_MIN_MAIN_LEBS = common dso_local global i64 0, align 8
@UBIFS_SB_LEBS = common dso_local global i64 0, align 8
@UBIFS_MST_LEBS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [71 x i8] c"bad LEB count: %d in superblock, %d on UBI volume, %d minimum required\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"max. LEB count %d less than LEB count %d\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"too few main LEBs count %d, must be at least %d\00", align 1
@UBIFS_MIN_BUD_LEBS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [60 x i8] c"too small journal (%lld bytes), must be at least %lld bytes\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"too large journal size (%lld bytes), only %lld bytes available in the main area\00", align 1
@NONDATA_JHEADS_CNT = common dso_local global i64 0, align 8
@UBIFS_MAX_JHEADS = common dso_local global i64 0, align 8
@UBIFS_MIN_FANOUT = common dso_local global i64 0, align 8
@DEFAULT_LSAVE_CNT = common dso_local global i64 0, align 8
@UBIFS_COMPR_TYPES_CNT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"bad superblock, error %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_sb_node*)* @validate_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_sb(%struct.ubifs_info* %0, %struct.ubifs_sb_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_sb_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_sb_node* %1, %struct.ubifs_sb_node** %5, align 8
  store i32 1, i32* %7, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  br label %359

14:                                               ; preds = %2
  %15 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UBIFS_SIMPLE_KEY_FMT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 3, i32* %7, align 4
  br label %359

21:                                               ; preds = %14
  %22 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %23 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %21
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %33 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %31, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %359

40:                                               ; preds = %21
  %41 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %42 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %40
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %51 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  br label %359

59:                                               ; preds = %40
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UBIFS_MIN_LOG_LEBS, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %59
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %67 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @UBIFS_MIN_LPT_LEBS, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UBIFS_MIN_ORPH_LEBS, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %79 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UBIFS_MIN_MAIN_LEBS, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77, %71, %65, %59
  store i32 4, i32* %7, align 4
  br label %359

84:                                               ; preds = %77
  %85 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %86 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %89 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %95, %98
  %100 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %101 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %99, %102
  %104 = add nsw i64 %103, 6
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %84
  %115 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %116 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %119 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %118, i32 0, i32 17
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %117, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %114, %84
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %129 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %128, i32 0, i32 17
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %124, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %131, i32 %132)
  br label %359

134:                                              ; preds = %114
  %135 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %136 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %139 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %144 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %145 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %148 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %146, i32 %149)
  br label %359

151:                                              ; preds = %134
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %153 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @UBIFS_MIN_MAIN_LEBS, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i64, i64* @UBIFS_MIN_MAIN_LEBS, align 8
  %164 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %158, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %162, i64 %163)
  br label %359

165:                                              ; preds = %151
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %167 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* @UBIFS_MIN_BUD_LEBS, align 8
  %171 = mul nsw i64 %169, %170
  store i64 %171, i64* %6, align 8
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 9
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %165
  %178 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 9
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = load i64, i64* %6, align 8
  %184 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %178, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i32 %182, i64 %183)
  br label %359

185:                                              ; preds = %165
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %191 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = mul nsw i64 %189, %192
  store i64 %193, i64* %6, align 8
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %195 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %6, align 8
  %198 = icmp sgt i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %185
  %200 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %202 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %201, i32 0, i32 9
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = load i64, i64* %6, align 8
  %206 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %200, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i32 %204, i64 %205)
  br label %359

207:                                              ; preds = %185
  %208 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %209 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @NONDATA_JHEADS_CNT, align 8
  %212 = add nsw i64 %211, 1
  %213 = icmp slt i64 %210, %212
  br i1 %213, label %222, label %214

214:                                              ; preds = %207
  %215 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %216 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @NONDATA_JHEADS_CNT, align 8
  %219 = load i64, i64* @UBIFS_MAX_JHEADS, align 8
  %220 = add nsw i64 %218, %219
  %221 = icmp sgt i64 %217, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %214, %207
  store i32 9, i32* %7, align 4
  br label %359

223:                                              ; preds = %214
  %224 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %225 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %224, i32 0, i32 10
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @UBIFS_MIN_FANOUT, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %240, label %229

229:                                              ; preds = %223
  %230 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %231 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %232 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %231, i32 0, i32 10
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @ubifs_idx_node_sz(%struct.ubifs_info* %230, i64 %233)
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = icmp sgt i64 %234, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %229, %223
  store i32 10, i32* %7, align 4
  br label %359

241:                                              ; preds = %229
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %243 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %242, i32 0, i32 11
  %244 = load i64, i64* %243, align 8
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %277, label %246

246:                                              ; preds = %241
  %247 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %248 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %247, i32 0, i32 11
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @DEFAULT_LSAVE_CNT, align 8
  %251 = icmp sgt i64 %249, %250
  br i1 %251, label %252, label %278

252:                                              ; preds = %246
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %254 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %253, i32 0, i32 11
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %257 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %256, i32 0, i32 8
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %261 = sub nsw i64 %259, %260
  %262 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %263 = sub nsw i64 %261, %262
  %264 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %265 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = sub nsw i64 %263, %266
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %267, %270
  %272 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %273 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %272, i32 0, i32 4
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %271, %274
  %276 = icmp sgt i64 %255, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %252, %241
  store i32 11, i32* %7, align 4
  br label %359

278:                                              ; preds = %252, %246
  %279 = load i64, i64* @UBIFS_SB_LEBS, align 8
  %280 = load i64, i64* @UBIFS_MST_LEBS, align 8
  %281 = add nsw i64 %279, %280
  %282 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %283 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = add nsw i64 %281, %284
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %287 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %285, %288
  %290 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %291 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %290, i32 0, i32 4
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %289, %292
  %294 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %295 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %293, %296
  %298 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %299 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = icmp ne i64 %297, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %278
  store i32 12, i32* %7, align 4
  br label %359

304:                                              ; preds = %278
  %305 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %306 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %305, i32 0, i32 12
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @UBIFS_COMPR_TYPES_CNT, align 8
  %309 = icmp sge i64 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %304
  store i32 13, i32* %7, align 4
  br label %359

311:                                              ; preds = %304
  %312 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %313 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %312, i32 0, i32 13
  %314 = load i64, i64* %313, align 8
  %315 = icmp slt i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %311
  %317 = load i64, i64* %6, align 8
  %318 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %319 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %318, i32 0, i32 13
  %320 = load i64, i64* %319, align 8
  %321 = icmp slt i64 %317, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %316, %311
  store i32 14, i32* %7, align 4
  br label %359

323:                                              ; preds = %316
  %324 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %325 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @le32_to_cpu(i32 %326)
  %328 = icmp sgt i32 %327, 1000000000
  br i1 %328, label %335, label %329

329:                                              ; preds = %323
  %330 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %331 = getelementptr inbounds %struct.ubifs_sb_node, %struct.ubifs_sb_node* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @le32_to_cpu(i32 %332)
  %334 = icmp slt i32 %333, 1
  br i1 %334, label %335, label %336

335:                                              ; preds = %329, %323
  store i32 15, i32* %7, align 4
  br label %359

336:                                              ; preds = %329
  %337 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %338 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %337, i32 0, i32 16
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %336
  %342 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %343 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %342, i32 0, i32 14
  %344 = load i32, i32* %343, align 8
  %345 = icmp sge i32 %344, 5
  br i1 %345, label %346, label %347

346:                                              ; preds = %341
  store i32 16, i32* %7, align 4
  br label %359

347:                                              ; preds = %341, %336
  %348 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %349 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %348, i32 0, i32 15
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %358

352:                                              ; preds = %347
  %353 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %354 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %353, i32 0, i32 14
  %355 = load i32, i32* %354, align 8
  %356 = icmp slt i32 %355, 5
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  store i32 17, i32* %7, align 4
  br label %359

358:                                              ; preds = %352, %347
  store i32 0, i32* %3, align 4
  br label %368

359:                                              ; preds = %357, %346, %335, %322, %310, %303, %277, %240, %222, %199, %177, %157, %142, %123, %83, %49, %30, %20, %13
  %360 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %361 = load i32, i32* %7, align 4
  %362 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %360, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %361)
  %363 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %364 = load %struct.ubifs_sb_node*, %struct.ubifs_sb_node** %5, align 8
  %365 = call i32 @ubifs_dump_node(%struct.ubifs_info* %363, %struct.ubifs_sb_node* %364)
  %366 = load i32, i32* @EINVAL, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %368

368:                                              ; preds = %359, %358
  %369 = load i32, i32* %3, align 4
  ret i32 %369
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i64 @ubifs_idx_node_sz(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, %struct.ubifs_sb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
