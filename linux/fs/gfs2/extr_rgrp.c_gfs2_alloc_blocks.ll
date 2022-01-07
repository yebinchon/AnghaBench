; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_alloc_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_alloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_12__, i64, i32, %struct.TYPE_11__, i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.TYPE_9__*, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.buffer_head*, i32 }
%struct.buffer_head = type { i64 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rbm = type { %struct.TYPE_10__* }
%struct.gfs2_dinode = type { i32, i32 }

@GFS2_BLKST_FREE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"inum=%llu error=%d, nblocks=%u, full=%d fail_pt=%d\0A\00", align 1
@GBF_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"nblocks=%u\0A\00", align 1
@GFS2_BLKST_DINODE = common dso_local global i32 0, align 4
@GFS2_BLKST_USED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %0, i64* %1, i32* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.gfs2_sbd*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.gfs2_rbm, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.gfs2_dinode*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_12__* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %12, align 8
  %22 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  store %struct.TYPE_10__* %27, %struct.TYPE_10__** %22, align 8
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @gfs2_set_alloc_start(%struct.gfs2_rbm* %14, %struct.gfs2_inode* %28, i32 %29)
  %31 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %33 = call i32 @gfs2_rbm_find(%struct.gfs2_rbm* %14, i32 %31, i32* null, %struct.gfs2_inode* %32, i32 0)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %5
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @gfs2_set_alloc_start(%struct.gfs2_rbm* %14, %struct.gfs2_inode* %39, i32 %40)
  %42 = load i32, i32* @GFS2_BLKST_FREE, align 4
  %43 = call i32 @gfs2_rbm_find(%struct.gfs2_rbm* %14, i32 %42, i32* null, %struct.gfs2_inode* null, i32 0)
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %38, %5
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %49 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %50 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @GBF_FULL, align 4
  %57 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = call i32 @test_bit(i32 %56, i32* %61)
  %63 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_warn(%struct.gfs2_sbd* %48, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %53, i32 %55, i32 %62, i32 %66)
  br label %262

68:                                               ; preds = %44
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @gfs2_alloc_extent(%struct.gfs2_rbm* %14, i32 %69, i32* %70)
  %72 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %14)
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %73, %77
  %79 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 7
  store i64 %78, i64* %81, align 8
  %82 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %83 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %82, i32 0, i32 3
  %84 = call i64 @gfs2_rs_active(%struct.TYPE_11__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %68
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gfs2_adjust_reservation(%struct.gfs2_inode* %87, %struct.gfs2_rbm* %14, i32 %89)
  br label %91

91:                                               ; preds = %86, %68
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, -1
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %135, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %16, align 8
  %104 = load i32, i32* %15, align 4
  %105 = zext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = sub nsw i64 %106, 1
  %108 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %109 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %111 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %110, %struct.buffer_head** %13)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %102
  %115 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %118, %struct.gfs2_dinode** %18, align 8
  %119 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %120 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %123 = call i32 @gfs2_trans_add_meta(i32 %121, %struct.buffer_head* %122)
  %124 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %125 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @cpu_to_be64(i64 %126)
  %128 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %18, align 8
  %129 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  %130 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %18, align 8
  %131 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %130, i32 0, i32 1
  store i32 %127, i32* %131, align 4
  %132 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %133 = call i32 @brelse(%struct.buffer_head* %132)
  br label %134

134:                                              ; preds = %114, %102
  br label %135

135:                                              ; preds = %134, %99
  %136 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp ult i32 %139, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_warn(%struct.gfs2_sbd* %144, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %146)
  br label %262

148:                                              ; preds = %135
  %149 = load i32*, i32** %9, align 8
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = sub i32 %154, %150
  store i32 %155, i32* %153, align 8
  %156 = load i32, i32* %10, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %183

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = sext i32 %167 to i64
  %170 = load i64*, i64** %11, align 8
  store i64 %169, i64* %170, align 8
  %171 = load i64*, i64** %11, align 8
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %158
  %175 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = sext i32 %178 to i64
  %181 = load i64*, i64** %11, align 8
  store i64 %180, i64* %181, align 8
  br label %182

182:                                              ; preds = %174, %158
  br label %183

183:                                              ; preds = %182, %148
  %184 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i64 0
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 0
  %194 = load %struct.buffer_head*, %struct.buffer_head** %193, align 8
  %195 = call i32 @gfs2_trans_add_meta(i32 %187, %struct.buffer_head* %194)
  %196 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %196, align 8
  %198 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i64 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load %struct.buffer_head*, %struct.buffer_head** %203, align 8
  %205 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = call i32 @gfs2_rgrp_out(%struct.TYPE_10__* %197, i64 %206)
  %208 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %209 = load i32*, i32** %9, align 8
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 0, %210
  %212 = load i32, i32* %10, align 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1, i32 0
  %216 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %208, i32 0, i32 %211, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %183
  %220 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @gfs2_trans_remove_revoke(%struct.gfs2_sbd* %220, i64 %221, i32 %223)
  br label %225

225:                                              ; preds = %219, %183
  %226 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %230 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %234 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @gfs2_quota_change(%struct.gfs2_inode* %226, i32 %228, i32 %232, i32 %236)
  %238 = load i32*, i32** %9, align 8
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = sub i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %246 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = load i64, i64* %16, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %225
  %254 = load i32, i32* @GFS2_BLKST_DINODE, align 4
  br label %257

255:                                              ; preds = %225
  %256 = load i32, i32* @GFS2_BLKST_USED, align 4
  br label %257

257:                                              ; preds = %255, %253
  %258 = phi i32 [ %254, %253 ], [ %256, %255 ]
  %259 = call i32 @trace_gfs2_block_alloc(%struct.gfs2_inode* %245, %struct.TYPE_10__* %247, i64 %248, i32 %250, i32 %258)
  %260 = load i64, i64* %16, align 8
  %261 = load i64*, i64** %8, align 8
  store i64 %260, i64* %261, align 8
  store i32 0, i32* %6, align 4
  br label %268

262:                                              ; preds = %143, %47
  %263 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %14, i32 0, i32 0
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %263, align 8
  %265 = call i32 @gfs2_rgrp_error(%struct.TYPE_10__* %264)
  %266 = load i32, i32* @EIO, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %6, align 4
  br label %268

268:                                              ; preds = %262, %257
  %269 = load i32, i32* %6, align 4
  ret i32 %269
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_12__*) #1

declare dso_local i32 @gfs2_set_alloc_start(%struct.gfs2_rbm*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_rbm_find(%struct.gfs2_rbm*, i32, i32*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i32, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @gfs2_alloc_extent(%struct.gfs2_rbm*, i32, i32*) #1

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i64 @gfs2_rs_active(%struct.TYPE_11__*) #1

declare dso_local i32 @gfs2_adjust_reservation(%struct.gfs2_inode*, %struct.gfs2_rbm*, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_rgrp_out(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i32, i32, i32) #1

declare dso_local i32 @gfs2_trans_remove_revoke(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_quota_change(%struct.gfs2_inode*, i32, i32, i32) #1

declare dso_local i32 @trace_gfs2_block_alloc(%struct.gfs2_inode*, %struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i32 @gfs2_rgrp_error(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
