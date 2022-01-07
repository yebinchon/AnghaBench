; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txFreeMap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_txnmgr.c_txFreeMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.maplock = type { i32 }
%struct.tblock = type { i32 }
%struct.xdlistlock = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.pxd_lock = type { %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.inode* }

@.str = private unnamed_addr constant [47 x i8] c"txFreeMap: tblk:0x%p maplock:0x%p maptype:0x%x\00", align 1
@COMMIT_PMAP = common dso_local global i32 0, align 4
@COMMIT_PWMAP = common dso_local global i32 0, align 4
@mlckFREEXADLIST = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"freePMap: xaddr:0x%lx xlen:%d\00", align 1
@mlckFREEPXD = common dso_local global i32 0, align 4
@COMMIT_WMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"freeWMap: xaddr:0x%lx xlen:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txFreeMap(%struct.inode* %0, %struct.maplock* %1, %struct.tblock* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.maplock*, align 8
  %7 = alloca %struct.tblock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.xdlistlock*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pxd_lock*, align 8
  %15 = alloca %struct.xdlistlock*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.maplock* %1, %struct.maplock** %6, align 8
  store %struct.tblock* %2, %struct.tblock** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_9__* @JFS_SBI(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %9, align 8
  %24 = load %struct.tblock*, %struct.tblock** %7, align 8
  %25 = ptrtoint %struct.tblock* %24 to i32
  %26 = load %struct.maplock*, %struct.maplock** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.maplock* %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @COMMIT_PMAP, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @COMMIT_PWMAP, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %145

36:                                               ; preds = %32, %4
  %37 = load %struct.maplock*, %struct.maplock** %6, align 8
  %38 = getelementptr inbounds %struct.maplock, %struct.maplock* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @mlckFREEXADLIST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %84

43:                                               ; preds = %36
  %44 = load %struct.maplock*, %struct.maplock** %6, align 8
  %45 = bitcast %struct.maplock* %44 to %struct.xdlistlock*
  store %struct.xdlistlock* %45, %struct.xdlistlock** %10, align 8
  %46 = load %struct.xdlistlock*, %struct.xdlistlock** %10, align 8
  %47 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %17, align 4
  br label %49

49:                                               ; preds = %78, %43
  %50 = load i32, i32* %17, align 4
  %51 = load %struct.xdlistlock*, %struct.xdlistlock** %10, align 8
  %52 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %83

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @XAD_NEW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = call i64 @addressXAD(%struct.TYPE_8__* %63)
  store i64 %64, i64* %12, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = call i32 @lengthXAD(%struct.TYPE_8__* %65)
  store i32 %66, i32* %13, align 4
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.tblock*, %struct.tblock** %7, align 8
  %72 = call i32 @dbUpdatePMap(%struct.inode* %67, i32 1, i64 %68, i64 %70, %struct.tblock* %71)
  %73 = load i64, i64* %12, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %62, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 1
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %11, align 8
  br label %49

83:                                               ; preds = %49
  br label %144

84:                                               ; preds = %36
  %85 = load %struct.maplock*, %struct.maplock** %6, align 8
  %86 = getelementptr inbounds %struct.maplock, %struct.maplock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @mlckFREEPXD, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load %struct.maplock*, %struct.maplock** %6, align 8
  %93 = bitcast %struct.maplock* %92 to %struct.pxd_lock*
  store %struct.pxd_lock* %93, %struct.pxd_lock** %14, align 8
  %94 = load %struct.pxd_lock*, %struct.pxd_lock** %14, align 8
  %95 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %94, i32 0, i32 0
  %96 = call i64 @addressPXD(%struct.TYPE_8__* %95)
  store i64 %96, i64* %12, align 8
  %97 = load %struct.pxd_lock*, %struct.pxd_lock** %14, align 8
  %98 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %97, i32 0, i32 0
  %99 = call i32 @lengthPXD(%struct.TYPE_8__* %98)
  store i32 %99, i32* %13, align 4
  %100 = load %struct.inode*, %struct.inode** %9, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.tblock*, %struct.tblock** %7, align 8
  %105 = call i32 @dbUpdatePMap(%struct.inode* %100, i32 1, i64 %101, i64 %103, %struct.tblock* %104)
  %106 = load i64, i64* %12, align 8
  %107 = trunc i64 %106 to i32
  %108 = load i32, i32* %13, align 4
  %109 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108)
  br label %143

110:                                              ; preds = %84
  %111 = load %struct.maplock*, %struct.maplock** %6, align 8
  %112 = bitcast %struct.maplock* %111 to %struct.xdlistlock*
  store %struct.xdlistlock* %112, %struct.xdlistlock** %15, align 8
  %113 = load %struct.xdlistlock*, %struct.xdlistlock** %15, align 8
  %114 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  store %struct.TYPE_8__* %115, %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %137, %110
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.xdlistlock*, %struct.xdlistlock** %15, align 8
  %119 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %116
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %124 = call i64 @addressPXD(%struct.TYPE_8__* %123)
  store i64 %124, i64* %12, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %126 = call i32 @lengthPXD(%struct.TYPE_8__* %125)
  store i32 %126, i32* %13, align 4
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = load i64, i64* %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.tblock*, %struct.tblock** %7, align 8
  %132 = call i32 @dbUpdatePMap(%struct.inode* %127, i32 1, i64 %128, i64 %130, %struct.tblock* %131)
  %133 = load i64, i64* %12, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %13, align 4
  %136 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %122
  %138 = load i32, i32* %17, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %17, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 1
  store %struct.TYPE_8__* %141, %struct.TYPE_8__** %16, align 8
  br label %116

142:                                              ; preds = %116
  br label %143

143:                                              ; preds = %142, %91
  br label %144

