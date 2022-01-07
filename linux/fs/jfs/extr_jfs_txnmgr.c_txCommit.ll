; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txCommit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.commit = type { i32, %struct.inode**, %struct.lrd, %struct.jfs_log*, i32, %struct.super_block* }
%struct.lrd = type { i64, i32, i64, i32 }
%struct.jfs_log = type { i32 }
%struct.tblock = type { i32, i32, %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.jfs_inode_info = type { i64, i64, i32, i64, i64 }
%struct.TYPE_9__ = type { %struct.jfs_log* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"txCommit, tid = %d, flag = %d\00", align 1
@EROFS = common dso_local global i32 0, align 4
@COMMIT_FORCE = common dso_local global i32 0, align 4
@COMMIT_SYNC = common dso_local global i32 0, align 4
@COMMIT_LAZY = common dso_local global i32 0, align 4
@COMMIT_Dirty = common dso_local global i32 0, align 4
@COMMIT_DELETE = common dso_local global i32 0, align 4
@I_SYNC = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@LOG_COMMIT = common dso_local global i32 0, align 4
@tblkGC_LAZY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"txCommit: tid = %d, returning %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @txCommit(i32 %0, i32 %1, %struct.inode** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit, align 8
  %11 = alloca %struct.jfs_log*, align 8
  %12 = alloca %struct.tblock*, align 8
  %13 = alloca %struct.lrd*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.jfs_inode_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.super_block*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.inode** %2, %struct.inode*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load %struct.inode**, %struct.inode*** %7, align 8
  %24 = getelementptr inbounds %struct.inode*, %struct.inode** %23, i64 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  %26 = call i64 @isReadOnly(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EROFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %341

31:                                               ; preds = %4
  %32 = load %struct.inode**, %struct.inode*** %7, align 8
  %33 = getelementptr inbounds %struct.inode*, %struct.inode** %32, i64 0
  %34 = load %struct.inode*, %struct.inode** %33, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load %struct.super_block*, %struct.super_block** %35, align 8
  %37 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 5
  store %struct.super_block* %36, %struct.super_block** %37, align 8
  store %struct.super_block* %36, %struct.super_block** %19, align 8
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 4
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load %struct.super_block*, %struct.super_block** %19, align 8
  %44 = call i32 @txBegin(%struct.super_block* %43, i32 0)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32, i32* %5, align 4
  %47 = call %struct.tblock* @tid_to_tblock(i32 %46)
  store %struct.tblock* %47, %struct.tblock** %12, align 8
  %48 = load %struct.super_block*, %struct.super_block** %19, align 8
  %49 = call %struct.TYPE_9__* @JFS_SBI(%struct.super_block* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.jfs_log*, %struct.jfs_log** %50, align 8
  store %struct.jfs_log* %51, %struct.jfs_log** %11, align 8
  %52 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 3
  store %struct.jfs_log* %52, %struct.jfs_log** %53, align 8
  %54 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 2
  store %struct.lrd* %54, %struct.lrd** %13, align 8
  %55 = load %struct.tblock*, %struct.tblock** %12, align 8
  %56 = getelementptr inbounds %struct.tblock, %struct.tblock* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.lrd*, %struct.lrd** %13, align 8
  %60 = getelementptr inbounds %struct.lrd, %struct.lrd* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.lrd*, %struct.lrd** %13, align 8
  %62 = getelementptr inbounds %struct.lrd, %struct.lrd* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.tblock*, %struct.tblock** %12, align 8
  %65 = getelementptr inbounds %struct.tblock, %struct.tblock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @COMMIT_FORCE, align 4
  %70 = load i32, i32* @COMMIT_SYNC, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %45
  %75 = load i32, i32* @COMMIT_LAZY, align 4
  %76 = load %struct.tblock*, %struct.tblock** %12, align 8
  %77 = getelementptr inbounds %struct.tblock, %struct.tblock* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %74, %45
  %81 = load %struct.inode**, %struct.inode*** %7, align 8
  %82 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  store %struct.inode** %81, %struct.inode*** %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  store i32 %83, i32* %84, align 8
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %200, %80
  %86 = load i32, i32* %16, align 4
  %87 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %92 = load %struct.inode**, %struct.inode*** %91, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.inode*, %struct.inode** %92, i64 %94
  %96 = load %struct.inode*, %struct.inode** %95, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %18, align 8
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %17, align 4
  br label %101

101:                                              ; preds = %140, %90
  %102 = load i32, i32* %17, align 4
  %103 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %106, label %143

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %108 = load %struct.inode**, %struct.inode*** %107, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.inode*, %struct.inode** %108, i64 %110
  %112 = load %struct.inode*, %struct.inode** %111, align 8
  store %struct.inode* %112, %struct.inode** %14, align 8
  %113 = load %struct.inode*, %struct.inode** %14, align 8
  %114 = getelementptr inbounds %struct.inode, %struct.inode* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %18, align 8
  %117 = icmp sgt i64 %115, %116
  br i1 %117, label %118, label %139

118:                                              ; preds = %106
  %119 = load %struct.inode*, %struct.inode** %14, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %18, align 8
  %122 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %123 = load %struct.inode**, %struct.inode*** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.inode*, %struct.inode** %123, i64 %125
  %127 = load %struct.inode*, %struct.inode** %126, align 8
  %128 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %129 = load %struct.inode**, %struct.inode*** %128, align 8
  %130 = load i32, i32* %17, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.inode*, %struct.inode** %129, i64 %131
  store %struct.inode* %127, %struct.inode** %132, align 8
  %133 = load %struct.inode*, %struct.inode** %14, align 8
  %134 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %135 = load %struct.inode**, %struct.inode*** %134, align 8
  %136 = load i32, i32* %16, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.inode*, %struct.inode** %135, i64 %137
  store %struct.inode* %133, %struct.inode** %138, align 8
  br label %139

139:                                              ; preds = %118, %106
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %101

143:                                              ; preds = %101
  %144 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %145 = load %struct.inode**, %struct.inode*** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.inode*, %struct.inode** %145, i64 %147
  %149 = load %struct.inode*, %struct.inode** %148, align 8
  store %struct.inode* %149, %struct.inode** %14, align 8
  %150 = load %struct.inode*, %struct.inode** %14, align 8
  %151 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %150)
  store %struct.jfs_inode_info* %151, %struct.jfs_inode_info** %15, align 8
  %152 = load i32, i32* @COMMIT_Dirty, align 4
  %153 = load %struct.inode*, %struct.inode** %14, align 8
  %154 = call i32 @clear_cflag(i32 %152, %struct.inode* %153)
  %155 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %156 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %193

159:                                              ; preds = %143
  %160 = load %struct.tblock*, %struct.tblock** %12, align 8
  %161 = getelementptr inbounds %struct.tblock, %struct.tblock* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %164 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = call %struct.TYPE_8__* @lid_to_tlock(i64 %165)
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  store i64 %162, i64* %167, align 8
  %168 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %169 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.tblock*, %struct.tblock** %12, align 8
  %172 = getelementptr inbounds %struct.tblock, %struct.tblock* %171, i32 0, i32 4
  store i64 %170, i64* %172, align 8
  %173 = load %struct.tblock*, %struct.tblock** %12, align 8
  %174 = getelementptr inbounds %struct.tblock, %struct.tblock* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %159
  %178 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %179 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.tblock*, %struct.tblock** %12, align 8
  %182 = getelementptr inbounds %struct.tblock, %struct.tblock* %181, i32 0, i32 3
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %177, %159
  %184 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %185 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %184, i32 0, i32 3
  store i64 0, i64* %185, align 8
  %186 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %187 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %186, i32 0, i32 4
  store i64 0, i64* %187, align 8
  %188 = call i32 (...) @TXN_LOCK()
  %189 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %190 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %189, i32 0, i32 2
  %191 = call i32 @list_del_init(i32* %190)
  %192 = call i32 (...) @TXN_UNLOCK()
  br label %193

193:                                              ; preds = %183, %143
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.inode*, %struct.inode** %14, align 8
  %196 = call i32 @diWrite(i32 %194, %struct.inode* %195)
  store i32 %196, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %334

199:                                              ; preds = %193
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %16, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %16, align 4
  br label %85

203:                                              ; preds = %85
  %204 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %205 = load %struct.tblock*, %struct.tblock** %12, align 8
  %206 = call i32 @txLog(%struct.jfs_log* %204, %struct.tblock* %205, %struct.commit* %10)
  store i32 %206, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %341

209:                                              ; preds = %203
  %210 = load %struct.tblock*, %struct.tblock** %12, align 8
  %211 = getelementptr inbounds %struct.tblock, %struct.tblock* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @COMMIT_DELETE, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %239

216:                                              ; preds = %209
  %217 = load %struct.tblock*, %struct.tblock** %12, align 8
  %218 = getelementptr inbounds %struct.tblock, %struct.tblock* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = call i32 @ihold(%struct.TYPE_7__* %220)
  %222 = load %struct.tblock*, %struct.tblock** %12, align 8
  %223 = getelementptr inbounds %struct.tblock, %struct.tblock* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @I_SYNC, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %216
  %232 = load i32, i32* @COMMIT_LAZY, align 4
  %233 = xor i32 %232, -1
  %234 = load %struct.tblock*, %struct.tblock** %12, align 8
  %235 = getelementptr inbounds %struct.tblock, %struct.tblock* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = and i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %231, %216
  br label %239

239:                                              ; preds = %238, %209
  %240 = load %struct.tblock*, %struct.tblock** %12, align 8
  %241 = getelementptr inbounds %struct.tblock, %struct.tblock* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @COMMIT_DELETE, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %239
  %247 = load %struct.tblock*, %struct.tblock** %12, align 8
  %248 = getelementptr inbounds %struct.tblock, %struct.tblock* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %246
  %255 = load i32, i32* @COMMIT_Nolink, align 4
  %256 = load %struct.tblock*, %struct.tblock** %12, align 8
  %257 = getelementptr inbounds %struct.tblock, %struct.tblock* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %258, align 8
  %260 = call i32 @test_cflag(i32 %255, %struct.TYPE_7__* %259)
  %261 = icmp ne i32 %260, 0
  %262 = xor i1 %261, true
  br label %263

263:                                              ; preds = %254, %246
  %264 = phi i1 [ false, %246 ], [ %262, %254 ]
  br label %265

265:                                              ; preds = %263, %239
  %266 = phi i1 [ true, %239 ], [ %264, %263 ]
  %267 = zext i1 %266 to i32
  %268 = call i32 @ASSERT(i32 %267)
  %269 = load i32, i32* @LOG_COMMIT, align 4
  %270 = call i32 @cpu_to_le16(i32 %269)
  %271 = load %struct.lrd*, %struct.lrd** %13, align 8
  %272 = getelementptr inbounds %struct.lrd, %struct.lrd* %271, i32 0, i32 1
  store i32 %270, i32* %272, align 8
  %273 = load %struct.lrd*, %struct.lrd** %13, align 8
  %274 = getelementptr inbounds %struct.lrd, %struct.lrd* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  %275 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %276 = load %struct.tblock*, %struct.tblock** %12, align 8
  %277 = load %struct.lrd*, %struct.lrd** %13, align 8
  %278 = call i32 @lmLog(%struct.jfs_log* %275, %struct.tblock* %276, %struct.lrd* %277, i32* null)
  %279 = load %struct.jfs_log*, %struct.jfs_log** %11, align 8
  %280 = load %struct.tblock*, %struct.tblock** %12, align 8
  %281 = call i32 @lmGroupCommit(%struct.jfs_log* %279, %struct.tblock* %280)
  %282 = load i32, i32* %8, align 4
  %283 = load i32, i32* @COMMIT_FORCE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %265
  %287 = load %struct.tblock*, %struct.tblock** %12, align 8
  %288 = call i32 @txForce(%struct.tblock* %287)
  br label %289

289:                                              ; preds = %286, %265
  %290 = load %struct.tblock*, %struct.tblock** %12, align 8
  %291 = getelementptr inbounds %struct.tblock, %struct.tblock* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @COMMIT_FORCE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load %struct.tblock*, %struct.tblock** %12, align 8
  %298 = call i32 @txUpdateMap(%struct.tblock* %297)
  br label %299

299:                                              ; preds = %296, %289
  %300 = load %struct.tblock*, %struct.tblock** %12, align 8
  %301 = call i32 @txRelease(%struct.tblock* %300)
  %302 = load %struct.tblock*, %struct.tblock** %12, align 8
  %303 = getelementptr inbounds %struct.tblock, %struct.tblock* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @tblkGC_LAZY, align 4
  %306 = and i32 %304, %305
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %299
  %309 = load %struct.tblock*, %struct.tblock** %12, align 8
  %310 = call i32 @txUnlock(%struct.tblock* %309)
  br label %311

311:                                              ; preds = %308, %299
  store i32 0, i32* %16, align 4
  br label %312

312:                                              ; preds = %330, %311
  %313 = load i32, i32* %16, align 4
  %314 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %313, %315
  br i1 %316, label %317, label %333

317:                                              ; preds = %312
  %318 = getelementptr inbounds %struct.commit, %struct.commit* %10, i32 0, i32 1
  %319 = load %struct.inode**, %struct.inode*** %318, align 8
  %320 = load i32, i32* %16, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.inode*, %struct.inode** %319, i64 %321
  %323 = load %struct.inode*, %struct.inode** %322, align 8
  store %struct.inode* %323, %struct.inode** %14, align 8
  %324 = load %struct.inode*, %struct.inode** %14, align 8
  %325 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %324)
  store %struct.jfs_inode_info* %325, %struct.jfs_inode_info** %15, align 8
  %326 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %327 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %326, i32 0, i32 1
  store i64 0, i64* %327, align 8
  %328 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %15, align 8
  %329 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %328, i32 0, i32 0
  store i64 0, i64* %329, align 8
  br label %330

330:                                              ; preds = %317
  %331 = load i32, i32* %16, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %16, align 4
  br label %312

333:                                              ; preds = %312
  br label %334

334:                                              ; preds = %333, %198
  %335 = load i32, i32* %9, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %334
  %338 = load i32, i32* %5, align 4
  %339 = call i32 @txAbort(i32 %338, i32 1)
  br label %340

340:                                              ; preds = %337, %334
  br label %341

341:                                              ; preds = %340, %208, %28
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @jfs_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %342, i32 %343)
  %345 = load i32, i32* %9, align 4
  ret i32 %345
}

