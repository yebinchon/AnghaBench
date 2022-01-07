; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSplitUp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSplitUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dtsplit = type { i32, i32, %struct.component_name*, %struct.metapage*, %struct.pxdlist*, %struct.TYPE_14__* }
%struct.component_name = type { i64, i32*, i32*, i32 }
%struct.metapage = type { i32 }
%struct.pxdlist = type { i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.btstack = type { i32 }
%struct.jfs_sb_info = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i32, i32 }
%struct.btframe = type { i32, i32 }
%struct.dt_lock = type { i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tlock = type { i32 }

@JFS_NAME_MAX = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_ROOT = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4
@DTROOTMAXSLOT = common dso_local global i64 0, align 8
@PSIZE = common dso_local global i32 0, align 4
@BT_TYPE = common dso_local global i32 0, align 4
@JFS_OS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"dtSplitUp(): UFO!\00", align 1
@tlckDTREE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.dtsplit*, %struct.btstack*)* @dtSplitUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtSplitUp(i32 %0, %struct.inode* %1, %struct.dtsplit* %2, %struct.btstack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dtsplit*, align 8
  %8 = alloca %struct.btstack*, align 8
  %9 = alloca %struct.jfs_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.metapage*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.metapage*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.btframe*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.pxdlist, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.component_name, align 8
  %27 = alloca %struct.TYPE_14__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.dt_lock*, align 8
  %30 = alloca %struct.tlock*, align 8
  %31 = alloca %struct.lv*, align 8
  %32 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dtsplit* %2, %struct.dtsplit** %7, align 8
  store %struct.btstack* %3, %struct.btstack** %8, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.jfs_sb_info* @JFS_SBI(i32 %35)
  store %struct.jfs_sb_info* %36, %struct.jfs_sb_info** %9, align 8
  store i32 0, i32* %10, align 4
  %37 = bitcast %struct.component_name* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 32, i1 false)
  %38 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %39 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %38, i32 0, i32 5
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %27, align 8
  store i32 0, i32* %32, align 4
  %41 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %42 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %41, i32 0, i32 3
  %43 = load %struct.metapage*, %struct.metapage** %42, align 8
  store %struct.metapage* %43, %struct.metapage** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = load %struct.metapage*, %struct.metapage** %11, align 8
  %46 = call %struct.TYPE_13__* @DT_PAGE(%struct.inode* %44, %struct.metapage* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %12, align 8
  %47 = load i64, i64* @JFS_NAME_MAX, align 8
  %48 = add nsw i64 %47, 2
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = call i32* @kmalloc_array(i64 %48, i32 4, i32 %49)
  %51 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 1
  store i32* %50, i32** %51, align 8
  %52 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %4
  %56 = load %struct.metapage*, %struct.metapage** %11, align 8
  %57 = call i32 @DT_PUTPAGE(%struct.metapage* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %632

60:                                               ; preds = %4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @BT_ROOT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %152

68:                                               ; preds = %60
  store i32 1, i32* %22, align 4
  %69 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %70 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @L2DTSLOTSIZE, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %28, align 4
  %74 = load i32, i32* %28, align 4
  %75 = add nsw i32 %74, 31
  %76 = load i32, i32* @L2DTSLOTSIZE, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* %28, align 4
  %79 = sub nsw i32 %78, %77
  store i32 %79, i32* %28, align 4
  %80 = load i64, i64* @DTROOTMAXSLOT, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %80, %85
  %87 = load i32, i32* %28, align 4
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %28, align 4
  %92 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %93 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sle i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %68
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %96, %68
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = load i32, i32* %22, align 4
  %102 = sext i32 %101 to i64
  %103 = call i32 @dbAlloc(%struct.inode* %100, i32 0, i64 %102, i64* %20)
  store i32 %103, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load %struct.metapage*, %struct.metapage** %11, align 8
  %107 = call i32 @DT_PUTPAGE(%struct.metapage* %106)
  br label %618

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32* %113, i32** %25, align 8
  %114 = load i32*, i32** %25, align 8
  %115 = load i64, i64* %20, align 8
  %116 = call i32 @PXDaddress(i32* %114, i64 %115)
  %117 = load i32*, i32** %25, align 8
  %118 = load i32, i32* %22, align 4
  %119 = call i32 @PXDlength(i32* %117, i32 %118)
  %120 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %121 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %120, i32 0, i32 4
  store %struct.pxdlist* %24, %struct.pxdlist** %121, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %125 = call i32 @dtSplitRoot(i32 %122, %struct.inode* %123, %struct.dtsplit* %124, %struct.metapage** %13)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %108
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = load i64, i64* %20, align 8
  %131 = load i32, i32* %22, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 @dbFree(%struct.inode* %129, i64 %130, i64 %132)
  br label %137

134:                                              ; preds = %108
  %135 = load %struct.metapage*, %struct.metapage** %13, align 8
  %136 = call i32 @DT_PUTPAGE(%struct.metapage* %135)
  br label %137

137:                                              ; preds = %134, %128
  %138 = load %struct.metapage*, %struct.metapage** %11, align 8
  %139 = call i32 @DT_PUTPAGE(%struct.metapage* %138)
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = call i32 @DO_INDEX(%struct.inode* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %22, align 4
  %145 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %146 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %144, %147
  %149 = load %struct.inode*, %struct.inode** %6, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %143, %137
  br label %618

152:                                              ; preds = %60
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 5
  store i32* %155, i32** %25, align 8
  %156 = load i32*, i32** %25, align 8
  %157 = call i32 @lengthPXD(i32* %156)
  store i32 %157, i32* %22, align 4
  %158 = load i32, i32* %22, align 4
  %159 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %160 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %158, %161
  store i32 %162, i32* %23, align 4
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* @PSIZE, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %287

166:                                              ; preds = %152
  %167 = load i32*, i32** %25, align 8
  %168 = call i64 @addressPXD(i32* %167)
  store i64 %168, i64* %20, align 8
  %169 = load i32, i32* %23, align 4
  %170 = load i32, i32* @L2DTSLOTSIZE, align 4
  %171 = ashr i32 %169, %170
  store i32 %171, i32* %28, align 4
  %172 = load i32, i32* %28, align 4
  %173 = add nsw i32 %172, 31
  %174 = load i32, i32* @L2DTSLOTSIZE, align 4
  %175 = ashr i32 %173, %174
  %176 = load i32, i32* %28, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %28, align 4
  %178 = load i32, i32* %28, align 4
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %178, %182
  %184 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %185 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp sle i32 %183, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %166
  %189 = load i32, i32* %22, align 4
  %190 = load i32, i32* %22, align 4
  %191 = shl i32 %190, 1
  %192 = add nsw i32 %189, %191
  store i32 %192, i32* %28, align 4
  br label %195

193:                                              ; preds = %166
  %194 = load i32, i32* %22, align 4
  store i32 %194, i32* %28, align 4
  br label %195

195:                                              ; preds = %193, %188
  %196 = load %struct.inode*, %struct.inode** %6, align 8
  %197 = load i32, i32* %28, align 4
  %198 = call i32 @dquot_alloc_block(%struct.inode* %196, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  br label %284

202:                                              ; preds = %195
  %203 = load i32, i32* %28, align 4
  %204 = load i32, i32* %32, align 4
  %205 = add nsw i32 %204, %203
  store i32 %205, i32* %32, align 4
  %206 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %207 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load i64, i64* %20, align 8
  %210 = load i32, i32* %22, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %28, align 4
  %213 = sext i32 %212 to i64
  %214 = call i32 @dbReAlloc(i32 %208, i64 %209, i64 %211, i64 %213, i64* %21)
  store i32 %214, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %202
  br label %284

217:                                              ; preds = %202
  %218 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 0
  store i32 1, i32* %218, align 8
  %219 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 1
  store i32 0, i32* %219, align 4
  %220 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32* %222, i32** %25, align 8
  %223 = load i32*, i32** %25, align 8
  %224 = load i64, i64* %21, align 8
  %225 = call i32 @PXDaddress(i32* %223, i64 %224)
  %226 = load i32*, i32** %25, align 8
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* %28, align 4
  %229 = add nsw i32 %227, %228
  %230 = call i32 @PXDlength(i32* %226, i32 %229)
  %231 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %232 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %231, i32 0, i32 4
  store %struct.pxdlist* %24, %struct.pxdlist** %232, align 8
  %233 = load i32, i32* %5, align 4
  %234 = load %struct.inode*, %struct.inode** %6, align 8
  %235 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %236 = load %struct.btstack*, %struct.btstack** %8, align 8
  %237 = call i32 @dtExtendPage(i32 %233, %struct.inode* %234, %struct.dtsplit* %235, %struct.btstack* %236)
  store i32 %237, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %269

239:                                              ; preds = %217
  %240 = load i32*, i32** %25, align 8
  %241 = call i64 @addressPXD(i32* %240)
  store i64 %241, i64* %21, align 8
  %242 = load i64, i64* %20, align 8
  %243 = load i64, i64* %21, align 8
  %244 = icmp ne i64 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %239
  %246 = load i32*, i32** %25, align 8
  %247 = call i32 @lengthPXD(i32* %246)
  store i32 %247, i32* %22, align 4
  %248 = load %struct.inode*, %struct.inode** %6, align 8
  %249 = load i64, i64* %21, align 8
  %250 = load i32, i32* %22, align 4
  %251 = sext i32 %250 to i64
  %252 = call i32 @dbFree(%struct.inode* %248, i64 %249, i64 %251)
  br label %268

253:                                              ; preds = %239
  %254 = load i32*, i32** %25, align 8
  %255 = call i32 @lengthPXD(i32* %254)
  %256 = load i32, i32* %28, align 4
  %257 = sub nsw i32 %255, %256
  store i32 %257, i32* %22, align 4
  %258 = load i32*, i32** %25, align 8
  %259 = call i64 @addressPXD(i32* %258)
  %260 = load i32, i32* %22, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %259, %261
  store i64 %262, i64* %20, align 8
  %263 = load %struct.inode*, %struct.inode** %6, align 8
  %264 = load i64, i64* %20, align 8
  %265 = load i32, i32* %28, align 4
  %266 = sext i32 %265 to i64
  %267 = call i32 @dbFree(%struct.inode* %263, i64 %264, i64 %266)
  br label %268

268:                                              ; preds = %253, %245
  br label %283

269:                                              ; preds = %217
  %270 = load %struct.inode*, %struct.inode** %6, align 8
  %271 = call i32 @DO_INDEX(%struct.inode* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %269
  %274 = load i32*, i32** %25, align 8
  %275 = call i32 @lengthPXD(i32* %274)
  %276 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %277 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = shl i32 %275, %278
  %280 = load %struct.inode*, %struct.inode** %6, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %273, %269
  br label %283

283:                                              ; preds = %282, %268
  br label %284

284:                                              ; preds = %283, %216, %201
  %285 = load %struct.metapage*, %struct.metapage** %11, align 8
  %286 = call i32 @DT_PUTPAGE(%struct.metapage* %285)
  br label %618

287:                                              ; preds = %152
  %288 = load %struct.btstack*, %struct.btstack** %8, align 8
  %289 = getelementptr inbounds %struct.btstack, %struct.btstack* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %28, align 4
  %291 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 1
  store i32 0, i32* %291, align 4
  %292 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 0
  store i32 0, i32* %292, align 8
  %293 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %294 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %22, align 4
  %296 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  store i32* %297, i32** %25, align 8
  br label %298

298:                                              ; preds = %320, %287
  %299 = load i32, i32* %28, align 4
  %300 = icmp sgt i32 %299, 0
  br i1 %300, label %301, label %325

301:                                              ; preds = %298
  %302 = load %struct.inode*, %struct.inode** %6, align 8
  %303 = load i32, i32* %22, align 4
  %304 = sext i32 %303 to i64
  %305 = call i32 @dbAlloc(%struct.inode* %302, i32 0, i64 %304, i64* %20)
  store i32 %305, i32* %10, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %317

307:                                              ; preds = %301
  %308 = load i32*, i32** %25, align 8
  %309 = load i64, i64* %20, align 8
  %310 = call i32 @PXDaddress(i32* %308, i64 %309)
  %311 = load i32*, i32** %25, align 8
  %312 = load i32, i32* %22, align 4
  %313 = call i32 @PXDlength(i32* %311, i32 %312)
  %314 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  br label %320

317:                                              ; preds = %301
  %318 = load %struct.metapage*, %struct.metapage** %11, align 8
  %319 = call i32 @DT_PUTPAGE(%struct.metapage* %318)
  br label %591

320:                                              ; preds = %307
  %321 = load i32, i32* %28, align 4
  %322 = add nsw i32 %321, -1
  store i32 %322, i32* %28, align 4
  %323 = load i32*, i32** %25, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %25, align 8
  br label %298

325:                                              ; preds = %298
  %326 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %327 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %326, i32 0, i32 4
  store %struct.pxdlist* %24, %struct.pxdlist** %327, align 8
  %328 = load i32, i32* %5, align 4
  %329 = load %struct.inode*, %struct.inode** %6, align 8
  %330 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %331 = call i32 @dtSplitPage(i32 %328, %struct.inode* %329, %struct.dtsplit* %330, %struct.metapage** %13, %struct.TYPE_13__** %14, i32* %15)
  store i32 %331, i32* %10, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %325
  %334 = load %struct.metapage*, %struct.metapage** %11, align 8
  %335 = call i32 @DT_PUTPAGE(%struct.metapage* %334)
  br label %591

336:                                              ; preds = %325
  %337 = load %struct.inode*, %struct.inode** %6, align 8
  %338 = call i32 @DO_INDEX(%struct.inode* %337)
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %336
  %341 = load i32, i32* @PSIZE, align 4
  %342 = load %struct.inode*, %struct.inode** %6, align 8
  %343 = getelementptr inbounds %struct.inode, %struct.inode* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = add nsw i32 %344, %341
  store i32 %345, i32* %343, align 4
  br label %346

346:                                              ; preds = %340, %336
  br label %347

347:                                              ; preds = %585, %346
  %348 = load %struct.btstack*, %struct.btstack** %8, align 8
  %349 = call %struct.btframe* @BT_POP(%struct.btstack* %348)
  store %struct.btframe* %349, %struct.btframe** %19, align 8
  %350 = icmp ne %struct.btframe* %349, null
  br i1 %350, label %351, label %586

351:                                              ; preds = %347
  %352 = load %struct.metapage*, %struct.metapage** %11, align 8
  store %struct.metapage* %352, %struct.metapage** %16, align 8
  %353 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %353, %struct.TYPE_13__** %17, align 8
  %354 = load %struct.inode*, %struct.inode** %6, align 8
  %355 = load %struct.btframe*, %struct.btframe** %19, align 8
  %356 = getelementptr inbounds %struct.btframe, %struct.btframe* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.metapage*, %struct.metapage** %11, align 8
  %359 = load i32, i32* @PSIZE, align 4
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %361 = load i32, i32* %10, align 4
  %362 = call i32 @DT_GETPAGE(%struct.inode* %354, i32 %357, %struct.metapage* %358, i32 %359, %struct.TYPE_13__* %360, i32 %361)
  %363 = load i32, i32* %10, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %351
  %366 = load %struct.metapage*, %struct.metapage** %16, align 8
  %367 = call i32 @DT_PUTPAGE(%struct.metapage* %366)
  %368 = load %struct.metapage*, %struct.metapage** %13, align 8
  %369 = call i32 @DT_PUTPAGE(%struct.metapage* %368)
  br label %591

370:                                              ; preds = %351
  %371 = load %struct.btframe*, %struct.btframe** %19, align 8
  %372 = getelementptr inbounds %struct.btframe, %struct.btframe* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %18, align 4
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* @BT_TYPE, align 4
  %380 = and i32 %378, %379
  switch i32 %380, label %457 [
    i32 128, label %381
    i32 129, label %448
  ]

381:                                              ; preds = %370
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @BT_ROOT, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %381
  %390 = load i32, i32* %18, align 4
  %391 = icmp sgt i32 %390, 1
  br i1 %391, label %401, label %392

392:                                              ; preds = %389, %381
  %393 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %394 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %392
  %399 = load i32, i32* %18, align 4
  %400 = icmp sgt i32 %399, 1
  br i1 %400, label %401, label %423

401:                                              ; preds = %398, %392, %389
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 8
  %407 = sub nsw i32 %406, 1
  %408 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %409 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %410 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @ciGetLeafPrefixKey(%struct.TYPE_13__* %402, i32 %407, %struct.TYPE_13__* %408, i32 0, %struct.component_name* %26, i32 %411)
  store i32 %412, i32* %10, align 4
  %413 = load i32, i32* %10, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %422

415:                                              ; preds = %401
  %416 = load %struct.metapage*, %struct.metapage** %16, align 8
  %417 = call i32 @DT_PUTPAGE(%struct.metapage* %416)
  %418 = load %struct.metapage*, %struct.metapage** %13, align 8
  %419 = call i32 @DT_PUTPAGE(%struct.metapage* %418)
  %420 = load %struct.metapage*, %struct.metapage** %11, align 8
  %421 = call i32 @DT_PUTPAGE(%struct.metapage* %420)
  br label %591

422:                                              ; preds = %401
  br label %444

423:                                              ; preds = %398
  %424 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %425 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %426 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @dtGetKey(%struct.TYPE_13__* %424, i32 0, %struct.component_name* %26, i32 %427)
  %429 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  store i32 0, i32* %433, align 4
  %434 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %435 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @JFS_OS2, align 4
  %438 = and i32 %436, %437
  %439 = load i32, i32* @JFS_OS2, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %443

441:                                              ; preds = %423
  %442 = call i32 @ciToUpper(%struct.component_name* %26)
  br label %443

443:                                              ; preds = %441, %423
  br label %444

444:                                              ; preds = %443, %422
  %445 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @NDTINTERNAL(i64 %446)
  store i32 %447, i32* %28, align 4
  br label %459

448:                                              ; preds = %370
  %449 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %450 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %9, align 8
  %451 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  %453 = call i32 @dtGetKey(%struct.TYPE_13__* %449, i32 0, %struct.component_name* %26, i32 %452)
  %454 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = call i32 @NDTINTERNAL(i64 %455)
  store i32 %456, i32* %28, align 4
  br label %459

457:                                              ; preds = %370
  %458 = call i32 @jfs_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %459

459:                                              ; preds = %457, %448, %444
  %460 = load %struct.metapage*, %struct.metapage** %16, align 8
  %461 = call i32 @DT_PUTPAGE(%struct.metapage* %460)
  %462 = load i32, i32* %15, align 4
  %463 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %464 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %463, i32 0, i32 0
  store i32 %462, i32* %464, align 4
  %465 = load i32, i32* %28, align 4
  %466 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %467 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = icmp sgt i32 %465, %469
  br i1 %470, label %471, label %510

471:                                              ; preds = %459
  %472 = load %struct.metapage*, %struct.metapage** %11, align 8
  %473 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %474 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %473, i32 0, i32 3
  store %struct.metapage* %472, %struct.metapage** %474, align 8
  %475 = load i32, i32* %18, align 4
  %476 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %477 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %476, i32 0, i32 1
  store i32 %475, i32* %477, align 4
  %478 = load i32, i32* %28, align 4
  %479 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %480 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %479, i32 0, i32 0
  store i32 %478, i32* %480, align 8
  %481 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %482 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %481, i32 0, i32 2
  store %struct.component_name* %26, %struct.component_name** %482, align 8
  %483 = load %struct.metapage*, %struct.metapage** %13, align 8
  %484 = call i32 @DT_PUTPAGE(%struct.metapage* %483)
  %485 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %486 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* @BT_ROOT, align 4
  %490 = and i32 %488, %489
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %497

492:                                              ; preds = %471
  %493 = load i32, i32* %5, align 4
  %494 = load %struct.inode*, %struct.inode** %6, align 8
  %495 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %496 = call i32 @dtSplitRoot(i32 %493, %struct.inode* %494, %struct.dtsplit* %495, %struct.metapage** %13)
  br label %502

497:                                              ; preds = %471
  %498 = load i32, i32* %5, align 4
  %499 = load %struct.inode*, %struct.inode** %6, align 8
  %500 = load %struct.dtsplit*, %struct.dtsplit** %7, align 8
  %501 = call i32 @dtSplitPage(i32 %498, %struct.inode* %499, %struct.dtsplit* %500, %struct.metapage** %13, %struct.TYPE_13__** %14, i32* %15)
  br label %502

502:                                              ; preds = %497, %492
  %503 = phi i32 [ %496, %492 ], [ %501, %497 ]
  store i32 %503, i32* %10, align 4
  %504 = load i32, i32* %10, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %509

506:                                              ; preds = %502
  %507 = load %struct.metapage*, %struct.metapage** %11, align 8
  %508 = call i32 @DT_PUTPAGE(%struct.metapage* %507)
  br label %591

509:                                              ; preds = %502
  br label %585

510:                                              ; preds = %459
  %511 = load %struct.metapage*, %struct.metapage** %11, align 8
  %512 = load %struct.inode*, %struct.inode** %6, align 8
  %513 = call i32 @BT_MARK_DIRTY(%struct.metapage* %511, %struct.inode* %512)
  %514 = load i32, i32* %5, align 4
  %515 = load %struct.inode*, %struct.inode** %6, align 8
  %516 = load %struct.metapage*, %struct.metapage** %11, align 8
  %517 = load i32, i32* @tlckDTREE, align 4
  %518 = load i32, i32* @tlckENTRY, align 4
  %519 = or i32 %517, %518
  %520 = call %struct.tlock* @txLock(i32 %514, %struct.inode* %515, %struct.metapage* %516, i32 %519)
  store %struct.tlock* %520, %struct.tlock** %30, align 8
  %521 = load %struct.tlock*, %struct.tlock** %30, align 8
  %522 = getelementptr inbounds %struct.tlock, %struct.tlock* %521, i32 0, i32 0
  %523 = bitcast i32* %522 to %struct.dt_lock*
  store %struct.dt_lock* %523, %struct.dt_lock** %29, align 8
  %524 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %525 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = icmp eq i64 %526, 0
  %528 = zext i1 %527 to i32
  %529 = call i32 @ASSERT(i32 %528)
  %530 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %531 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %530, i32 0, i32 1
  %532 = load %struct.lv*, %struct.lv** %531, align 8
  %533 = getelementptr inbounds %struct.lv, %struct.lv* %532, i64 0
  store %struct.lv* %533, %struct.lv** %31, align 8
  %534 = load %struct.lv*, %struct.lv** %31, align 8
  %535 = getelementptr inbounds %struct.lv, %struct.lv* %534, i32 0, i32 1
  store i64 0, i64* %535, align 8
  %536 = load %struct.lv*, %struct.lv** %31, align 8
  %537 = getelementptr inbounds %struct.lv, %struct.lv* %536, i32 0, i32 0
  store i32 1, i32* %537, align 8
  %538 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %539 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %538, i32 0, i32 0
  %540 = load i64, i64* %539, align 8
  %541 = add nsw i64 %540, 1
  store i64 %541, i64* %539, align 8
  %542 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %543 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = load i32, i32* @BT_ROOT, align 4
  %547 = and i32 %545, %546
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %580, label %549

549:                                              ; preds = %510
  %550 = load %struct.lv*, %struct.lv** %31, align 8
  %551 = getelementptr inbounds %struct.lv, %struct.lv* %550, i32 1
  store %struct.lv* %551, %struct.lv** %31, align 8
  %552 = load i32, i32* %18, align 4
  %553 = load i32, i32* @L2DTSLOTSIZE, align 4
  %554 = ashr i32 %552, %553
  store i32 %554, i32* %28, align 4
  %555 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %556 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %555, i32 0, i32 0
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 3
  %558 = load i64, i64* %557, align 8
  %559 = load i32, i32* %28, align 4
  %560 = sext i32 %559 to i64
  %561 = add nsw i64 %558, %560
  %562 = load %struct.lv*, %struct.lv** %31, align 8
  %563 = getelementptr inbounds %struct.lv, %struct.lv* %562, i32 0, i32 1
  store i64 %561, i64* %563, align 8
  %564 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %565 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = sub nsw i32 %567, 1
  %569 = load i32, i32* @L2DTSLOTSIZE, align 4
  %570 = ashr i32 %568, %569
  %571 = load i32, i32* %28, align 4
  %572 = sub nsw i32 %570, %571
  %573 = add nsw i32 %572, 1
  %574 = load %struct.lv*, %struct.lv** %31, align 8
  %575 = getelementptr inbounds %struct.lv, %struct.lv* %574, i32 0, i32 0
  store i32 %573, i32* %575, align 8
  %576 = load %struct.dt_lock*, %struct.dt_lock** %29, align 8
  %577 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = add nsw i64 %578, 1
  store i64 %579, i64* %577, align 8
  br label %580

580:                                              ; preds = %549, %510
  %581 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %582 = load i32, i32* %18, align 4
  %583 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %584 = call i32 @dtInsertEntry(%struct.TYPE_13__* %581, i32 %582, %struct.component_name* %26, %struct.TYPE_14__* %583, %struct.dt_lock** %29)
  br label %586

585:                                              ; preds = %509
  br label %347

586:                                              ; preds = %580, %347
  %587 = load %struct.metapage*, %struct.metapage** %11, align 8
  %588 = call i32 @DT_PUTPAGE(%struct.metapage* %587)
  %589 = load %struct.metapage*, %struct.metapage** %13, align 8
  %590 = call i32 @DT_PUTPAGE(%struct.metapage* %589)
  br label %591

591:                                              ; preds = %586, %506, %415, %365, %333, %317
  %592 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 1
  %593 = load i32, i32* %592, align 4
  store i32 %593, i32* %28, align 4
  %594 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 2
  %595 = load i32*, i32** %594, align 8
  %596 = load i32, i32* %28, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds i32, i32* %595, i64 %597
  store i32* %598, i32** %25, align 8
  br label %599

599:                                              ; preds = %612, %591
  %600 = load i32, i32* %28, align 4
  %601 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %24, i32 0, i32 0
  %602 = load i32, i32* %601, align 8
  %603 = icmp slt i32 %600, %602
  br i1 %603, label %604, label %617

604:                                              ; preds = %599
  %605 = load %struct.inode*, %struct.inode** %6, align 8
  %606 = load i32*, i32** %25, align 8
  %607 = call i64 @addressPXD(i32* %606)
  %608 = load i32*, i32** %25, align 8
  %609 = call i32 @lengthPXD(i32* %608)
  %610 = sext i32 %609 to i64
  %611 = call i32 @dbFree(%struct.inode* %605, i64 %607, i64 %610)
  br label %612

612:                                              ; preds = %604
  %613 = load i32, i32* %28, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %28, align 4
  %615 = load i32*, i32** %25, align 8
  %616 = getelementptr inbounds i32, i32* %615, i32 1
  store i32* %616, i32** %25, align 8
  br label %599

617:                                              ; preds = %599
  br label %618

618:                                              ; preds = %617, %284, %151, %105
  %619 = getelementptr inbounds %struct.component_name, %struct.component_name* %26, i32 0, i32 1
  %620 = load i32*, i32** %619, align 8
  %621 = call i32 @kfree(i32* %620)
  %622 = load i32, i32* %10, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %631

624:                                              ; preds = %618
  %625 = load i32, i32* %32, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %631

627:                                              ; preds = %624
  %628 = load %struct.inode*, %struct.inode** %6, align 8
  %629 = load i32, i32* %32, align 4
  %630 = call i32 @dquot_free_block(%struct.inode* %628, i32 %629)
  br label %631

631:                                              ; preds = %627, %624, %618
  br label %632

632:                                              ; preds = %631, %55
  %633 = load i32, i32* %10, align 4
  ret i32 %633
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_13__* @DT_PAGE(%struct.inode*, %struct.metapage*) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i32, i64, i64*) #1

declare dso_local i32 @PXDaddress(i32*, i64) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @dtSplitRoot(i32, %struct.inode*, %struct.dtsplit*, %struct.metapage**) #1

declare dso_local i32 @dbFree(%struct.inode*, i64, i64) #1

declare dso_local i32 @DO_INDEX(%struct.inode*) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @dquot_alloc_block(%struct.inode*, i32) #1

declare dso_local i32 @dbReAlloc(i32, i64, i64, i64, i64*) #1

declare dso_local i32 @dtExtendPage(i32, %struct.inode*, %struct.dtsplit*, %struct.btstack*) #1

declare dso_local i32 @dtSplitPage(i32, %struct.inode*, %struct.dtsplit*, %struct.metapage**, %struct.TYPE_13__**, i32*) #1

declare dso_local %struct.btframe* @BT_POP(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i32, %struct.metapage*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ciGetLeafPrefixKey(%struct.TYPE_13__*, i32, %struct.TYPE_13__*, i32, %struct.component_name*, i32) #1

declare dso_local i32 @dtGetKey(%struct.TYPE_13__*, i32, %struct.component_name*, i32) #1

declare dso_local i32 @ciToUpper(%struct.component_name*) #1

declare dso_local i32 @NDTINTERNAL(i64) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtInsertEntry(%struct.TYPE_13__*, i32, %struct.component_name*, %struct.TYPE_14__*, %struct.dt_lock**) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
