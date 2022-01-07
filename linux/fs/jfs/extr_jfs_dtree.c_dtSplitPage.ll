; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSplitPage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtSplitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64 }
%struct.dtsplit = type { i32, i32, i32, i32, %struct.pxdlist*, %struct.tlock* }
%struct.pxdlist = type { i64, i32* }
%struct.tlock = type { i32, i64 }
%struct.metapage = type { i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.dtslot* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.dtslot = type { i32 }
%struct.ldtentry = type { i32, i32 }
%struct.idtentry = type { i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }

@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"dtSplitPage: ip:0x%p smp:0x%p rmp:0x%p\00", align 1
@tlckDTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4
@tlckRELINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"dtSplitPage: tlck = 0x%p, ip = 0x%p, mp=0x%p\00", align 1
@BT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.dtsplit*, %struct.metapage**, %struct.TYPE_11__**, i32*)* @dtSplitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtSplitPage(i32 %0, %struct.inode* %1, %struct.dtsplit* %2, %struct.metapage** %3, %struct.TYPE_11__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dtsplit*, align 8
  %11 = alloca %struct.metapage**, align 8
  %12 = alloca %struct.TYPE_11__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca %struct.metapage*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.metapage*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.pxdlist*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.ldtentry*, align 8
  %33 = alloca %struct.idtentry*, align 8
  %34 = alloca i64*, align 8
  %35 = alloca %struct.dtslot*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.dt_lock*, align 8
  %40 = alloca %struct.dt_lock*, align 8
  %41 = alloca %struct.tlock*, align 8
  %42 = alloca %struct.dt_lock*, align 8
  %43 = alloca %struct.lv*, align 8
  %44 = alloca %struct.lv*, align 8
  %45 = alloca %struct.lv*, align 8
  %46 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.dtsplit* %2, %struct.dtsplit** %10, align 8
  store %struct.metapage** %3, %struct.metapage*** %11, align 8
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %47 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %48 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %47, i32 0, i32 5
  %49 = load %struct.tlock*, %struct.tlock** %48, align 8
  %50 = bitcast %struct.tlock* %49 to %struct.metapage*
  store %struct.metapage* %50, %struct.metapage** %15, align 8
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = bitcast %struct.inode* %51 to %struct.tlock*
  %53 = load %struct.metapage*, %struct.metapage** %15, align 8
  %54 = bitcast %struct.metapage* %53 to %struct.tlock*
  %55 = call %struct.TYPE_11__* @DT_PAGE(%struct.tlock* %52, %struct.tlock* %54)
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %16, align 8
  %56 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %57 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %56, i32 0, i32 4
  %58 = load %struct.pxdlist*, %struct.pxdlist** %57, align 8
  store %struct.pxdlist* %58, %struct.pxdlist** %23, align 8
  %59 = load %struct.pxdlist*, %struct.pxdlist** %23, align 8
  %60 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.pxdlist*, %struct.pxdlist** %23, align 8
  %63 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32* %65, i32** %24, align 8
  %66 = load %struct.pxdlist*, %struct.pxdlist** %23, align 8
  %67 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load i32*, i32** %24, align 8
  %71 = call i64 @addressPXD(i32* %70)
  store i64 %71, i64* %19, align 8
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = bitcast %struct.inode* %72 to %struct.tlock*
  %74 = load i64, i64* %19, align 8
  %75 = load i32, i32* @PSIZE, align 4
  %76 = call %struct.tlock* @get_metapage(%struct.tlock* %73, i64 %74, i32 %75, i32 1)
  %77 = bitcast %struct.tlock* %76 to %struct.metapage*
  store %struct.metapage* %77, %struct.metapage** %17, align 8
  %78 = load %struct.metapage*, %struct.metapage** %17, align 8
  %79 = icmp eq %struct.metapage* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %6
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %7, align 4
  br label %653

83:                                               ; preds = %6
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = bitcast %struct.inode* %84 to %struct.tlock*
  %86 = load i32*, i32** %24, align 8
  %87 = call i32 @lengthPXD(i32* %86)
  %88 = call i32 @dquot_alloc_block(%struct.tlock* %85, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.metapage*, %struct.metapage** %17, align 8
  %93 = bitcast %struct.metapage* %92 to %struct.tlock*
  %94 = call i32 @release_metapage(%struct.tlock* %93)
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %7, align 4
  br label %653

96:                                               ; preds = %83
  %97 = load %struct.inode*, %struct.inode** %9, align 8
  %98 = bitcast %struct.inode* %97 to %struct.tlock*
  %99 = load %struct.metapage*, %struct.metapage** %15, align 8
  %100 = bitcast %struct.metapage* %99 to %struct.tlock*
  %101 = load %struct.metapage*, %struct.metapage** %17, align 8
  %102 = bitcast %struct.metapage* %101 to %struct.tlock*
  %103 = call i32 @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.tlock* %98, %struct.tlock* %100, %struct.tlock* %102)
  %104 = load %struct.metapage*, %struct.metapage** %17, align 8
  %105 = bitcast %struct.metapage* %104 to %struct.tlock*
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = bitcast %struct.inode* %106 to %struct.tlock*
  %108 = call i32 @BT_MARK_DIRTY(%struct.tlock* %105, %struct.tlock* %107)
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.inode*, %struct.inode** %9, align 8
  %111 = bitcast %struct.inode* %110 to %struct.tlock*
  %112 = load %struct.metapage*, %struct.metapage** %17, align 8
  %113 = bitcast %struct.metapage* %112 to %struct.tlock*
  %114 = load i32, i32* @tlckDTREE, align 4
  %115 = load i32, i32* @tlckNEW, align 4
  %116 = or i32 %114, %115
  %117 = call %struct.tlock* @txLock(i32 %109, %struct.tlock* %111, %struct.tlock* %113, i32 %116)
  store %struct.tlock* %117, %struct.tlock** %41, align 8
  %118 = load %struct.tlock*, %struct.tlock** %41, align 8
  %119 = getelementptr inbounds %struct.tlock, %struct.tlock* %118, i32 0, i32 0
  %120 = bitcast i32* %119 to %struct.dt_lock*
  store %struct.dt_lock* %120, %struct.dt_lock** %40, align 8
  %121 = load %struct.metapage*, %struct.metapage** %17, align 8
  %122 = getelementptr inbounds %struct.metapage, %struct.metapage* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %124, %struct.TYPE_11__** %18, align 8
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %126 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  store %struct.TYPE_11__* %125, %struct.TYPE_11__** %126, align 8
  %127 = load i32*, i32** %24, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 8
  store i32 %128, i32* %131, align 8
  %132 = load %struct.metapage*, %struct.metapage** %15, align 8
  %133 = bitcast %struct.metapage* %132 to %struct.tlock*
  %134 = load %struct.inode*, %struct.inode** %9, align 8
  %135 = bitcast %struct.inode* %134 to %struct.tlock*
  %136 = call i32 @BT_MARK_DIRTY(%struct.tlock* %133, %struct.tlock* %135)
  %137 = load i32, i32* %8, align 4
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = bitcast %struct.inode* %138 to %struct.tlock*
  %140 = load %struct.metapage*, %struct.metapage** %15, align 8
  %141 = bitcast %struct.metapage* %140 to %struct.tlock*
  %142 = load i32, i32* @tlckDTREE, align 4
  %143 = load i32, i32* @tlckENTRY, align 4
  %144 = or i32 %142, %143
  %145 = call %struct.tlock* @txLock(i32 %137, %struct.tlock* %139, %struct.tlock* %141, i32 %144)
  store %struct.tlock* %145, %struct.tlock** %41, align 8
  %146 = load %struct.tlock*, %struct.tlock** %41, align 8
  %147 = getelementptr inbounds %struct.tlock, %struct.tlock* %146, i32 0, i32 0
  %148 = bitcast i32* %147 to %struct.dt_lock*
  store %struct.dt_lock* %148, %struct.dt_lock** %39, align 8
  %149 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %150 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %151, 0
  %153 = zext i1 %152 to i32
  %154 = call i32 @ASSERT(i32 %153)
  %155 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %156 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %155, i32 0, i32 2
  %157 = load %struct.lv*, %struct.lv** %156, align 8
  %158 = getelementptr inbounds %struct.lv, %struct.lv* %157, i64 0
  store %struct.lv* %158, %struct.lv** %43, align 8
  %159 = load %struct.lv*, %struct.lv** %43, align 8
  %160 = getelementptr inbounds %struct.lv, %struct.lv* %159, i32 0, i32 0
  store i32 0, i32* %160, align 4
  %161 = load %struct.lv*, %struct.lv** %43, align 8
  %162 = getelementptr inbounds %struct.lv, %struct.lv* %161, i32 0, i32 1
  store i32 1, i32* %162, align 4
  %163 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %164 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %164, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 7
  %170 = load i8*, i8** %169, align 8
  %171 = call i64 @le64_to_cpu(i8* %170)
  store i64 %171, i64* %22, align 8
  %172 = load i64, i64* %22, align 8
  %173 = call i8* @cpu_to_le64(i64 %172)
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 7
  store i8* %173, i8** %176, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 8
  %180 = call i64 @addressPXD(i32* %179)
  %181 = call i8* @cpu_to_le64(i64 %180)
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 6
  store i8* %181, i8** %184, align 8
  %185 = load i64, i64* %19, align 8
  %186 = call i8* @cpu_to_le64(i64 %185)
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 7
  store i8* %186, i8** %189, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i32 %193, i32* %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 2
  store i32 1, i32* %202, align 8
  %203 = load i32, i32* @PSIZE, align 4
  %204 = load i32, i32* @L2DTSLOTSIZE, align 4
  %205 = ashr i32 %203, %204
  store i32 %205, i32* %38, align 4
  %206 = load i32, i32* %38, align 4
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 3
  store i32 %206, i32* %209, align 4
  %210 = load i32, i32* %38, align 4
  %211 = add nsw i32 %210, 31
  %212 = load i32, i32* @L2DTSLOTSIZE, align 4
  %213 = ashr i32 %211, %212
  store i32 %213, i32* %37, align 4
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %37, align 4
  %219 = add nsw i32 %217, %218
  store i32 %219, i32* %36, align 4
  %220 = load i32, i32* %36, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 4
  store i32 %220, i32* %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %36, align 4
  %229 = sub nsw i32 %227, %228
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 5
  store i32 %229, i32* %232, align 4
  %233 = load i64, i64* %22, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %295

235:                                              ; preds = %96
  %236 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %237 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %238, %242
  br i1 %243, label %244, label %295

244:                                              ; preds = %235
  %245 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %246 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %245, i32 0, i32 2
  %247 = load %struct.lv*, %struct.lv** %246, align 8
  %248 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %249 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.lv, %struct.lv* %247, i64 %250
  store %struct.lv* %251, %struct.lv** %44, align 8
  %252 = load %struct.lv*, %struct.lv** %44, align 8
  %253 = getelementptr inbounds %struct.lv, %struct.lv* %252, i32 0, i32 0
  store i32 0, i32* %253, align 4
  %254 = load %struct.lv*, %struct.lv** %44, align 8
  %255 = getelementptr inbounds %struct.lv, %struct.lv* %254, i32 0, i32 1
  store i32 2, i32* %255, align 4
  %256 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %257 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %257, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 1
  %262 = load %struct.dtslot*, %struct.dtslot** %261, align 8
  %263 = load i32, i32* %36, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %262, i64 %264
  store %struct.dtslot* %265, %struct.dtslot** %35, align 8
  %266 = load i32, i32* %36, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %36, align 4
  br label %268

268:                                              ; preds = %279, %244
  %269 = load i32, i32* %36, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %269, %273
  br i1 %274, label %275, label %284

275:                                              ; preds = %268
  %276 = load i32, i32* %36, align 4
  %277 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %278 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %277, i32 0, i32 0
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %275
  %280 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %281 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %280, i32 1
  store %struct.dtslot* %281, %struct.dtslot** %35, align 8
  %282 = load i32, i32* %36, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %36, align 4
  br label %268

284:                                              ; preds = %268
  %285 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %286 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %285, i32 0, i32 0
  store i32 -1, i32* %286, align 4
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %288 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %289 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %292 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = call i32 @dtInsertEntry(%struct.TYPE_11__* %287, i32 0, i32 %290, i32 %293, %struct.dt_lock** %40)
  br label %646

295:                                              ; preds = %235, %96
  %296 = load i64, i64* %22, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %362

298:                                              ; preds = %295
  %299 = load %struct.inode*, %struct.inode** %9, align 8
  %300 = bitcast %struct.inode* %299 to %struct.tlock*
  %301 = load i64, i64* %22, align 8
  %302 = load %struct.metapage*, %struct.metapage** %20, align 8
  %303 = bitcast %struct.metapage* %302 to %struct.tlock*
  %304 = load i32, i32* @PSIZE, align 4
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %306 = load i32, i32* %14, align 4
  %307 = call i32 @DT_GETPAGE(%struct.tlock* %300, i64 %301, %struct.tlock* %303, i32 %304, %struct.TYPE_11__* %305, i32 %306)
  %308 = load i32, i32* %14, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %298
  %311 = load %struct.metapage*, %struct.metapage** %17, align 8
  %312 = bitcast %struct.metapage* %311 to %struct.tlock*
  %313 = call i32 @discard_metapage(%struct.tlock* %312)
  %314 = load i32, i32* %14, align 4
  store i32 %314, i32* %7, align 4
  br label %653

315:                                              ; preds = %298
  %316 = load %struct.metapage*, %struct.metapage** %20, align 8
  %317 = bitcast %struct.metapage* %316 to %struct.tlock*
  %318 = load %struct.inode*, %struct.inode** %9, align 8
  %319 = bitcast %struct.inode* %318 to %struct.tlock*
  %320 = call i32 @BT_MARK_DIRTY(%struct.tlock* %317, %struct.tlock* %319)
  %321 = load i32, i32* %8, align 4
  %322 = load %struct.inode*, %struct.inode** %9, align 8
  %323 = bitcast %struct.inode* %322 to %struct.tlock*
  %324 = load %struct.metapage*, %struct.metapage** %20, align 8
  %325 = bitcast %struct.metapage* %324 to %struct.tlock*
  %326 = load i32, i32* @tlckDTREE, align 4
  %327 = load i32, i32* @tlckRELINK, align 4
  %328 = or i32 %326, %327
  %329 = call %struct.tlock* @txLock(i32 %321, %struct.tlock* %323, %struct.tlock* %325, i32 %328)
  store %struct.tlock* %329, %struct.tlock** %41, align 8
  %330 = load %struct.tlock*, %struct.tlock** %41, align 8
  %331 = load %struct.inode*, %struct.inode** %9, align 8
  %332 = bitcast %struct.inode* %331 to %struct.tlock*
  %333 = load %struct.metapage*, %struct.metapage** %20, align 8
  %334 = bitcast %struct.metapage* %333 to %struct.tlock*
  %335 = call i32 @jfs_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.tlock* %330, %struct.tlock* %332, %struct.tlock* %334)
  %336 = load %struct.tlock*, %struct.tlock** %41, align 8
  %337 = getelementptr inbounds %struct.tlock, %struct.tlock* %336, i32 0, i32 0
  %338 = bitcast i32* %337 to %struct.dt_lock*
  store %struct.dt_lock* %338, %struct.dt_lock** %42, align 8
  %339 = load %struct.dt_lock*, %struct.dt_lock** %42, align 8
  %340 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %339, i32 0, i32 2
  %341 = load %struct.lv*, %struct.lv** %340, align 8
  %342 = load %struct.dt_lock*, %struct.dt_lock** %42, align 8
  %343 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.lv, %struct.lv* %341, i64 %344
  store %struct.lv* %345, %struct.lv** %45, align 8
  %346 = load %struct.lv*, %struct.lv** %45, align 8
  %347 = getelementptr inbounds %struct.lv, %struct.lv* %346, i32 0, i32 0
  store i32 0, i32* %347, align 4
  %348 = load %struct.lv*, %struct.lv** %45, align 8
  %349 = getelementptr inbounds %struct.lv, %struct.lv* %348, i32 0, i32 1
  store i32 1, i32* %349, align 4
  %350 = load %struct.dt_lock*, %struct.dt_lock** %42, align 8
  %351 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = add i64 %352, 1
  store i64 %353, i64* %351, align 8
  %354 = load i64, i64* %19, align 8
  %355 = call i8* @cpu_to_le64(i64 %354)
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 6
  store i8* %355, i8** %358, align 8
  %359 = load %struct.metapage*, %struct.metapage** %20, align 8
  %360 = bitcast %struct.metapage* %359 to %struct.tlock*
  %361 = call i32 @DT_PUTPAGE(%struct.tlock* %360)
  br label %362

