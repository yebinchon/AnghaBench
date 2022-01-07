; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtDeleteUp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dtree.c_dtDeleteUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i32 }
%struct.btstack = type { i32 }
%struct.btframe = type { i32, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i64 }
%struct.tlock = type { i32 }
%struct.pxd_lock = type { i32, i32, i8* }

@tlckDTREE = common dso_local global i32 0, align 4
@tlckFREE = common dso_local global i32 0, align 4
@mlckFREEPXD = common dso_local global i8* null, align 8
@PSIZE = common dso_local global i64 0, align 8
@BT_ROOT = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.metapage*, %struct.TYPE_9__*, %struct.btstack*)* @dtDeleteUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtDeleteUp(i32 %0, %struct.inode* %1, %struct.metapage* %2, %struct.TYPE_9__* %3, %struct.btstack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.metapage*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.btstack*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.btframe*, align 8
  %19 = alloca %struct.dt_lock*, align 8
  %20 = alloca %struct.tlock*, align 8
  %21 = alloca %struct.lv*, align 8
  %22 = alloca %struct.pxd_lock*, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.metapage* %2, %struct.metapage** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.btstack* %4, %struct.btstack** %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load %struct.metapage*, %struct.metapage** %9, align 8
  %25 = call i64 @BT_IS_ROOT(%struct.metapage* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %5
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i32 @PARENT(%struct.inode* %30)
  %32 = call i32 @dtInitRoot(i32 %28, %struct.inode* %29, i32 %31)
  %33 = load %struct.metapage*, %struct.metapage** %9, align 8
  %34 = call i32 @DT_PUTPAGE(%struct.metapage* %33)
  store i32 0, i32* %6, align 4
  br label %294

35:                                               ; preds = %5
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = load i32, i32* @tlckDTREE, align 4
  %39 = load i32, i32* @tlckFREE, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.tlock* @txMaplock(i32 %36, %struct.inode* %37, i32 %40)
  store %struct.tlock* %41, %struct.tlock** %20, align 8
  %42 = load %struct.tlock*, %struct.tlock** %20, align 8
  %43 = getelementptr inbounds %struct.tlock, %struct.tlock* %42, i32 0, i32 0
  %44 = bitcast i32* %43 to %struct.pxd_lock*
  store %struct.pxd_lock* %44, %struct.pxd_lock** %22, align 8
  %45 = load i8*, i8** @mlckFREEPXD, align 8
  %46 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %47 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %53 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %55 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = call i32 @dtRelink(i32 %56, %struct.inode* %57, %struct.TYPE_9__* %58)
  store i32 %59, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = load %struct.metapage*, %struct.metapage** %9, align 8
  %63 = call i32 @BT_PUTPAGE(%struct.metapage* %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %294

65:                                               ; preds = %35
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = call i32 @lengthPXD(i32* %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.inode*, %struct.inode** %8, align 8
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @dquot_free_block(%struct.inode* %70, i32 %71)
  %73 = load %struct.metapage*, %struct.metapage** %9, align 8
  %74 = call i32 @discard_metapage(%struct.metapage* %73)
  br label %75

75:                                               ; preds = %149, %65
  %76 = load %struct.btstack*, %struct.btstack** %11, align 8
  %77 = call %struct.btframe* @BT_POP(%struct.btstack* %76)
  store %struct.btframe* %77, %struct.btframe** %18, align 8
  %78 = icmp ne %struct.btframe* %77, null
  br i1 %78, label %79, label %281

79:                                               ; preds = %75
  %80 = load %struct.inode*, %struct.inode** %8, align 8
  %81 = load %struct.btframe*, %struct.btframe** %18, align 8
  %82 = getelementptr inbounds %struct.btframe, %struct.btframe* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.metapage*, %struct.metapage** %13, align 8
  %85 = load i64, i64* @PSIZE, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @DT_GETPAGE(%struct.inode* %80, i32 %83, %struct.metapage* %84, i64 %85, %struct.TYPE_9__* %86, i32 %87)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %6, align 4
  br label %294

93:                                               ; preds = %79
  %94 = load %struct.btframe*, %struct.btframe** %18, align 8
  %95 = getelementptr inbounds %struct.btframe, %struct.btframe* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %159

103:                                              ; preds = %93
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BT_ROOT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @PARENT(%struct.inode* %114)
  %116 = call i32 @dtInitRoot(i32 %112, %struct.inode* %113, i32 %115)
  %117 = load %struct.metapage*, %struct.metapage** %13, align 8
  %118 = call i32 @DT_PUTPAGE(%struct.metapage* %117)
  store i32 0, i32* %6, align 4
  br label %294

119:                                              ; preds = %103
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.inode*, %struct.inode** %8, align 8
  %122 = load i32, i32* @tlckDTREE, align 4
  %123 = load i32, i32* @tlckFREE, align 4
  %124 = or i32 %122, %123
  %125 = call %struct.tlock* @txMaplock(i32 %120, %struct.inode* %121, i32 %124)
  store %struct.tlock* %125, %struct.tlock** %20, align 8
  %126 = load %struct.tlock*, %struct.tlock** %20, align 8
  %127 = getelementptr inbounds %struct.tlock, %struct.tlock* %126, i32 0, i32 0
  %128 = bitcast i32* %127 to %struct.pxd_lock*
  store %struct.pxd_lock* %128, %struct.pxd_lock** %22, align 8
  %129 = load i8*, i8** @mlckFREEPXD, align 8
  %130 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %131 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %130, i32 0, i32 2
  store i8* %129, i8** %131, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %137 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %136, i32 0, i32 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.pxd_lock*, %struct.pxd_lock** %22, align 8
  %139 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.inode*, %struct.inode** %8, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %143 = call i32 @dtRelink(i32 %140, %struct.inode* %141, %struct.TYPE_9__* %142)
  store i32 %143, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %119
  %146 = load %struct.metapage*, %struct.metapage** %13, align 8
  %147 = call i32 @DT_PUTPAGE(%struct.metapage* %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %6, align 4
  br label %294

149:                                              ; preds = %119
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = call i32 @lengthPXD(i32* %152)
  store i32 %153, i32* %17, align 4
  %154 = load %struct.inode*, %struct.inode** %8, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 @dquot_free_block(%struct.inode* %154, i32 %155)
  %157 = load %struct.metapage*, %struct.metapage** %13, align 8
  %158 = call i32 @discard_metapage(%struct.metapage* %157)
  br label %75

159:                                              ; preds = %93
  %160 = load %struct.metapage*, %struct.metapage** %13, align 8
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = call i32 @BT_MARK_DIRTY(%struct.metapage* %160, %struct.inode* %161)
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.inode*, %struct.inode** %8, align 8
  %165 = load %struct.metapage*, %struct.metapage** %13, align 8
  %166 = load i32, i32* @tlckDTREE, align 4
  %167 = load i32, i32* @tlckENTRY, align 4
  %168 = or i32 %166, %167
  %169 = call %struct.tlock* @txLock(i32 %163, %struct.inode* %164, %struct.metapage* %165, i32 %168)
  store %struct.tlock* %169, %struct.tlock** %20, align 8
  %170 = load %struct.tlock*, %struct.tlock** %20, align 8
  %171 = getelementptr inbounds %struct.tlock, %struct.tlock* %170, i32 0, i32 0
  %172 = bitcast i32* %171 to %struct.dt_lock*
  store %struct.dt_lock* %172, %struct.dt_lock** %19, align 8
  %173 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %174 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %177 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp uge i64 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %159
  %181 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %182 = call i64 @txLinelock(%struct.dt_lock* %181)
  %183 = inttoptr i64 %182 to %struct.dt_lock*
  store %struct.dt_lock* %183, %struct.dt_lock** %19, align 8
  br label %184

184:                                              ; preds = %180, %159
  %185 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %186 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %185, i32 0, i32 2
  %187 = load %struct.lv*, %struct.lv** %186, align 8
  %188 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %189 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds %struct.lv, %struct.lv* %187, i64 %190
  store %struct.lv* %191, %struct.lv** %21, align 8
  %192 = load %struct.lv*, %struct.lv** %21, align 8
  %193 = getelementptr inbounds %struct.lv, %struct.lv* %192, i32 0, i32 1
  store i64 0, i64* %193, align 8
  %194 = load %struct.lv*, %struct.lv** %21, align 8
  %195 = getelementptr inbounds %struct.lv, %struct.lv* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %197 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %197, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @BT_ROOT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %255, label %207

207:                                              ; preds = %184
  %208 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %209 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %212 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = icmp ult i64 %210, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load %struct.lv*, %struct.lv** %21, align 8
  %217 = getelementptr inbounds %struct.lv, %struct.lv* %216, i32 1
  store %struct.lv* %217, %struct.lv** %21, align 8
  br label %226

218:                                              ; preds = %207
  %219 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %220 = call i64 @txLinelock(%struct.dt_lock* %219)
  %221 = inttoptr i64 %220 to %struct.dt_lock*
  store %struct.dt_lock* %221, %struct.dt_lock** %19, align 8
  %222 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %223 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %222, i32 0, i32 2
  %224 = load %struct.lv*, %struct.lv** %223, align 8
  %225 = getelementptr inbounds %struct.lv, %struct.lv* %224, i64 0
  store %struct.lv* %225, %struct.lv** %21, align 8
  br label %226

226:                                              ; preds = %218, %215
  %227 = load i32, i32* %15, align 4
  %228 = load i32, i32* @L2DTSLOTSIZE, align 4
  %229 = ashr i32 %227, %228
  store i32 %229, i32* %23, align 4
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %23, align 4
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %233, %235
  %237 = load %struct.lv*, %struct.lv** %21, align 8
  %238 = getelementptr inbounds %struct.lv, %struct.lv* %237, i32 0, i32 1
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* @L2DTSLOTSIZE, align 4
  %245 = ashr i32 %243, %244
  %246 = load i32, i32* %23, align 4
  %247 = sub nsw i32 %245, %246
  %248 = add nsw i32 %247, 1
  %249 = load %struct.lv*, %struct.lv** %21, align 8
  %250 = getelementptr inbounds %struct.lv, %struct.lv* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.dt_lock*, %struct.dt_lock** %19, align 8
  %252 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %252, align 8
  br label %255

255:                                              ; preds = %226, %184
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @dtDeleteEntry(%struct.TYPE_9__* %256, i32 %257, %struct.dt_lock** %19)
  %259 = load i32, i32* %15, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %255
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @BT_ROOT, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %275, label %269

269:                                              ; preds = %261
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269, %261
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %277 = call i32 @dtTruncateEntry(%struct.TYPE_9__* %276, i32 0, %struct.dt_lock** %19)
  br label %278

278:                                              ; preds = %275, %269, %255
  %279 = load %struct.metapage*, %struct.metapage** %13, align 8
  %280 = call i32 @DT_PUTPAGE(%struct.metapage* %279)
  br label %281

281:                                              ; preds = %278, %75
  %282 = load %struct.inode*, %struct.inode** %8, align 8
  %283 = call i32 @DO_INDEX(%struct.inode* %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %293, label %285

285:                                              ; preds = %281
  %286 = load i64, i64* @PSIZE, align 8
  %287 = load %struct.inode*, %struct.inode** %8, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = sub nsw i64 %290, %286
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %288, align 4
  br label %293

293:                                              ; preds = %285, %281
  store i32 0, i32* %6, align 4
  br label %294

294:                                              ; preds = %293, %145, %111, %91, %61, %27
  %295 = load i32, i32* %6, align 4
  ret i32 %295
}

declare dso_local i64 @BT_IS_ROOT(%struct.metapage*) #1

declare dso_local i32 @dtInitRoot(i32, %struct.inode*, i32) #1

declare dso_local i32 @PARENT(%struct.inode*) #1

declare dso_local i32 @DT_PUTPAGE(%struct.metapage*) #1

declare dso_local %struct.tlock* @txMaplock(i32, %struct.inode*, i32) #1

declare dso_local i32 @dtRelink(i32, %struct.inode*, %struct.TYPE_9__*) #1

declare dso_local i32 @BT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i32) #1

declare dso_local i32 @discard_metapage(%struct.metapage*) #1

declare dso_local %struct.btframe* @BT_POP(%struct.btstack*) #1

declare dso_local i32 @DT_GETPAGE(%struct.inode*, i32, %struct.metapage*, i64, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i32 @dtDeleteEntry(%struct.TYPE_9__*, i32, %struct.dt_lock**) #1

declare dso_local i32 @dtTruncateEntry(%struct.TYPE_9__*, i32, %struct.dt_lock**) #1

declare dso_local i32 @DO_INDEX(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
