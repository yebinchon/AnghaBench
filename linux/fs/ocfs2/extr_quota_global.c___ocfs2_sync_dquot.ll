; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c___ocfs2_sync_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_quota_global.c___ocfs2_sync_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_10__, i32, %struct.TYPE_8__, i32, i32, %struct.super_block* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }
%struct.super_block = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.super_block*, i32, i8*, i32, i32)* }
%struct.ocfs2_mem_dqinfo = type { i32 }
%struct.ocfs2_global_disk_dqblk = type { i32 }
%struct.TYPE_9__ = type { %struct.ocfs2_mem_dqinfo* }
%struct.TYPE_11__ = type { i64, i64, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Short read from global quota file (%u read)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@DQ_LASTSET_B = common dso_local global i64 0, align 8
@QIF_SPACE_B = common dso_local global i64 0, align 8
@QIF_INODES_B = common dso_local global i64 0, align 8
@QIF_BTIME_B = common dso_local global i64 0, align 8
@DQ_BLKS_B = common dso_local global i32 0, align 4
@QIF_ITIME_B = common dso_local global i64 0, align 8
@DQ_INODES_B = common dso_local global i32 0, align 4
@QIF_BLIMITS_B = common dso_local global i64 0, align 8
@QIF_ILIMITS_B = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Failed to lock quota info, losing quota write (type=%d, id=%u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ocfs2_sync_dquot(%struct.dquot* %0, i32 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_mem_dqinfo*, align 8
  %10 = alloca %struct.ocfs2_global_disk_dqblk, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.dquot*, %struct.dquot** %3, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 5
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %7, align 8
  %18 = load %struct.dquot*, %struct.dquot** %3, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.super_block*, %struct.super_block** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.TYPE_9__* @sb_dqinfo(%struct.super_block* %22, i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %25, align 8
  store %struct.ocfs2_mem_dqinfo* %26, %struct.ocfs2_mem_dqinfo** %9, align 8
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32 (%struct.super_block*, i32, i8*, i32, i32)*, i32 (%struct.super_block*, i32, i8*, i32, i32)** %30, align 8
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = bitcast %struct.ocfs2_global_disk_dqblk* %10 to i8*
  %35 = load %struct.dquot*, %struct.dquot** %3, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %31(%struct.super_block* %32, i32 %33, i8* %34, i32 4, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 4
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load i32, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @ML_ERROR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 (i32, i8*, i32, ...) @mlog(i32 %46, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %42
  br label %370

52:                                               ; preds = %2
  %53 = load %struct.dquot*, %struct.dquot** %3, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 1
  %55 = call i32 @spin_lock(i32* %54)
  %56 = load %struct.dquot*, %struct.dquot** %3, align 8
  %57 = getelementptr inbounds %struct.dquot, %struct.dquot* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.dquot*, %struct.dquot** %3, align 8
  %61 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %60)
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %59, %63
  store i64 %64, i64* %11, align 8
  %65 = load %struct.dquot*, %struct.dquot** %3, align 8
  %66 = getelementptr inbounds %struct.dquot, %struct.dquot* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.dquot*, %struct.dquot** %3, align 8
  %70 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %69)
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %68, %72
  store i64 %73, i64* %12, align 8
  %74 = load %struct.dquot*, %struct.dquot** %3, align 8
  %75 = getelementptr inbounds %struct.dquot, %struct.dquot* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  %78 = load %struct.dquot*, %struct.dquot** %3, align 8
  %79 = getelementptr inbounds %struct.dquot, %struct.dquot* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %14, align 8
  %82 = load %struct.dquot*, %struct.dquot** %3, align 8
  %83 = call i32 @ocfs2_global_disk2memdqb(%struct.dquot* %82, %struct.ocfs2_global_disk_dqblk* %10)
  %84 = load %struct.dquot*, %struct.dquot** %3, align 8
  %85 = getelementptr inbounds %struct.dquot, %struct.dquot* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i64 @from_kqid(i32* @init_user_ns, i32 %87)
  %89 = load %struct.dquot*, %struct.dquot** %3, align 8
  %90 = getelementptr inbounds %struct.dquot, %struct.dquot* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.dquot*, %struct.dquot** %3, align 8
  %95 = getelementptr inbounds %struct.dquot, %struct.dquot* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @trace_ocfs2_sync_dquot(i64 %88, i64 %92, i64 %93, i64 %97, i64 %98)
  %100 = load i64, i64* @DQ_LASTSET_B, align 8
  %101 = load i64, i64* @QIF_SPACE_B, align 8
  %102 = add nsw i64 %100, %101
  %103 = load %struct.dquot*, %struct.dquot** %3, align 8
  %104 = getelementptr inbounds %struct.dquot, %struct.dquot* %103, i32 0, i32 3
  %105 = call i32 @test_bit(i64 %102, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %52
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.dquot*, %struct.dquot** %3, align 8
  %110 = getelementptr inbounds %struct.dquot, %struct.dquot* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, %108
  store i64 %113, i64* %111, align 8
  br label %114

114:                                              ; preds = %107, %52
  %115 = load i64, i64* @DQ_LASTSET_B, align 8
  %116 = load i64, i64* @QIF_INODES_B, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.dquot*, %struct.dquot** %3, align 8
  %119 = getelementptr inbounds %struct.dquot, %struct.dquot* %118, i32 0, i32 3
  %120 = call i32 @test_bit(i64 %117, i32* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %114
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.dquot*, %struct.dquot** %3, align 8
  %125 = getelementptr inbounds %struct.dquot, %struct.dquot* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, %123
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %122, %114
  %130 = load %struct.dquot*, %struct.dquot** %3, align 8
  %131 = getelementptr inbounds %struct.dquot, %struct.dquot* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %180

135:                                              ; preds = %129
  %136 = load %struct.dquot*, %struct.dquot** %3, align 8
  %137 = getelementptr inbounds %struct.dquot, %struct.dquot* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.dquot*, %struct.dquot** %3, align 8
  %141 = getelementptr inbounds %struct.dquot, %struct.dquot* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %139, %143
  br i1 %144, label %145, label %180

145:                                              ; preds = %135
  %146 = load i64, i64* @DQ_LASTSET_B, align 8
  %147 = load i64, i64* @QIF_BTIME_B, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.dquot*, %struct.dquot** %3, align 8
  %150 = getelementptr inbounds %struct.dquot, %struct.dquot* %149, i32 0, i32 3
  %151 = call i32 @test_bit(i64 %148, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %179, label %153

153:                                              ; preds = %145
  %154 = load i64, i64* %14, align 8
  %155 = icmp sgt i64 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %153
  %157 = load %struct.dquot*, %struct.dquot** %3, align 8
  %158 = getelementptr inbounds %struct.dquot, %struct.dquot* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.dquot*, %struct.dquot** %3, align 8
  %164 = getelementptr inbounds %struct.dquot, %struct.dquot* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %14, align 8
  %168 = call i8* @min(i64 %166, i64 %167)
  %169 = ptrtoint i8* %168 to i64
  %170 = load %struct.dquot*, %struct.dquot** %3, align 8
  %171 = getelementptr inbounds %struct.dquot, %struct.dquot* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 3
  store i64 %169, i64* %172, align 8
  br label %178

173:                                              ; preds = %156
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.dquot*, %struct.dquot** %3, align 8
  %176 = getelementptr inbounds %struct.dquot, %struct.dquot* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 3
  store i64 %174, i64* %177, align 8
  br label %178

178:                                              ; preds = %173, %162
  br label %179

179:                                              ; preds = %178, %153, %145
  br label %188

180:                                              ; preds = %135, %129
  %181 = load %struct.dquot*, %struct.dquot** %3, align 8
  %182 = getelementptr inbounds %struct.dquot, %struct.dquot* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @DQ_BLKS_B, align 4
  %185 = load %struct.dquot*, %struct.dquot** %3, align 8
  %186 = getelementptr inbounds %struct.dquot, %struct.dquot* %185, i32 0, i32 3
  %187 = call i32 @clear_bit(i32 %184, i32* %186)
  br label %188

188:                                              ; preds = %180, %179
  %189 = load %struct.dquot*, %struct.dquot** %3, align 8
  %190 = getelementptr inbounds %struct.dquot, %struct.dquot* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %188
  %195 = load %struct.dquot*, %struct.dquot** %3, align 8
  %196 = getelementptr inbounds %struct.dquot, %struct.dquot* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.dquot*, %struct.dquot** %3, align 8
  %200 = getelementptr inbounds %struct.dquot, %struct.dquot* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 5
  %202 = load i64, i64* %201, align 8
  %203 = icmp sgt i64 %198, %202
  br i1 %203, label %204, label %239

204:                                              ; preds = %194
  %205 = load i64, i64* @DQ_LASTSET_B, align 8
  %206 = load i64, i64* @QIF_ITIME_B, align 8
  %207 = add nsw i64 %205, %206
  %208 = load %struct.dquot*, %struct.dquot** %3, align 8
  %209 = getelementptr inbounds %struct.dquot, %struct.dquot* %208, i32 0, i32 3
  %210 = call i32 @test_bit(i64 %207, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %238, label %212

212:                                              ; preds = %204
  %213 = load i64, i64* %13, align 8
  %214 = icmp sgt i64 %213, 0
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load %struct.dquot*, %struct.dquot** %3, align 8
  %217 = getelementptr inbounds %struct.dquot, %struct.dquot* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load %struct.dquot*, %struct.dquot** %3, align 8
  %223 = getelementptr inbounds %struct.dquot, %struct.dquot* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* %13, align 8
  %227 = call i8* @min(i64 %225, i64 %226)
  %228 = ptrtoint i8* %227 to i64
  %229 = load %struct.dquot*, %struct.dquot** %3, align 8
  %230 = getelementptr inbounds %struct.dquot, %struct.dquot* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  store i64 %228, i64* %231, align 8
  br label %237

232:                                              ; preds = %215
  %233 = load i64, i64* %13, align 8
  %234 = load %struct.dquot*, %struct.dquot** %3, align 8
  %235 = getelementptr inbounds %struct.dquot, %struct.dquot* %234, i32 0, i32 2
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 2
  store i64 %233, i64* %236, align 8
  br label %237

237:                                              ; preds = %232, %221
  br label %238

238:                                              ; preds = %237, %212, %204
  br label %247

239:                                              ; preds = %194, %188
  %240 = load %struct.dquot*, %struct.dquot** %3, align 8
  %241 = getelementptr inbounds %struct.dquot, %struct.dquot* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 2
  store i64 0, i64* %242, align 8
  %243 = load i32, i32* @DQ_INODES_B, align 4
  %244 = load %struct.dquot*, %struct.dquot** %3, align 8
  %245 = getelementptr inbounds %struct.dquot, %struct.dquot* %244, i32 0, i32 3
  %246 = call i32 @clear_bit(i32 %243, i32* %245)
  br label %247

247:                                              ; preds = %239, %238
  %248 = load i64, i64* @DQ_LASTSET_B, align 8
  %249 = load i64, i64* @QIF_SPACE_B, align 8
  %250 = add nsw i64 %248, %249
  %251 = load %struct.dquot*, %struct.dquot** %3, align 8
  %252 = getelementptr inbounds %struct.dquot, %struct.dquot* %251, i32 0, i32 3
  %253 = call i32 @__clear_bit(i64 %250, i32* %252)
  %254 = load i64, i64* @DQ_LASTSET_B, align 8
  %255 = load i64, i64* @QIF_INODES_B, align 8
  %256 = add nsw i64 %254, %255
  %257 = load %struct.dquot*, %struct.dquot** %3, align 8
  %258 = getelementptr inbounds %struct.dquot, %struct.dquot* %257, i32 0, i32 3
  %259 = call i32 @__clear_bit(i64 %256, i32* %258)
  %260 = load i64, i64* @DQ_LASTSET_B, align 8
  %261 = load i64, i64* @QIF_BLIMITS_B, align 8
  %262 = add nsw i64 %260, %261
  %263 = load %struct.dquot*, %struct.dquot** %3, align 8
  %264 = getelementptr inbounds %struct.dquot, %struct.dquot* %263, i32 0, i32 3
  %265 = call i32 @__clear_bit(i64 %262, i32* %264)
  %266 = load i64, i64* @DQ_LASTSET_B, align 8
  %267 = load i64, i64* @QIF_ILIMITS_B, align 8
  %268 = add nsw i64 %266, %267
  %269 = load %struct.dquot*, %struct.dquot** %3, align 8
  %270 = getelementptr inbounds %struct.dquot, %struct.dquot* %269, i32 0, i32 3
  %271 = call i32 @__clear_bit(i64 %268, i32* %270)
  %272 = load i64, i64* @DQ_LASTSET_B, align 8
  %273 = load i64, i64* @QIF_BTIME_B, align 8
  %274 = add nsw i64 %272, %273
  %275 = load %struct.dquot*, %struct.dquot** %3, align 8
  %276 = getelementptr inbounds %struct.dquot, %struct.dquot* %275, i32 0, i32 3
  %277 = call i32 @__clear_bit(i64 %274, i32* %276)
  %278 = load i64, i64* @DQ_LASTSET_B, align 8
  %279 = load i64, i64* @QIF_ITIME_B, align 8
  %280 = add nsw i64 %278, %279
  %281 = load %struct.dquot*, %struct.dquot** %3, align 8
  %282 = getelementptr inbounds %struct.dquot, %struct.dquot* %281, i32 0, i32 3
  %283 = call i32 @__clear_bit(i64 %280, i32* %282)
  %284 = load %struct.dquot*, %struct.dquot** %3, align 8
  %285 = getelementptr inbounds %struct.dquot, %struct.dquot* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.dquot*, %struct.dquot** %3, align 8
  %289 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %288)
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  %291 = load %struct.dquot*, %struct.dquot** %3, align 8
  %292 = getelementptr inbounds %struct.dquot, %struct.dquot* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.dquot*, %struct.dquot** %3, align 8
  %296 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %295)
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 1
  store i64 %294, i64* %297, align 8
  %298 = load %struct.dquot*, %struct.dquot** %3, align 8
  %299 = getelementptr inbounds %struct.dquot, %struct.dquot* %298, i32 0, i32 1
  %300 = call i32 @spin_unlock(i32* %299)
  %301 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %302 = load i32, i32* %4, align 4
  %303 = call i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo* %301, i32 %302)
  store i32 %303, i32* %5, align 4
  %304 = load i32, i32* %5, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %319

306:                                              ; preds = %247
  %307 = load i32, i32* @ML_ERROR, align 4
  %308 = load %struct.dquot*, %struct.dquot** %3, align 8
  %309 = getelementptr inbounds %struct.dquot, %struct.dquot* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.dquot*, %struct.dquot** %3, align 8
  %313 = getelementptr inbounds %struct.dquot, %struct.dquot* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i64 @from_kqid(i32* @init_user_ns, i32 %315)
  %317 = trunc i64 %316 to i32
  %318 = call i32 (i32, i8*, i32, ...) @mlog(i32 %307, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %311, i32 %317)
  br label %370

319:                                              ; preds = %247
  %320 = load i32, i32* %4, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load %struct.dquot*, %struct.dquot** %3, align 8
  %324 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %323)
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, -1
  store i32 %327, i32* %325, align 8
  br label %328

328:                                              ; preds = %322, %319
  %329 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %330 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %329, i32 0, i32 0
  %331 = load %struct.dquot*, %struct.dquot** %3, align 8
  %332 = call i32 @qtree_write_dquot(i32* %330, %struct.dquot* %331)
  store i32 %332, i32* %5, align 4
  %333 = load i32, i32* %5, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %328
  br label %366

336:                                              ; preds = %328
  %337 = load i32, i32* %4, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %365

339:                                              ; preds = %336
  %340 = load %struct.dquot*, %struct.dquot** %3, align 8
  %341 = call %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot* %340)
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %365, label %345

345:                                              ; preds = %339
  %346 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %347 = getelementptr inbounds %struct.ocfs2_mem_dqinfo, %struct.ocfs2_mem_dqinfo* %346, i32 0, i32 0
  %348 = load %struct.dquot*, %struct.dquot** %3, align 8
  %349 = call i32 @qtree_release_dquot(i32* %347, %struct.dquot* %348)
  store i32 %349, i32* %5, align 4
  %350 = load %struct.super_block*, %struct.super_block** %7, align 8
  %351 = load i32, i32* %8, align 4
  %352 = call %struct.TYPE_9__* @sb_dqinfo(%struct.super_block* %350, i32 %351)
  %353 = call i64 @info_dirty(%struct.TYPE_9__* %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %364

355:                                              ; preds = %345
  %356 = load %struct.super_block*, %struct.super_block** %7, align 8
  %357 = load i32, i32* %8, align 4
  %358 = call i32 @__ocfs2_global_write_info(%struct.super_block* %356, i32 %357)
  store i32 %358, i32* %6, align 4
  %359 = load i32, i32* %5, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %363, label %361

361:                                              ; preds = %355
  %362 = load i32, i32* %6, align 4
  store i32 %362, i32* %5, align 4
  br label %363

363:                                              ; preds = %361, %355
  br label %364

364:                                              ; preds = %363, %345
  br label %365

365:                                              ; preds = %364, %339, %336
  br label %366

366:                                              ; preds = %365, %335
  %367 = load %struct.ocfs2_mem_dqinfo*, %struct.ocfs2_mem_dqinfo** %9, align 8
  %368 = load i32, i32* %4, align 4
  %369 = call i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo* %367, i32 %368)
  br label %370

370:                                              ; preds = %366, %306, %51
  %371 = load i32, i32* %5, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = load i32, i32* %5, align 4
  %375 = call i32 @mlog_errno(i32 %374)
  br label %376

376:                                              ; preds = %373, %370
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

declare dso_local %struct.TYPE_9__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @OCFS2_DQUOT(%struct.dquot*) #1

declare dso_local i32 @ocfs2_global_disk2memdqb(%struct.dquot*, %struct.ocfs2_global_disk_dqblk*) #1

declare dso_local i32 @trace_ocfs2_sync_dquot(i64, i64, i64, i64, i64) #1

declare dso_local i64 @from_kqid(i32*, i32) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i8* @min(i64, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_qinfo_lock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @qtree_write_dquot(i32*, %struct.dquot*) #1

declare dso_local i32 @qtree_release_dquot(i32*, %struct.dquot*) #1

declare dso_local i64 @info_dirty(%struct.TYPE_9__*) #1

declare dso_local i32 @__ocfs2_global_write_info(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_qinfo_unlock(%struct.ocfs2_mem_dqinfo*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