362:                                              ; preds = %315, %295
  %363 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %364 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  store i32 %365, i32* %25, align 4
  %366 = load i32, i32* @PSIZE, align 4
  %367 = load i32, i32* @L2DTSLOTSIZE, align 4
  %368 = ashr i32 %366, %367
  %369 = ashr i32 %368, 1
  store i32 %369, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %370 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %371 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %370, i32 0, i32 1
  %372 = load %struct.dtslot*, %struct.dtslot** %371, align 8
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %372, i64 %377
  %379 = bitcast %struct.dtslot* %378 to i64*
  store i64* %379, i64** %34, align 8
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  store i32 %383, i32* %26, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %384

384:                                              ; preds = %457, %362
  %385 = load i32, i32* %29, align 4
  %386 = load i32, i32* %26, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %460

388:                                              ; preds = %384
  %389 = load i32, i32* %30, align 4
  %390 = load i32, i32* %25, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %396

392:                                              ; preds = %388
  %393 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %394 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  store i32 %395, i32* %38, align 4
  br label %448

396:                                              ; preds = %388
  %397 = load i64*, i64** %34, align 8
  %398 = load i32, i32* %29, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = trunc i64 %401 to i32
  store i32 %402, i32* %31, align 4
  %403 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load i32, i32* @BT_TYPE, align 4
  %408 = and i32 %406, %407
  switch i32 %408, label %444 [
    i32 128, label %409
    i32 129, label %432
  ]

