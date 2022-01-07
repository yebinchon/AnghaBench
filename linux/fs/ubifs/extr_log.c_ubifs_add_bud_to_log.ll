; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_log.c_ubifs_add_bud_to_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_log.c_ubifs_add_bud_to_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, %struct.TYPE_4__*, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ubifs_bud = type { i32, i32, i32, i8*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.ubifs_ref_node = type { i32, i32, i32, i8*, %struct.TYPE_3__, i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"not enough log space - %lld, required %d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"bud bytes %lld (%lld max), require commit\00", align 1
@COMMIT_RESTING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"bud bytes %lld (%lld max), initiate BG commit\00", align 1
@UBIFS_REF_NODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"write ref LEB %d:%d\00", align 1
@UBIFS_REF_NODE_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_add_bud_to_log(%struct.ubifs_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_bud*, align 8
  %12 = alloca %struct.ubifs_ref_node*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ubifs_ref_node* @kmalloc(i32 40, i32 %13)
  %15 = bitcast %struct.ubifs_ref_node* %14 to %struct.ubifs_bud*
  store %struct.ubifs_bud* %15, %struct.ubifs_bud** %11, align 8
  %16 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %17 = icmp ne %struct.ubifs_bud* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %310

21:                                               ; preds = %4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @GFP_NOFS, align 4
  %26 = call %struct.ubifs_ref_node* @kzalloc(i64 %24, i32 %25)
  store %struct.ubifs_ref_node* %26, %struct.ubifs_ref_node** %12, align 8
  %27 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %28 = icmp ne %struct.ubifs_ref_node* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %21
  %30 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %31 = bitcast %struct.ubifs_bud* %30 to %struct.ubifs_ref_node*
  %32 = call i32 @kfree(%struct.ubifs_ref_node* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %310

35:                                               ; preds = %21
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 10
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %35
  %51 = phi i1 [ false, %35 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %55 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @EROFS, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %10, align 4
  br label %300

61:                                               ; preds = %50
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %63 = call i64 @empty_log_bytes(%struct.ubifs_info* %62)
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %63, %66
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %61
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %74 = call i64 @empty_log_bytes(%struct.ubifs_info* %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %76 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @dbg_log(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %77)
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %80 = call i32 @ubifs_commit_required(%struct.ubifs_info* %79)
  %81 = load i32, i32* @EAGAIN, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %10, align 4
  br label %300

83:                                               ; preds = %61
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %94 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp sgt i32 %92, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %83
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = call i32 @dbg_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %101, i64 %105)
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %108 = call i32 @ubifs_commit_required(%struct.ubifs_info* %107)
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %300

111:                                              ; preds = %83
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %117 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %111
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @COMMIT_RESTING, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %132 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = call i32 @dbg_log(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %130, i64 %134)
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %137 = call i32 @ubifs_request_bg_commit(%struct.ubifs_info* %136)
  br label %138

138:                                              ; preds = %126, %120, %111
  %139 = load i32, i32* %8, align 4
  %140 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %141 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %144 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %147 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %149 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %148, i32 0, i32 5
  store i32* null, i32** %149, align 8
  %150 = load i32, i32* @UBIFS_REF_NODE, align 4
  %151 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %152 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %155 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %160 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %162 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %166 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %171 = getelementptr inbounds %struct.ubifs_ref_node, %struct.ubifs_ref_node* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %176 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %180 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %178, %181
  %183 = icmp sgt i64 %174, %182
  br i1 %183, label %184, label %204

184:                                              ; preds = %138
  %185 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %186 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %187 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %186, i32 0, i32 8
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @ubifs_next_log_lnum(%struct.ubifs_info* %185, i64 %188)
  %190 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %191 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %190, i32 0, i32 8
  store i64 %189, i64* %191, align 8
  %192 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %193 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %194 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %193, i32 0, i32 8
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %197 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %196, i32 0, i32 9
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %195, %198
  %200 = zext i1 %199 to i32
  %201 = call i32 @ubifs_assert(%struct.ubifs_info* %192, i32 %200)
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %203 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %202, i32 0, i32 7
  store i64 0, i64* %203, align 8
  br label %204

204:                                              ; preds = %184, %138
  %205 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %206 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %211 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %212 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %211, i32 0, i32 8
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %210, i64 %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %300

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %204
  %220 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %221 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %226 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %227 = getelementptr inbounds %struct.ubifs_bud, %struct.ubifs_bud* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @ubifs_leb_map(%struct.ubifs_info* %225, i32 %228)
  store i32 %229, i32* %10, align 4
  %230 = load i32, i32* %10, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %300

233:                                              ; preds = %224
  br label %234

234:                                              ; preds = %233, %219
  %235 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %236 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %235, i32 0, i32 8
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %239 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @dbg_log(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %237, i64 %240)
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %243 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %244 = load i32, i32* @UBIFS_REF_NODE_SZ, align 4
  %245 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %246 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %245, i32 0, i32 8
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %249 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @ubifs_write_node(%struct.ubifs_info* %242, %struct.ubifs_ref_node* %243, i32 %244, i64 %247, i64 %250)
  store i32 %251, i32* %10, align 4
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %234
  br label %300

255:                                              ; preds = %234
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %257 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %258 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %257, i32 0, i32 12
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %261 = load i32, i32* @UBIFS_REF_NODE_SZ, align 4
  %262 = call i32 @ubifs_shash_update(%struct.ubifs_info* %256, i32 %259, %struct.ubifs_ref_node* %260, i32 %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %255
  br label %300

266:                                              ; preds = %255
  %267 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %268 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %269 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %268, i32 0, i32 12
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %272 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %271, i32 0, i32 11
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @ubifs_shash_copy_state(%struct.ubifs_info* %267, i32 %270, i32 %278)
  store i32 %279, i32* %10, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %266
  br label %300

283:                                              ; preds = %266
  %284 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %285 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %288 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %287, i32 0, i32 7
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, %286
  store i64 %290, i64* %288, align 8
  %291 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %292 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %293 = bitcast %struct.ubifs_bud* %292 to %struct.ubifs_ref_node*
  %294 = call i32 @ubifs_add_bud(%struct.ubifs_info* %291, %struct.ubifs_ref_node* %293)
  %295 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %296 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %295, i32 0, i32 10
  %297 = call i32 @mutex_unlock(i32* %296)
  %298 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %299 = call i32 @kfree(%struct.ubifs_ref_node* %298)
  store i32 0, i32* %5, align 4
  br label %310

300:                                              ; preds = %282, %265, %254, %232, %217, %97, %72, %58
  %301 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %302 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %301, i32 0, i32 10
  %303 = call i32 @mutex_unlock(i32* %302)
  %304 = load %struct.ubifs_ref_node*, %struct.ubifs_ref_node** %12, align 8
  %305 = call i32 @kfree(%struct.ubifs_ref_node* %304)
  %306 = load %struct.ubifs_bud*, %struct.ubifs_bud** %11, align 8
  %307 = bitcast %struct.ubifs_bud* %306 to %struct.ubifs_ref_node*
  %308 = call i32 @kfree(%struct.ubifs_ref_node* %307)
  %309 = load i32, i32* %10, align 4
  store i32 %309, i32* %5, align 4
  br label %310

310:                                              ; preds = %300, %283, %29, %18
  %311 = load i32, i32* %5, align 4
  ret i32 %311
}

declare dso_local %struct.ubifs_ref_node* @kmalloc(i32, i32) #1

declare dso_local %struct.ubifs_ref_node* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(%struct.ubifs_ref_node*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @empty_log_bytes(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_log(i8*, i64, i64) #1

declare dso_local i32 @ubifs_commit_required(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_request_bg_commit(%struct.ubifs_info*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @ubifs_next_log_lnum(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i64) #1

declare dso_local i32 @ubifs_leb_map(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_write_node(%struct.ubifs_info*, %struct.ubifs_ref_node*, i32, i64, i64) #1

declare dso_local i32 @ubifs_shash_update(%struct.ubifs_info*, i32, %struct.ubifs_ref_node*, i32) #1

declare dso_local i32 @ubifs_shash_copy_state(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @ubifs_add_bud(%struct.ubifs_info*, %struct.ubifs_ref_node*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