144:                                              ; preds = %143, %83
  br label %145

145:                                              ; preds = %144, %32
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @COMMIT_PWMAP, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %153, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @COMMIT_WMAP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %253

153:                                              ; preds = %149, %145
  %154 = load %struct.maplock*, %struct.maplock** %6, align 8
  %155 = getelementptr inbounds %struct.maplock, %struct.maplock* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @mlckFREEXADLIST, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %194

160:                                              ; preds = %153
  %161 = load %struct.maplock*, %struct.maplock** %6, align 8
  %162 = bitcast %struct.maplock* %161 to %struct.xdlistlock*
  store %struct.xdlistlock* %162, %struct.xdlistlock** %10, align 8
  %163 = load %struct.xdlistlock*, %struct.xdlistlock** %10, align 8
  %164 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %163, i32 0, i32 1
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  store %struct.TYPE_8__* %165, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %17, align 4
  br label %166

166:                                              ; preds = %188, %160
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.xdlistlock*, %struct.xdlistlock** %10, align 8
  %169 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %193

172:                                              ; preds = %166
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %174 = call i64 @addressXAD(%struct.TYPE_8__* %173)
  store i64 %174, i64* %12, align 8
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %176 = call i32 @lengthXAD(%struct.TYPE_8__* %175)
  store i32 %176, i32* %13, align 4
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = load i64, i64* %12, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = call i32 @dbFree(%struct.inode* %177, i64 %178, i64 %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  %184 = load i64, i64* %12, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* %13, align 4
  %187 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %172
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 1
  store %struct.TYPE_8__* %192, %struct.TYPE_8__** %11, align 8
  br label %166

193:                                              ; preds = %166
  br label %252

194:                                              ; preds = %153
  %195 = load %struct.maplock*, %struct.maplock** %6, align 8
  %196 = getelementptr inbounds %struct.maplock, %struct.maplock* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @mlckFREEPXD, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %194
  %202 = load %struct.maplock*, %struct.maplock** %6, align 8
  %203 = bitcast %struct.maplock* %202 to %struct.pxd_lock*
  store %struct.pxd_lock* %203, %struct.pxd_lock** %14, align 8
  %204 = load %struct.pxd_lock*, %struct.pxd_lock** %14, align 8
  %205 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %204, i32 0, i32 0
  %206 = call i64 @addressPXD(%struct.TYPE_8__* %205)
  store i64 %206, i64* %12, align 8
  %207 = load %struct.pxd_lock*, %struct.pxd_lock** %14, align 8
  %208 = getelementptr inbounds %struct.pxd_lock, %struct.pxd_lock* %207, i32 0, i32 0
  %209 = call i32 @lengthPXD(%struct.TYPE_8__* %208)
  store i32 %209, i32* %13, align 4
  %210 = load %struct.inode*, %struct.inode** %5, align 8
  %211 = load i64, i64* %12, align 8
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = call i32 @dbFree(%struct.inode* %210, i64 %211, i64 %213)
  %215 = load i64, i64* %12, align 8
  %216 = trunc i64 %215 to i32
  %217 = load i32, i32* %13, align 4
  %218 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %216, i32 %217)
  br label %251

219:                                              ; preds = %194
  %220 = load %struct.maplock*, %struct.maplock** %6, align 8
  %221 = bitcast %struct.maplock* %220 to %struct.xdlistlock*
  store %struct.xdlistlock* %221, %struct.xdlistlock** %15, align 8
  %222 = load %struct.xdlistlock*, %struct.xdlistlock** %15, align 8
  %223 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %222, i32 0, i32 1
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  store %struct.TYPE_8__* %224, %struct.TYPE_8__** %16, align 8
  store i32 0, i32* %17, align 4
  br label %225

225:                                              ; preds = %245, %219
  %226 = load i32, i32* %17, align 4
  %227 = load %struct.xdlistlock*, %struct.xdlistlock** %15, align 8
  %228 = getelementptr inbounds %struct.xdlistlock, %struct.xdlistlock* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp slt i32 %226, %229
  br i1 %230, label %231, label %250

231:                                              ; preds = %225
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %233 = call i64 @addressPXD(%struct.TYPE_8__* %232)
  store i64 %233, i64* %12, align 8
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %235 = call i32 @lengthPXD(%struct.TYPE_8__* %234)
  store i32 %235, i32* %13, align 4
  %236 = load %struct.inode*, %struct.inode** %5, align 8
  %237 = load i64, i64* %12, align 8
  %238 = load i32, i32* %13, align 4
  %239 = sext i32 %238 to i64
  %240 = call i32 @dbFree(%struct.inode* %236, i64 %237, i64 %239)
  %241 = load i64, i64* %12, align 8
  %242 = trunc i64 %241 to i32
  %243 = load i32, i32* %13, align 4
  %244 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %231
  %246 = load i32, i32* %17, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %17, align 4
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 1
  store %struct.TYPE_8__* %249, %struct.TYPE_8__** %16, align 8
  br label %225

250:                                              ; preds = %225
  br label %251

251:                                              ; preds = %250, %201
  br label %252

252:                                              ; preds = %251, %193
  br label %253

253:                                              ; preds = %252, %149
  ret void
}

declare dso_local %struct.TYPE_9__* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i64 @addressXAD(%struct.TYPE_8__*) #1

declare dso_local i32 @lengthXAD(%struct.TYPE_8__*) #1

declare dso_local i32 @dbUpdatePMap(%struct.inode*, i32, i64, i64, %struct.tblock*) #1

declare dso_local i64 @addressPXD(%struct.TYPE_8__*) #1

declare dso_local i32 @lengthPXD(%struct.TYPE_8__*) #1

declare dso_local i32 @dbFree(%struct.inode*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