409:                                              ; preds = %396
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 1
  %412 = load %struct.dtslot*, %struct.dtslot** %411, align 8
  %413 = load i32, i32* %31, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %412, i64 %414
  %416 = bitcast %struct.dtslot* %415 to %struct.ldtentry*
  store %struct.ldtentry* %416, %struct.ldtentry** %32, align 8
  %417 = load %struct.inode*, %struct.inode** %9, align 8
  %418 = bitcast %struct.inode* %417 to %struct.tlock*
  %419 = call i64 @DO_INDEX(%struct.tlock* %418)
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %426

421:                                              ; preds = %409
  %422 = load %struct.ldtentry*, %struct.ldtentry** %32, align 8
  %423 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @NDTLEAF(i32 %424)
  store i32 %425, i32* %38, align 4
  br label %431

426:                                              ; preds = %409
  %427 = load %struct.ldtentry*, %struct.ldtentry** %32, align 8
  %428 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 4
  %430 = call i32 @NDTLEAF_LEGACY(i32 %429)
  store i32 %430, i32* %38, align 4
  br label %431

431:                                              ; preds = %426, %421
  br label %445

432:                                              ; preds = %396
  %433 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %434 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %433, i32 0, i32 1
  %435 = load %struct.dtslot*, %struct.dtslot** %434, align 8
  %436 = load i32, i32* %31, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %435, i64 %437
  %439 = bitcast %struct.dtslot* %438 to %struct.idtentry*
  store %struct.idtentry* %439, %struct.idtentry** %33, align 8
  %440 = load %struct.idtentry*, %struct.idtentry** %33, align 8
  %441 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @NDTINTERNAL(i32 %442)
  store i32 %443, i32* %38, align 4
  br label %445

