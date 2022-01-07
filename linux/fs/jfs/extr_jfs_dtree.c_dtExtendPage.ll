; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtExtendPage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtExtendPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dtsplit = type { i32, i32, i32, %struct.pxdlist*, %struct.metapage* }
%struct.pxdlist = type { i64, i32* }
%struct.metapage = type { i32 }
%struct.btstack = type { i32 }
%struct.TYPE_11__ = type { %struct.dtslot*, %struct.TYPE_10__ }
%struct.dtslot = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.btframe = type { i32 }
%struct.dt_lock = type { i64, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.tlock = type { i32 }
%struct.pxd_lock = type { i32, i32, i32 }
%struct.ldtentry = type { i32 }
%struct.TYPE_12__ = type { i32 }

@PSIZE = common dso_local global i32 0, align 4
@tlckEXTEND = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@tlckRELOCATE = common dso_local global i32 0, align 4
@mlckFREEPXD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dtExtendPage: ip:0x%p smp:0x%p sp:0x%p\00", align 1
@L2DTSLOTSIZE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.dtsplit*, %struct.btstack*)* @dtExtendPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtExtendPage(i32 %0, %struct.inode* %1, %struct.dtsplit* %2, %struct.btstack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dtsplit*, align 8
  %9 = alloca %struct.btstack*, align 8
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.pxdlist*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.dtslot*, align 8
  %29 = alloca %struct.btframe*, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.dt_lock*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.tlock*, align 8
  %35 = alloca %struct.pxd_lock*, align 8
  %36 = alloca %struct.lv*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct.ldtentry*, align 8
  %39 = alloca i64*, align 8
  %40 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dtsplit* %2, %struct.dtsplit** %8, align 8
  store %struct.btstack* %3, %struct.btstack** %9, align 8
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load %struct.super_block*, %struct.super_block** %42, align 8
  store %struct.super_block* %43, %struct.super_block** %10, align 8
  %44 = load %struct.dtsplit*, %struct.dtsplit** %8, align 8
  %45 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %44, i32 0, i32 4
  %46 = load %struct.metapage*, %struct.metapage** %45, align 8
  store %struct.metapage* %46, %struct.metapage** %12, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = load %struct.metapage*, %struct.metapage** %12, align 8
  %49 = call %struct.TYPE_11__* @DT_PAGE(%struct.inode* %47, %struct.metapage* %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %15, align 8
  %50 = load %struct.btstack*, %struct.btstack** %9, align 8
  %51 = call %struct.btframe* @BT_POP(%struct.btstack* %50)
  store %struct.btframe* %51, %struct.btframe** %29, align 8
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.btframe*, %struct.btframe** %29, align 8
  %54 = getelementptr inbounds %struct.btframe, %struct.btframe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.metapage*, %struct.metapage** %13, align 8
  %57 = load i32, i32* @PSIZE, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @DT_GETPAGE(%struct.inode* %52, i32 %55, %struct.metapage* %56, i32 %57, %struct.TYPE_11__* %58, i32 %59)
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %4
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %455

65:                                               ; preds = %4
  %66 = load %struct.dtsplit*, %struct.dtsplit** %8, align 8
  %67 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %66, i32 0, i32 3
  %68 = load %struct.pxdlist*, %struct.pxdlist** %67, align 8
  store %struct.pxdlist* %68, %struct.pxdlist** %17, align 8
  %69 = load %struct.pxdlist*, %struct.pxdlist** %17, align 8
  %70 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.pxdlist*, %struct.pxdlist** %17, align 8
  %73 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32* %75, i32** %18, align 8
  %76 = load %struct.pxdlist*, %struct.pxdlist** %17, align 8
  %77 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i64 @addressPXD(i32* %80)
  store i64 %81, i64* %32, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 5
  store i32* %84, i32** %19, align 8
  %85 = load i32*, i32** %19, align 8
  %86 = call i64 @addressPXD(i32* %85)
  store i64 %86, i64* %33, align 8
  %87 = load i64, i64* %32, align 8
  %88 = load i64, i64* %33, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %65
  %91 = load i32, i32* @tlckEXTEND, align 4
  store i32 %91, i32* %37, align 4
  br label %158

92:                                               ; preds = %65
  %93 = load i32, i32* @tlckNEW, align 4
  store i32 %93, i32* %37, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.inode*, %struct.inode** %7, align 8
  %96 = load i32, i32* @tlckDTREE, align 4
  %97 = load i32, i32* @tlckRELOCATE, align 4
  %98 = or i32 %96, %97
  %99 = call %struct.tlock* @txMaplock(i32 %94, %struct.inode* %95, i32 %98)
  store %struct.tlock* %99, %struct.tlock** %34, align 8
  %100 = load %struct.tlock*, %struct.tlock** %34, align 8
  %101 = getelementptr inbounds %struct.tlock, %struct.tlock* %100, i32 0, i32 0
  %102 = bitcast i32* %101 to %struct.pxd_lock*
  store %struct.pxd_lock* %102, %struct.pxd_lock** %35, align 8
  %103 = load i32, i32* @mlckFREEPXD, align 4
  %104 = load %struct.pxd_lock*, %struct.pxd_lock** %35, align 8
  %105 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.pxd_lock*, %struct.pxd_lock** %35, align 8
  %111 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.pxd_lock*, %struct.pxd_lock** %35, align 8
  %113 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i64 @DO_INDEX(%struct.inode* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %157

117:                                              ; preds = %92
  store %struct.metapage* null, %struct.metapage** %14, align 8
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %119 = call i64* @DT_GETSTBL(%struct.TYPE_11__* %118)
  store i64* %119, i64** %39, align 8
  store i32 0, i32* %30, align 4
  br label %120

120:                                              ; preds = %147, %117
  %121 = load i32, i32* %30, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %120
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.dtslot*, %struct.dtslot** %129, align 8
  %131 = load i64*, i64** %39, align 8
  %132 = load i32, i32* %30, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %130, i64 %135
  %137 = bitcast %struct.dtslot* %136 to %struct.ldtentry*
  store %struct.ldtentry* %137, %struct.ldtentry** %38, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.inode*, %struct.inode** %7, align 8
  %140 = load %struct.ldtentry*, %struct.ldtentry** %38, align 8
  %141 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = load i64, i64* %32, align 8
  %145 = load i32, i32* %30, align 4
  %146 = call i32 @modify_index(i32 %138, %struct.inode* %139, i32 %143, i64 %144, i32 %145, %struct.metapage** %14, i64* %40)
  br label %147

147:                                              ; preds = %127
  %148 = load i32, i32* %30, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %30, align 4
  br label %120

150:                                              ; preds = %120
  %151 = load %struct.metapage*, %struct.metapage** %14, align 8
  %152 = icmp ne %struct.metapage* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.metapage*, %struct.metapage** %14, align 8
  %155 = call i32 @release_metapage(%struct.metapage* %154)
  br label %156

156:                                              ; preds = %153, %150
  br label %157

157:                                              ; preds = %156, %92
  br label %158

158:                                              ; preds = %157, %90
  %159 = load i32*, i32** %18, align 8
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  store i32 %160, i32* %163, align 4
  %164 = load %struct.inode*, %struct.inode** %7, align 8
  %165 = load %struct.metapage*, %struct.metapage** %12, align 8
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %167 = call i32 @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.inode* %164, %struct.metapage* %165, %struct.TYPE_11__* %166)
  %168 = load %struct.metapage*, %struct.metapage** %12, align 8
  %169 = load %struct.inode*, %struct.inode** %7, align 8
  %170 = call i32 @BT_MARK_DIRTY(%struct.metapage* %168, %struct.inode* %169)
  %171 = load i32, i32* %6, align 4
  %172 = load %struct.inode*, %struct.inode** %7, align 8
  %173 = load %struct.metapage*, %struct.metapage** %12, align 8
  %174 = load i32, i32* @tlckDTREE, align 4
  %175 = load i32, i32* %37, align 4
  %176 = or i32 %174, %175
  %177 = call %struct.tlock* @txLock(i32 %171, %struct.inode* %172, %struct.metapage* %173, i32 %176)
  store %struct.tlock* %177, %struct.tlock** %34, align 8
  %178 = load %struct.tlock*, %struct.tlock** %34, align 8
  %179 = getelementptr inbounds %struct.tlock, %struct.tlock* %178, i32 0, i32 0
  %180 = bitcast i32* %179 to %struct.dt_lock*
  store %struct.dt_lock* %180, %struct.dt_lock** %31, align 8
  %181 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %182 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %181, i32 0, i32 1
  %183 = load %struct.lv*, %struct.lv** %182, align 8
  %184 = getelementptr inbounds %struct.lv, %struct.lv* %183, i64 0
  store %struct.lv* %184, %struct.lv** %36, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = call i32 @lengthPXD(i32* %185)
  store i32 %186, i32* %20, align 4
  %187 = load i32, i32* %20, align 4
  %188 = load %struct.super_block*, %struct.super_block** %10, align 8
  %189 = call %struct.TYPE_12__* @JFS_SBI(%struct.super_block* %188)
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %187, %191
  store i32 %192, i32* %21, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %24, align 4
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, 31
  %202 = load i32, i32* @L2DTSLOTSIZE, align 4
  %203 = ashr i32 %201, %202
  store i32 %203, i32* %25, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* @L2DTSLOTSIZE, align 4
  %210 = ashr i32 %208, %209
  store i32 %210, i32* %30, align 4
  %211 = load i32, i32* %30, align 4
  %212 = add nsw i32 %211, 31
  %213 = load i32, i32* @L2DTSLOTSIZE, align 4
  %214 = ashr i32 %212, %213
  store i32 %214, i32* %23, align 4
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load %struct.dtslot*, %struct.dtslot** %216, align 8
  %218 = load i32, i32* %22, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %217, i64 %219
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load %struct.dtslot*, %struct.dtslot** %222, align 8
  %224 = load i32, i32* %24, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %223, i64 %225
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @memcpy(%struct.dtslot* %220, %struct.dtslot* %226, i32 %230)
  %232 = load i32, i32* %37, align 4
  %233 = load i32, i32* @tlckEXTEND, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %252

235:                                              ; preds = %158
  %236 = load %struct.lv*, %struct.lv** %36, align 8
  %237 = getelementptr inbounds %struct.lv, %struct.lv* %236, i32 0, i32 0
  store i32 0, i32* %237, align 4
  %238 = load %struct.lv*, %struct.lv** %36, align 8
  %239 = getelementptr inbounds %struct.lv, %struct.lv* %238, i32 0, i32 1
  store i32 1, i32* %239, align 4
  %240 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %241 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = add i64 %242, 1
  store i64 %243, i64* %241, align 8
  %244 = load %struct.lv*, %struct.lv** %36, align 8
  %245 = getelementptr inbounds %struct.lv, %struct.lv* %244, i32 1
  store %struct.lv* %245, %struct.lv** %36, align 8
  %246 = load i32, i32* %22, align 4
  %247 = load %struct.lv*, %struct.lv** %36, align 8
  %248 = getelementptr inbounds %struct.lv, %struct.lv* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %23, align 4
  %250 = load %struct.lv*, %struct.lv** %36, align 8
  %251 = getelementptr inbounds %struct.lv, %struct.lv* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %263

252:                                              ; preds = %158
  %253 = load %struct.lv*, %struct.lv** %36, align 8
  %254 = getelementptr inbounds %struct.lv, %struct.lv* %253, i32 0, i32 0
  store i32 0, i32* %254, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* %23, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.lv*, %struct.lv** %36, align 8
  %262 = getelementptr inbounds %struct.lv, %struct.lv* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  br label %263

263:                                              ; preds = %252, %235
  %264 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %265 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %265, align 8
  %268 = load i32, i32* %30, align 4
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 2
  store i32 %268, i32* %271, align 8
  %272 = load i32, i32* %22, align 4
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  store i32 %272, i32* %275, align 4
  %276 = load i32, i32* %24, align 4
  store i32 %276, i32* %26, align 4
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 0
  %279 = load %struct.dtslot*, %struct.dtslot** %278, align 8
  %280 = load i32, i32* %26, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %279, i64 %281
  store %struct.dtslot* %282, %struct.dtslot** %28, align 8
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %27, align 4
  store i32 0, i32* %30, align 4
  br label %287

287:                                              ; preds = %296, %263
  %288 = load i32, i32* %30, align 4
  %289 = load i32, i32* %25, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %287
  %292 = load i32, i32* %27, align 4
  %293 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %294 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* %26, align 4
  store i32 %295, i32* %27, align 4
  br label %296

296:                                              ; preds = %291
  %297 = load i32, i32* %30, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %30, align 4
  %299 = load i32, i32* %26, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %26, align 4
  %301 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %302 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %301, i32 1
  store %struct.dtslot* %302, %struct.dtslot** %28, align 8
  br label %287

303:                                              ; preds = %287
  %304 = load i32, i32* %27, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 3
  store i32 %304, i32* %307, align 4
  %308 = load i32, i32* %25, align 4
  %309 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, %308
  store i32 %313, i32* %311, align 8
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %23, align 4
  %316 = add nsw i32 %314, %315
  store i32 %316, i32* %30, align 4
  store i32 %316, i32* %26, align 4
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = load %struct.dtslot*, %struct.dtslot** %318, align 8
  %320 = load i32, i32* %26, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %319, i64 %321
  store %struct.dtslot* %322, %struct.dtslot** %28, align 8
  %323 = load i32, i32* %26, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %26, align 4
  br label %325

325:                                              ; preds = %336, %303
  %326 = load i32, i32* %26, align 4
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %328 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = icmp slt i32 %326, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %325
  %333 = load i32, i32* %26, align 4
  %334 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %335 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %334, i32 0, i32 0
  store i32 %333, i32* %335, align 4
  br label %336

336:                                              ; preds = %332
  %337 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %338 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %337, i32 1
  store %struct.dtslot* %338, %struct.dtslot** %28, align 8
  %339 = load i32, i32* %26, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %26, align 4
  br label %325

341:                                              ; preds = %325
  %342 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %343 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %342, i32 0, i32 0
  store i32 -1, i32* %343, align 4
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 4
  store i32 %347, i32* %26, align 4
  %348 = load i32, i32* %26, align 4
  %349 = icmp eq i32 %348, -1
  br i1 %349, label %350, label %355

350:                                              ; preds = %341
  %351 = load i32, i32* %30, align 4
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 3
  store i32 %351, i32* %354, align 4
  br label %373

355:                                              ; preds = %341
  br label %356

356:                                              ; preds = %366, %355
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = load %struct.dtslot*, %struct.dtslot** %358, align 8
  %360 = load i32, i32* %26, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %359, i64 %361
  store %struct.dtslot* %362, %struct.dtslot** %28, align 8
  %363 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %364 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  store i32 %365, i32* %26, align 4
  br label %366

366:                                              ; preds = %356
  %367 = load i32, i32* %26, align 4
  %368 = icmp ne i32 %367, -1
  br i1 %368, label %356, label %369

369:                                              ; preds = %366
  %370 = load i32, i32* %30, align 4
  %371 = load %struct.dtslot*, %struct.dtslot** %28, align 8
  %372 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %371, i32 0, i32 0
  store i32 %370, i32* %372, align 4
  br label %373

373:                                              ; preds = %369, %350
  %374 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %30, align 4
  %379 = sub nsw i32 %377, %378
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = add nsw i32 %383, %379
  store i32 %384, i32* %382, align 8
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %386 = load %struct.dtsplit*, %struct.dtsplit** %8, align 8
  %387 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.dtsplit*, %struct.dtsplit** %8, align 8
  %390 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.dtsplit*, %struct.dtsplit** %8, align 8
  %393 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @dtInsertEntry(%struct.TYPE_11__* %385, i32 %388, i32 %391, i32 %394, %struct.dt_lock** %31)
  %396 = load %struct.metapage*, %struct.metapage** %13, align 8
  %397 = load %struct.inode*, %struct.inode** %7, align 8
  %398 = call i32 @BT_MARK_DIRTY(%struct.metapage* %396, %struct.inode* %397)
  %399 = load i32, i32* %37, align 4
  %400 = load i32, i32* @tlckEXTEND, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %419

402:                                              ; preds = %373
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = ashr i32 %406, 2
  store i32 %407, i32* %30, align 4
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %30, align 4
  %413 = icmp slt i32 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %402
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %416 = load i32, i32* %30, align 4
  %417 = call i32 @dtLinelockFreelist(%struct.TYPE_11__* %415, i32 %416, %struct.dt_lock** %31)
  br label %418

418:                                              ; preds = %414, %402
  br label %419

419:                                              ; preds = %418, %373
  %420 = load i32, i32* %6, align 4
  %421 = load %struct.inode*, %struct.inode** %7, align 8
  %422 = load %struct.metapage*, %struct.metapage** %13, align 8
  %423 = load i32, i32* @tlckDTREE, align 4
  %424 = load i32, i32* @tlckENTRY, align 4
  %425 = or i32 %423, %424
  %426 = call %struct.tlock* @txLock(i32 %420, %struct.inode* %421, %struct.metapage* %422, i32 %425)
  store %struct.tlock* %426, %struct.tlock** %34, align 8
  %427 = load %struct.tlock*, %struct.tlock** %34, align 8
  %428 = getelementptr inbounds %struct.tlock, %struct.tlock* %427, i32 0, i32 0
  %429 = bitcast i32* %428 to %struct.dt_lock*
  store %struct.dt_lock* %429, %struct.dt_lock** %31, align 8
  %430 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %431 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %430, i32 0, i32 1
  %432 = load %struct.lv*, %struct.lv** %431, align 8
  %433 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %434 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = getelementptr inbounds %struct.lv, %struct.lv* %432, i64 %435
  store %struct.lv* %436, %struct.lv** %36, align 8
  %437 = load %struct.lv*, %struct.lv** %36, align 8
  %438 = getelementptr inbounds %struct.lv, %struct.lv* %437, i32 0, i32 0
  store i32 1, i32* %438, align 4
  %439 = load %struct.lv*, %struct.lv** %36, align 8
  %440 = getelementptr inbounds %struct.lv, %struct.lv* %439, i32 0, i32 1
  store i32 1, i32* %440, align 4
  %441 = load %struct.dt_lock*, %struct.dt_lock** %31, align 8
  %442 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = add i64 %443, 1
  store i64 %444, i64* %442, align 8
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 0
  %447 = load %struct.dtslot*, %struct.dtslot** %446, align 8
  %448 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %447, i64 1
  %449 = bitcast %struct.dtslot* %448 to i32*
  store i32* %449, i32** %19, align 8
  %450 = load i32*, i32** %18, align 8
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** %19, align 8
  store i32 %451, i32* %452, align 4
  %453 = load %struct.metapage*, %struct.metapage** %13, align 8
  %454 = call i32 @DT_PUTPAGE(%struct.metapage* %453)
  store i32 0, i32* %5, align 4
  br label %455

455:                                              ; preds = %419, %63
  %456 = load i32, i32* %5, align 4
  ret i32 %456
}

declare dso_local %struct.TYPE_11__* @DT_PAGE(%struct.inode*, %struct.metapage*) #1

declare dso_local %struct.btframe* @BT_POP(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i32, %struct.metapage*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local %struct.tlock* @txMaplock(i32, %struct.inode*, i32) #1

declare dso_local i64 @DO_INDEX(%struct.inode*) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_11__*) #1

declare dso_local i32 @modify_index(i32, %struct.inode*, i32, i64, i32, %struct.metapage**, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_info(i8*, %struct.inode*, %struct.metapage*, %struct.TYPE_11__*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local %struct.TYPE_12__* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @memcpy(%struct.dtslot*, %struct.dtslot*, i32) #1

declare dso_local i32 @dtInsertEntry(%struct.TYPE_11__*, i32, i32, i32, %struct.dt_lock**) #1

declare dso_local i32 @dtLinelockFreelist(%struct.TYPE_11__*, i32, %struct.dt_lock**) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
