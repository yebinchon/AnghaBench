; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_recovery.c_ubifs_recover_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_scan_leb = type { i32 }
%struct.ubifs_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ubifs_ch = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%d:%d, jhead %d, grouped %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"look at LEB %d:%d (%d bytes left)\00", align 1
@SCANNED_A_NODE = common dso_local global i32 0, align 4
@SCANNED_EMPTY_SPACE = common dso_local global i32 0, align 4
@SCANNED_GARBAGE = common dso_local global i32 0, align 4
@SCANNED_A_BAD_PAD_NODE = common dso_local global i32 0, align 4
@SCANNED_A_CORRUPT_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"found corruption (%d) at %d:%d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"unexpected return value %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"corrupt empty space LEB %d:%d, corruption starts at %d\00", align 1
@GCHD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"corruption %d\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"LEB %d scanning failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_scan_leb* @ubifs_recover_leb(%struct.ubifs_info* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_scan_leb*, align 8
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ubifs_scan_leb*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.ubifs_ch*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %41

32:                                               ; preds = %5
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %41

41:                                               ; preds = %32, %31
  %42 = phi i32 [ 0, %31 ], [ %40, %32 ]
  store i32 %42, i32* %17, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  store i8* %46, i8** %19, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %17, align 4
  %51 = call i32 (i8*, i32, i32, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i8*, i8** %10, align 8
  %56 = call %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info* %52, i32 %53, i32 %54, i8* %55)
  store %struct.ubifs_scan_leb* %56, %struct.ubifs_scan_leb** %18, align 8
  %57 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %58 = call i64 @IS_ERR(%struct.ubifs_scan_leb* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %41
  %61 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  store %struct.ubifs_scan_leb* %61, %struct.ubifs_scan_leb** %6, align 8
  br label %293

62:                                               ; preds = %41
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = icmp sge i32 %64, 8
  %66 = zext i1 %65 to i32
  %67 = call i32 @ubifs_assert(%struct.ubifs_info* %63, i32 %66)
  br label %68

68:                                               ; preds = %155, %62
  %69 = load i32, i32* %14, align 4
  %70 = icmp sge i32 %69, 8
  br i1 %70, label %71, label %156

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @dbg_scan(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  %76 = call i32 (...) @cond_resched()
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %77, i8* %78, i32 %79, i32 %80, i32 %81, i32 1)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @SCANNED_A_NODE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %71
  %87 = load i8*, i8** %19, align 8
  %88 = bitcast i8* %87 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %88, %struct.ubifs_ch** %20, align 8
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %90 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @ubifs_add_snod(%struct.ubifs_info* %89, %struct.ubifs_scan_leb* %90, i8* %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %285

97:                                               ; preds = %86
  %98 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %99 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = call i32 @ALIGN(i32 %101, i32 8)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i8*, i8** %19, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr i8, i8* %107, i64 %108
  store i8* %109, i8** %19, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sub nsw i32 %111, %110
  store i32 %112, i32* %14, align 4
  br label %155

113:                                              ; preds = %71
  %114 = load i32, i32* %12, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i8*, i8** %19, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr i8, i8* %121, i64 %122
  store i8* %123, i8** %19, align 8
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %154

127:                                              ; preds = %113
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @SCANNED_EMPTY_SPACE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SCANNED_GARBAGE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @SCANNED_A_CORRUPT_NODE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139, %135, %131, %127
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 (i8*, i32, i32, i32, ...) @dbg_rcvry(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %145, i32 %146)
  br label %156

148:                                              ; preds = %139
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %149, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  %152 = load i32, i32* @EINVAL, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %13, align 4
  br label %285

154:                                              ; preds = %116
  br label %155

155:                                              ; preds = %154, %97
  br label %68

156:                                              ; preds = %143, %68
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @SCANNED_GARBAGE, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* @SCANNED_A_BAD_PAD_NODE, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %172

164:                                              ; preds = %160, %156
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @is_last_write(%struct.ubifs_info* %165, i8* %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %164
  br label %267

171:                                              ; preds = %164
  br label %216

172:                                              ; preds = %160
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @SCANNED_A_CORRUPT_NODE, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %172
  %177 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @no_more_nodes(%struct.ubifs_info* %177, i8* %178, i32 %179, i32 %180, i32 %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %176
  br label %267

185:                                              ; preds = %176
  br label %215

186:                                              ; preds = %172
  %187 = load i8*, i8** %19, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @is_empty(i8* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %214, label %191

191:                                              ; preds = %186
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %193 = load i8*, i8** %19, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @is_last_write(%struct.ubifs_info* %192, i8* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %213, label %197

197:                                              ; preds = %191
  %198 = load i8*, i8** %19, align 8
  %199 = load i32, i32* %14, align 4
  %200 = call i32 @first_non_ff(i8* %198, i32 %199)
  store i32 %200, i32* %22, align 4
  %201 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %22, align 4
  %205 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %201, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %202, i32 %203, i32 %204)
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %22, align 4
  %210 = load i8*, i8** %19, align 8
  %211 = sext i32 %209 to i64
  %212 = getelementptr i8, i8* %210, i64 %211
  store i8* %212, i8** %19, align 8
  br label %277

213:                                              ; preds = %191
  br label %214

214:                                              ; preds = %213, %186
  br label %215

215:                                              ; preds = %214, %185
  br label %216

216:                                              ; preds = %215, %171
  %217 = load i32, i32* %9, align 4
  %218 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %219 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @round_down(i32 %217, i32 %220)
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %216
  %225 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %226 = call i32 @drop_last_group(%struct.ubifs_scan_leb* %225, i32* %9)
  br label %227

227:                                              ; preds = %224, %216
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @GCHD, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %240

231:                                              ; preds = %227
  br label %232

232:                                              ; preds = %236, %231
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %16, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %232
  %237 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %238 = call i32 @drop_last_node(%struct.ubifs_scan_leb* %237, i32* %9)
  br label %232

239:                                              ; preds = %232
  br label %240

240:                                              ; preds = %239, %227
  %241 = load i8*, i8** %10, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr i8, i8* %241, i64 %243
  store i8* %244, i8** %19, align 8
  %245 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %246 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sub nsw i32 %247, %248
  store i32 %249, i32* %14, align 4
  %250 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %251 = load i32, i32* %8, align 4
  %252 = call i32 @clean_buf(%struct.ubifs_info* %250, i8** %19, i32 %251, i32* %9, i32* %14)
  %253 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %254 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @ubifs_end_scan(%struct.ubifs_info* %253, %struct.ubifs_scan_leb* %254, i32 %255, i32 %256)
  %258 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %259 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %260 = load i32, i32* %15, align 4
  %261 = call i32 @fix_unclean_leb(%struct.ubifs_info* %258, %struct.ubifs_scan_leb* %259, i32 %260)
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %240
  br label %285

265:                                              ; preds = %240
  %266 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  store %struct.ubifs_scan_leb* %266, %struct.ubifs_scan_leb** %6, align 8
  br label %293

267:                                              ; preds = %184, %170
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %269 = load i32, i32* %12, align 4
  %270 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %269)
  %271 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %272 = load i8*, i8** %19, align 8
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %8, align 4
  %275 = load i32, i32* %9, align 4
  %276 = call i32 @ubifs_scan_a_node(%struct.ubifs_info* %271, i8* %272, i32 %273, i32 %274, i32 %275, i32 0)
  br label %277

277:                                              ; preds = %267, %197
  %278 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i8*, i8** %19, align 8
  %282 = call i32 @ubifs_scanned_corruption(%struct.ubifs_info* %278, i32 %279, i32 %280, i8* %281)
  %283 = load i32, i32* @EUCLEAN, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %277, %264, %148, %96
  %286 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %287 = load i32, i32* %8, align 4
  %288 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %286, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %287)
  %289 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %18, align 8
  %290 = call i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb* %289)
  %291 = load i32, i32* %13, align 4
  %292 = call %struct.ubifs_scan_leb* @ERR_PTR(i32 %291)
  store %struct.ubifs_scan_leb* %292, %struct.ubifs_scan_leb** %6, align 8
  br label %293

293:                                              ; preds = %285, %265, %60
  %294 = load %struct.ubifs_scan_leb*, %struct.ubifs_scan_leb** %6, align 8
  ret %struct.ubifs_scan_leb* %294
}

declare dso_local i32 @dbg_rcvry(i8*, i32, i32, i32, ...) #1

declare dso_local %struct.ubifs_scan_leb* @ubifs_start_scan(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_scan_leb*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_scan(i8*, i32, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @ubifs_scan_a_node(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_add_snod(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i8*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i32 @is_last_write(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @no_more_nodes(%struct.ubifs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @is_empty(i8*, i32) #1

declare dso_local i32 @first_non_ff(i8*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @drop_last_group(%struct.ubifs_scan_leb*, i32*) #1

declare dso_local i32 @drop_last_node(%struct.ubifs_scan_leb*, i32*) #1

declare dso_local i32 @clean_buf(%struct.ubifs_info*, i8**, i32, i32*, i32*) #1

declare dso_local i32 @ubifs_end_scan(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32, i32) #1

declare dso_local i32 @fix_unclean_leb(%struct.ubifs_info*, %struct.ubifs_scan_leb*, i32) #1

declare dso_local i32 @ubifs_scanned_corruption(%struct.ubifs_info*, i32, i32, i8*) #1

declare dso_local i32 @ubifs_scan_destroy(%struct.ubifs_scan_leb*) #1

declare dso_local %struct.ubifs_scan_leb* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