444:                                              ; preds = %396
  br label %445

445:                                              ; preds = %444, %432, %431
  %446 = load i32, i32* %29, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %29, align 4
  br label %448

448:                                              ; preds = %445, %392
  %449 = load i32, i32* %38, align 4
  %450 = load i32, i32* %28, align 4
  %451 = add nsw i32 %450, %449
  store i32 %451, i32* %28, align 4
  %452 = load i32, i32* %28, align 4
  %453 = load i32, i32* %27, align 4
  %454 = icmp sge i32 %452, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %448
  br label %460

456:                                              ; preds = %448
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %30, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %30, align 4
  br label %384

460:                                              ; preds = %455, %384
  %461 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %462 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %461, i32 0, i32 2
  %463 = load %struct.lv*, %struct.lv** %462, align 8
  %464 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %465 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds %struct.lv, %struct.lv* %463, i64 %466
  store %struct.lv* %467, %struct.lv** %44, align 8
  %468 = load %struct.lv*, %struct.lv** %44, align 8
  %469 = getelementptr inbounds %struct.lv, %struct.lv* %468, i32 0, i32 0
  store i32 0, i32* %469, align 4
  %470 = load %struct.lv*, %struct.lv** %44, align 8
  %471 = getelementptr inbounds %struct.lv, %struct.lv* %470, i32 0, i32 1
  store i32 5, i32* %471, align 4
  %472 = load %struct.dt_lock*, %struct.dt_lock** %40, align 8
  %473 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = add i64 %474, 1
  store i64 %475, i64* %473, align 8
  %476 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %477 = load i32, i32* %29, align 4
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %479 = load %struct.inode*, %struct.inode** %9, align 8
  %480 = bitcast %struct.inode* %479 to %struct.tlock*
  %481 = call i64 @DO_INDEX(%struct.tlock* %480)
  %482 = call i32 @dtMoveEntry(%struct.TYPE_11__* %476, i32 %477, %struct.TYPE_11__* %478, %struct.dt_lock** %39, %struct.dt_lock** %40, i64 %481)
  %483 = load i32, i32* %29, align 4
  %484 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %485 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 1
  store i32 %483, i32* %486, align 4
  %487 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %488 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %488, i32 0, i32 4
  %490 = load i32, i32* %489, align 8
  store i32 %490, i32* %36, align 4
  %491 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %492 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %491, i32 0, i32 1
  %493 = load %struct.dtslot*, %struct.dtslot** %492, align 8
  %494 = load i32, i32* %36, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %493, i64 %495
  store %struct.dtslot* %496, %struct.dtslot** %35, align 8
  %497 = load i32, i32* %36, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %36, align 4
  br label %499