declare dso_local i32 @jfs_info(i8*, i32, i32) #1

declare dso_local i64 @isReadOnly(%struct.inode*) #1

declare dso_local i32 @txBegin(%struct.super_block*, i32) #1

declare dso_local %struct.tblock* @tid_to_tblock(i32) #1

declare dso_local %struct.TYPE_9__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local %struct.TYPE_8__* @lid_to_tlock(i64) #1

declare dso_local i32 @TXN_LOCK(...) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @TXN_UNLOCK(...) #1

declare dso_local i32 @diWrite(i32, %struct.inode*) #1

declare dso_local i32 @txLog(%struct.jfs_log*, %struct.tblock*, %struct.commit*) #1

declare dso_local i32 @ihold(%struct.TYPE_7__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @test_cflag(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @lmLog(%struct.jfs_log*, %struct.tblock*, %struct.lrd*, i32*) #1

declare dso_local i32 @lmGroupCommit(%struct.jfs_log*, %struct.tblock*) #1

declare dso_local i32 @txForce(%struct.tblock*) #1

declare dso_local i32 @txUpdateMap(%struct.tblock*) #1

declare dso_local i32 @txRelease(%struct.tblock*) #1

declare dso_local i32 @txUnlock(%struct.tblock*) #1

declare dso_local i32 @txAbort(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