499:                                              ; preds = %510, %460
  %500 = load i32, i32* %36, align 4
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %502 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = icmp slt i32 %500, %504
  br i1 %505, label %506, label %515

506:                                              ; preds = %499
  %507 = load i32, i32* %36, align 4
  %508 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %509 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %508, i32 0, i32 0
  store i32 %507, i32* %509, align 4
  br label %510

510:                                              ; preds = %506
  %511 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %512 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %511, i32 1
  store %struct.dtslot* %512, %struct.dtslot** %35, align 8
  %513 = load i32, i32* %36, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* %36, align 4
  br label %499

515:                                              ; preds = %499
  %516 = load %struct.dtslot*, %struct.dtslot** %35, align 8
  %517 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %516, i32 0, i32 0
  store i32 -1, i32* %517, align 4
  %518 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %519 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 8
  %522 = and i32 %521, 128
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %572

524:                                              ; preds = %515
  %525 = load %struct.inode*, %struct.inode** %9, align 8
  %526 = bitcast %struct.inode* %525 to %struct.tlock*
  %527 = call i64 @DO_INDEX(%struct.tlock* %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %572

529:                                              ; preds = %524
  store %struct.metapage* null, %struct.metapage** %20, align 8
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %531 = call i64* @DT_GETSTBL(%struct.TYPE_11__* %530)
  store i64* %531, i64** %34, align 8
  store i32 0, i32* %38, align 4
  br label %532

532:                                              ; preds = %561, %529
  %533 = load i32, i32* %38, align 4
  %534 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %535, i32 0, i32 1
  %537 = load i32, i32* %536, align 4
  %538 = icmp slt i32 %533, %537
  br i1 %538, label %539, label %564

539:                                              ; preds = %532
  %540 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 1
  %542 = load %struct.dtslot*, %struct.dtslot** %541, align 8
  %543 = load i64*, i64** %34, align 8
  %544 = load i32, i32* %38, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i64, i64* %543, i64 %545
  %547 = load i64, i64* %546, align 8
  %548 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %542, i64 %547
  %549 = bitcast %struct.dtslot* %548 to %struct.ldtentry*
  store %struct.ldtentry* %549, %struct.ldtentry** %32, align 8
  %550 = load i32, i32* %8, align 4
  %551 = load %struct.inode*, %struct.inode** %9, align 8
  %552 = bitcast %struct.inode* %551 to %struct.tlock*
  %553 = load %struct.ldtentry*, %struct.ldtentry** %32, align 8
  %554 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @le32_to_cpu(i32 %555)
  %557 = load i64, i64* %19, align 8
  %558 = load i32, i32* %38, align 4
  %559 = bitcast %struct.metapage** %20 to %struct.tlock**
  %560 = call i32 @modify_index(i32 %550, %struct.tlock* %552, i32 %556, i64 %557, i32 %558, %struct.tlock** %559, i64* %46)
  br label %561

561:                                              ; preds = %539
  %562 = load i32, i32* %38, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %38, align 4
  br label %532

564:                                              ; preds = %532
  %565 = load %struct.metapage*, %struct.metapage** %20, align 8
  %566 = icmp ne %struct.metapage* %565, null
  br i1 %566, label %567, label %571

567:                                              ; preds = %564
  %568 = load %struct.metapage*, %struct.metapage** %20, align 8
  %569 = bitcast %struct.metapage* %568 to %struct.tlock*
  %570 = call i32 @release_metapage(%struct.tlock* %569)
  br label %571

571:                                              ; preds = %567, %564
  br label %572

572:                                              ; preds = %571, %524, %515
  %573 = load i32, i32* %25, align 4
  %574 = load i32, i32* %30, align 4
  %575 = icmp sle i32 %573, %574
  br i1 %575, label %576, label %632

576:                                              ; preds = %572
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %578 = load i32, i32* %25, align 4
  %579 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %580 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %583 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %582, i32 0, i32 2
  %584 = load i32, i32* %583, align 8
  %585 = call i32 @dtInsertEntry(%struct.TYPE_11__* %577, i32 %578, i32 %581, i32 %584, %struct.dt_lock** %39)
  %586 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %587 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %586, i32 0, i32 0
  %588 = load i64, i64* %587, align 8
  %589 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %590 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %589, i32 0, i32 1
  %591 = load i64, i64* %590, align 8
  %592 = icmp uge i64 %588, %591
  br i1 %592, label %593, label %597

593:                                              ; preds = %576
  %594 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %595 = call i64 @txLinelock(%struct.dt_lock* %594)
  %596 = inttoptr i64 %595 to %struct.dt_lock*
  store %struct.dt_lock* %596, %struct.dt_lock** %39, align 8
  br label %597

597:                                              ; preds = %593, %576
  %598 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %599 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %598, i32 0, i32 2
  %600 = load %struct.lv*, %struct.lv** %599, align 8
  %601 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %602 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %601, i32 0, i32 0
  %603 = load i64, i64* %602, align 8
  %604 = getelementptr inbounds %struct.lv, %struct.lv* %600, i64 %603
  store %struct.lv* %604, %struct.lv** %43, align 8
  %605 = load i32, i32* %25, align 4
  %606 = load i32, i32* @L2DTSLOTSIZE, align 4
  %607 = ashr i32 %605, %606
  store i32 %607, i32* %38, align 4
  %608 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %609 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %608, i32 0, i32 0
  %610 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* %38, align 4
  %613 = add nsw i32 %611, %612
  %614 = load %struct.lv*, %struct.lv** %43, align 8
  %615 = getelementptr inbounds %struct.lv, %struct.lv* %614, i32 0, i32 0
  store i32 %613, i32* %615, align 4
  %616 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %617 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %616, i32 0, i32 0
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 1
  %619 = load i32, i32* %618, align 4
  %620 = sub nsw i32 %619, 1
  %621 = load i32, i32* @L2DTSLOTSIZE, align 4
  %622 = ashr i32 %620, %621
  %623 = load i32, i32* %38, align 4
  %624 = sub nsw i32 %622, %623
  %625 = add nsw i32 %624, 1
  %626 = load %struct.lv*, %struct.lv** %43, align 8
  %627 = getelementptr inbounds %struct.lv, %struct.lv* %626, i32 0, i32 1
  store i32 %625, i32* %627, align 4
  %628 = load %struct.dt_lock*, %struct.dt_lock** %39, align 8
  %629 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = add i64 %630, 1
  store i64 %631, i64* %629, align 8
  br label %645

632:                                              ; preds = %572
  %633 = load i32, i32* %29, align 4
  %634 = load i32, i32* %25, align 4
  %635 = sub nsw i32 %634, %633
  store i32 %635, i32* %25, align 4
  %636 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %637 = load i32, i32* %25, align 4
  %638 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %639 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %638, i32 0, i32 3
  %640 = load i32, i32* %639, align 4
  %641 = load %struct.dtsplit*, %struct.dtsplit** %10, align 8
  %642 = getelementptr inbounds %struct.dtsplit, %struct.dtsplit* %641, i32 0, i32 2
  %643 = load i32, i32* %642, align 8
  %644 = call i32 @dtInsertEntry(%struct.TYPE_11__* %636, i32 %637, i32 %640, i32 %643, %struct.dt_lock** %40)
  br label %645

645:                                              ; preds = %632, %597
  br label %646

646:                                              ; preds = %645, %284
  %647 = load %struct.metapage*, %struct.metapage** %17, align 8
  %648 = load %struct.metapage**, %struct.metapage*** %11, align 8
  store %struct.metapage* %647, %struct.metapage** %648, align 8
  %649 = load i32*, i32** %24, align 8
  %650 = load i32, i32* %649, align 4
  %651 = load i32*, i32** %13, align 8
  store i32 %650, i32* %651, align 4
  %652 = load i32, i32* %14, align 4
  store i32 %652, i32* %7, align 4
  br label %653

653:                                              ; preds = %646, %310, %91, %80
  %654 = load i32, i32* %7, align 4
  ret i32 %654
}

declare dso_local %struct.TYPE_11__* @DT_PAGE(%struct.tlock*, %struct.tlock*) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local %struct.tlock* @get_metapage(%struct.tlock*, i64, i32, i32) #1

declare dso_local i32 @dquot_alloc_block(%struct.tlock*, i32) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @release_metapage(%struct.tlock*) #1

declare dso_local i32 @jfs_info(i8*, %struct.tlock*, %struct.tlock*, %struct.tlock*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.tlock*, %struct.tlock*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.tlock*, %struct.tlock*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @dtInsertEntry(%struct.TYPE_11__*, i32, i32, i32, %struct.dt_lock**) #1

declare dso_local i32 @DT_GETPAGE(%struct.tlock*, i64, %struct.tlock*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @discard_metapage(%struct.tlock*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.tlock*) #1

declare dso_local i64 @DO_INDEX(%struct.tlock*) #1

declare dso_local i32 @NDTLEAF(i32) #1

declare dso_local i32 @NDTLEAF_LEGACY(i32) #1

declare dso_local i32 @NDTINTERNAL(i32) #1

declare dso_local i32 @dtMoveEntry(%struct.TYPE_11__*, i32, %struct.TYPE_11__*, %struct.dt_lock**, %struct.dt_lock**, i64) #1

declare dso_local i64* @DT_GETSTBL(%struct.TYPE_11__*) #1

declare dso_local i32 @modify_index(i32, %struct.tlock*, i32, i64, i32, %struct.tlock**, i64*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
