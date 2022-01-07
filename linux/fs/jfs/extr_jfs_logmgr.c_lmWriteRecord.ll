; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmWriteRecord.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_logmgr.c_lmWriteRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.inlinelock = type { i32 }
%struct.jfs_log = type { i32, i32, %struct.lbuf*, i32 }
%struct.lbuf = type { i32, i64 }
%struct.tblock = type { i32, i32, i32, i32, %struct.lbuf*, i32 }
%struct.lrd = type { i32, i32 }
%struct.tlock = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.logpage = type { i32 }
%struct.linelock = type { i32, i32, i32, i32, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.lvd = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@tlckPAGELOCK = common dso_local global i32 0, align 4
@tlckINODELOCK = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lmWriteRecord: UFO tlck:0x%p\00", align 1
@LOGPSIZE = common dso_local global i32 0, align 4
@LOGPTLRSIZE = common dso_local global i32 0, align 4
@LOGPHDRSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"lmWriteRecord: lv offset:%d length:%d\00", align 1
@LOGRDSIZE = common dso_local global i32 0, align 4
@L2LOGPSIZE = common dso_local global i32 0, align 4
@LOG_COMMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"wr: tclsn:0x%x, beor:0x%x\00", align 1
@lmStat = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@tblkGC_QUEUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"lmWriteRecord: lrd:0x%04x bp:0x%p pn:%d eor:0x%x\00", align 1
@inlinelock = common dso_local global %struct.inlinelock* null, align 8
@tlckINLINELOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_log*, %struct.tblock*, %struct.lrd*, %struct.tlock*)* @lmWriteRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lmWriteRecord(%struct.jfs_log* %0, %struct.tblock* %1, %struct.lrd* %2, %struct.tlock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.jfs_log*, align 8
  %7 = alloca %struct.tblock*, align 8
  %8 = alloca %struct.lrd*, align 8
  %9 = alloca %struct.tlock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lbuf*, align 8
  %12 = alloca %struct.logpage*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.linelock*, align 8
  %23 = alloca %struct.lv*, align 8
  %24 = alloca %struct.lvd*, align 8
  %25 = alloca i32, align 4
  store %struct.jfs_log* %0, %struct.jfs_log** %6, align 8
  store %struct.tblock* %1, %struct.tblock** %7, align 8
  store %struct.lrd* %2, %struct.lrd** %8, align 8
  store %struct.tlock* %3, %struct.tlock** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %21, align 4
  %26 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %27 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %26, i32 0, i32 2
  %28 = load %struct.lbuf*, %struct.lbuf** %27, align 8
  store %struct.lbuf* %28, %struct.lbuf** %11, align 8
  %29 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %30 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.logpage*
  store %struct.logpage* %32, %struct.logpage** %12, align 8
  %33 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %34 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %14, align 4
  %36 = load %struct.tlock*, %struct.tlock** %9, align 8
  %37 = icmp eq %struct.tlock* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %246

39:                                               ; preds = %4
  %40 = load %struct.tlock*, %struct.tlock** %9, align 8
  %41 = getelementptr inbounds %struct.tlock, %struct.tlock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @tlckPAGELOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.tlock*, %struct.tlock** %9, align 8
  %48 = getelementptr inbounds %struct.tlock, %struct.tlock* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %16, align 8
  %53 = load %struct.tlock*, %struct.tlock** %9, align 8
  %54 = getelementptr inbounds %struct.tlock, %struct.tlock* %53, i32 0, i32 2
  %55 = bitcast i32* %54 to %struct.linelock*
  store %struct.linelock* %55, %struct.linelock** %22, align 8
  br label %90

56:                                               ; preds = %39
  %57 = load %struct.tlock*, %struct.tlock** %9, align 8
  %58 = getelementptr inbounds %struct.tlock, %struct.tlock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @tlckINODELOCK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.tlock*, %struct.tlock** %9, align 8
  %65 = getelementptr inbounds %struct.tlock, %struct.tlock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @tlckDTREE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.tlock*, %struct.tlock** %9, align 8
  %72 = getelementptr inbounds %struct.tlock, %struct.tlock* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.TYPE_6__* @JFS_IP(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32* %75, i32** %16, align 8
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.tlock*, %struct.tlock** %9, align 8
  %78 = getelementptr inbounds %struct.tlock, %struct.tlock* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.TYPE_6__* @JFS_IP(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32* %81, i32** %16, align 8
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.tlock*, %struct.tlock** %9, align 8
  %84 = getelementptr inbounds %struct.tlock, %struct.tlock* %83, i32 0, i32 2
  %85 = bitcast i32* %84 to %struct.linelock*
  store %struct.linelock* %85, %struct.linelock** %22, align 8
  br label %89

86:                                               ; preds = %56
  %87 = load %struct.tlock*, %struct.tlock** %9, align 8
  %88 = call i32 @jfs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.tlock* %87)
  store i32 0, i32* %5, align 4
  br label %383

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %46
  %91 = load %struct.linelock*, %struct.linelock** %22, align 8
  %92 = getelementptr inbounds %struct.linelock, %struct.linelock* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %241, %90
  %95 = load %struct.linelock*, %struct.linelock** %22, align 8
  %96 = getelementptr inbounds %struct.linelock, %struct.linelock* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.linelock*, %struct.linelock** %22, align 8
  %99 = getelementptr inbounds %struct.linelock, %struct.linelock* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %97, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @ASSERT(i32 %102)
  %104 = load %struct.linelock*, %struct.linelock** %22, align 8
  %105 = getelementptr inbounds %struct.linelock, %struct.linelock* %104, i32 0, i32 4
  %106 = load %struct.lv*, %struct.lv** %105, align 8
  store %struct.lv* %106, %struct.lv** %23, align 8
  store i32 0, i32* %20, align 4
  br label %107

107:                                              ; preds = %231, %94
  %108 = load i32, i32* %20, align 4
  %109 = load %struct.linelock*, %struct.linelock** %22, align 8
  %110 = getelementptr inbounds %struct.linelock, %struct.linelock* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %236

113:                                              ; preds = %107
  %114 = load %struct.lv*, %struct.lv** %23, align 8
  %115 = getelementptr inbounds %struct.lv, %struct.lv* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %231

119:                                              ; preds = %113
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* @LOGPSIZE, align 4
  %122 = load i32, i32* @LOGPTLRSIZE, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp sge i32 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %127 = call i32 @lmNextPage(%struct.jfs_log* %126)
  %128 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %129 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %128, i32 0, i32 2
  %130 = load %struct.lbuf*, %struct.lbuf** %129, align 8
  store %struct.lbuf* %130, %struct.lbuf** %11, align 8
  %131 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %132 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.logpage*
  store %struct.logpage* %134, %struct.logpage** %12, align 8
  %135 = load i32, i32* @LOGPHDRSIZE, align 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %125, %119
  %137 = load i32*, i32** %16, align 8
  %138 = load %struct.lv*, %struct.lv** %23, align 8
  %139 = getelementptr inbounds %struct.lv, %struct.lv* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %25, align 4
  %142 = shl i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  store i32* %144, i32** %17, align 8
  %145 = load %struct.lv*, %struct.lv** %23, align 8
  %146 = getelementptr inbounds %struct.lv, %struct.lv* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %25, align 4
  %149 = shl i32 %147, %148
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %21, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %183, %136
  %154 = load i32, i32* %18, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %201

156:                                              ; preds = %153
  %157 = load i32, i32* @LOGPSIZE, align 4
  %158 = load i32, i32* @LOGPTLRSIZE, align 4
  %159 = sub nsw i32 %157, %158
  %160 = load i32, i32* %14, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %18, align 4
  %164 = call i32 @min(i32 %162, i32 %163)
  store i32 %164, i32* %19, align 4
  %165 = load %struct.logpage*, %struct.logpage** %12, align 8
  %166 = bitcast %struct.logpage* %165 to i32*
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32* %169, i32** %13, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32*, i32** %17, align 8
  %172 = load i32, i32* %19, align 4
  %173 = call i32 @memcpy(i32* %170, i32* %171, i32 %172)
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* @LOGPSIZE, align 4
  %179 = load i32, i32* @LOGPTLRSIZE, align 4
  %180 = sub nsw i32 %178, %179
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %156
  br label %201

183:                                              ; preds = %156
  %184 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %185 = call i32 @lmNextPage(%struct.jfs_log* %184)
  %186 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %187 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %186, i32 0, i32 2
  %188 = load %struct.lbuf*, %struct.lbuf** %187, align 8
  store %struct.lbuf* %188, %struct.lbuf** %11, align 8
  %189 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %190 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to %struct.logpage*
  store %struct.logpage* %192, %struct.logpage** %12, align 8
  %193 = load i32, i32* @LOGPHDRSIZE, align 4
  store i32 %193, i32* %14, align 4
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %18, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %18, align 4
  %197 = load i32, i32* %19, align 4
  %198 = load i32*, i32** %17, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32* %200, i32** %17, align 8
  br label %153

201:                                              ; preds = %182, %153
  %202 = load i32, i32* %21, align 4
  %203 = add nsw i32 %202, 4
  store i32 %203, i32* %21, align 4
  %204 = load %struct.logpage*, %struct.logpage** %12, align 8
  %205 = bitcast %struct.logpage* %204 to i32*
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = bitcast i32* %208 to %struct.lvd*
  store %struct.lvd* %209, %struct.lvd** %24, align 8
  %210 = load %struct.lv*, %struct.lv** %23, align 8
  %211 = getelementptr inbounds %struct.lv, %struct.lv* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @cpu_to_le16(i32 %212)
  %214 = load %struct.lvd*, %struct.lvd** %24, align 8
  %215 = getelementptr inbounds %struct.lvd, %struct.lvd* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.lv*, %struct.lv** %23, align 8
  %217 = getelementptr inbounds %struct.lv, %struct.lv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @cpu_to_le16(i32 %218)
  %220 = load %struct.lvd*, %struct.lvd** %24, align 8
  %221 = getelementptr inbounds %struct.lvd, %struct.lvd* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %14, align 4
  %223 = add nsw i32 %222, 4
  store i32 %223, i32* %14, align 4
  %224 = load %struct.lv*, %struct.lv** %23, align 8
  %225 = getelementptr inbounds %struct.lv, %struct.lv* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.lv*, %struct.lv** %23, align 8
  %228 = getelementptr inbounds %struct.lv, %struct.lv* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %226, i32 %229)
  br label %231

231:                                              ; preds = %201, %118
  %232 = load i32, i32* %20, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %20, align 4
  %234 = load %struct.lv*, %struct.lv** %23, align 8
  %235 = getelementptr inbounds %struct.lv, %struct.lv* %234, i32 1
  store %struct.lv* %235, %struct.lv** %23, align 8
  br label %107

236:                                              ; preds = %107
  %237 = load %struct.linelock*, %struct.linelock** %22, align 8
  %238 = getelementptr inbounds %struct.linelock, %struct.linelock* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %20, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* %20, align 4
  %243 = call i64 @lid_to_tlock(i32 %242)
  %244 = inttoptr i64 %243 to %struct.linelock*
  store %struct.linelock* %244, %struct.linelock** %22, align 8
  br label %94

245:                                              ; preds = %236
  br label %246

246:                                              ; preds = %245, %38
  %247 = load i32, i32* %21, align 4
  %248 = call i32 @cpu_to_le16(i32 %247)
  %249 = load %struct.lrd*, %struct.lrd** %8, align 8
  %250 = getelementptr inbounds %struct.lrd, %struct.lrd* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 4
  %251 = load %struct.lrd*, %struct.lrd** %8, align 8
  %252 = bitcast %struct.lrd* %251 to i32*
  store i32* %252, i32** %17, align 8
  %253 = load i32, i32* @LOGRDSIZE, align 4
  store i32 %253, i32* %18, align 4
  br label %254

254:                                              ; preds = %366, %246
  %255 = load i32, i32* %18, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %381

257:                                              ; preds = %254
  %258 = load i32, i32* @LOGPSIZE, align 4
  %259 = load i32, i32* @LOGPTLRSIZE, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* %14, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %15, align 4
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %18, align 4
  %265 = call i32 @min(i32 %263, i32 %264)
  store i32 %265, i32* %19, align 4
  %266 = load %struct.logpage*, %struct.logpage** %12, align 8
  %267 = bitcast %struct.logpage* %266 to i32*
  %268 = load i32, i32* %14, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  store i32* %270, i32** %13, align 8
  %271 = load i32*, i32** %13, align 8
  %272 = load i32*, i32** %17, align 8
  %273 = load i32, i32* %19, align 4
  %274 = call i32 @memcpy(i32* %271, i32* %272, i32 %273)
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %14, align 4
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* %18, align 4
  %280 = sub nsw i32 %279, %278
  store i32 %280, i32* %18, align 4
  %281 = load i32, i32* %18, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %257
  br label %366

284:                                              ; preds = %257
  %285 = load i32, i32* %14, align 4
  %286 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %287 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load i32, i32* %14, align 4
  %289 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %290 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %289, i32 0, i32 0
  store i32 %288, i32* %290, align 8
  %291 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %292 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @L2LOGPSIZE, align 4
  %295 = shl i32 %293, %294
  %296 = load i32, i32* %14, align 4
  %297 = add nsw i32 %295, %296
  store i32 %297, i32* %10, align 4
  %298 = load %struct.lrd*, %struct.lrd** %8, align 8
  %299 = getelementptr inbounds %struct.lrd, %struct.lrd* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @LOG_COMMIT, align 4
  %302 = call i32 @cpu_to_le16(i32 %301)
  %303 = and i32 %300, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %345

305:                                              ; preds = %284
  %306 = load i32, i32* %10, align 4
  %307 = load %struct.tblock*, %struct.tblock** %7, align 8
  %308 = getelementptr inbounds %struct.tblock, %struct.tblock* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 8
  %309 = load %struct.tblock*, %struct.tblock** %7, align 8
  %310 = getelementptr inbounds %struct.tblock, %struct.tblock* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %313 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %311, i32 %314)
  %316 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @lmStat, i32 0, i32 0), align 4
  %317 = call i32 @INCREMENT(i32 %316)
  %318 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %319 = call i32 @LOGGC_LOCK(%struct.jfs_log* %318)
  %320 = load i32, i32* @tblkGC_QUEUE, align 4
  %321 = load %struct.tblock*, %struct.tblock** %7, align 8
  %322 = getelementptr inbounds %struct.tblock, %struct.tblock* %321, i32 0, i32 5
  store i32 %320, i32* %322, align 8
  %323 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %324 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %323, i32 0, i32 2
  %325 = load %struct.lbuf*, %struct.lbuf** %324, align 8
  %326 = load %struct.tblock*, %struct.tblock** %7, align 8
  %327 = getelementptr inbounds %struct.tblock, %struct.tblock* %326, i32 0, i32 4
  store %struct.lbuf* %325, %struct.lbuf** %327, align 8
  %328 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %329 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.tblock*, %struct.tblock** %7, align 8
  %332 = getelementptr inbounds %struct.tblock, %struct.tblock* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 4
  %333 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %334 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.tblock*, %struct.tblock** %7, align 8
  %337 = getelementptr inbounds %struct.tblock, %struct.tblock* %336, i32 0, i32 2
  store i32 %335, i32* %337, align 8
  %338 = load %struct.tblock*, %struct.tblock** %7, align 8
  %339 = getelementptr inbounds %struct.tblock, %struct.tblock* %338, i32 0, i32 3
  %340 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %341 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %340, i32 0, i32 3
  %342 = call i32 @list_add_tail(i32* %339, i32* %341)
  %343 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %344 = call i32 @LOGGC_UNLOCK(%struct.jfs_log* %343)
  br label %345

345:                                              ; preds = %305, %284
  %346 = load %struct.lrd*, %struct.lrd** %8, align 8
  %347 = getelementptr inbounds %struct.lrd, %struct.lrd* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @le16_to_cpu(i32 %348)
  %350 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %351 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %350, i32 0, i32 2
  %352 = load %struct.lbuf*, %struct.lbuf** %351, align 8
  %353 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %354 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %14, align 4
  %357 = call i32 (i8*, i32, ...) @jfs_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %349, %struct.lbuf* %352, i32 %355, i32 %356)
  %358 = load i32, i32* %14, align 4
  %359 = load i32, i32* @LOGPSIZE, align 4
  %360 = load i32, i32* @LOGPTLRSIZE, align 4
  %361 = sub nsw i32 %359, %360
  %362 = icmp slt i32 %358, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %345
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %5, align 4
  br label %383

365:                                              ; preds = %345
  br label %366

366:                                              ; preds = %365, %283
  %367 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %368 = call i32 @lmNextPage(%struct.jfs_log* %367)
  %369 = load %struct.jfs_log*, %struct.jfs_log** %6, align 8
  %370 = getelementptr inbounds %struct.jfs_log, %struct.jfs_log* %369, i32 0, i32 2
  %371 = load %struct.lbuf*, %struct.lbuf** %370, align 8
  store %struct.lbuf* %371, %struct.lbuf** %11, align 8
  %372 = load %struct.lbuf*, %struct.lbuf** %11, align 8
  %373 = getelementptr inbounds %struct.lbuf, %struct.lbuf* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = inttoptr i64 %374 to %struct.logpage*
  store %struct.logpage* %375, %struct.logpage** %12, align 8
  %376 = load i32, i32* @LOGPHDRSIZE, align 4
  store i32 %376, i32* %14, align 4
  %377 = load i32, i32* %19, align 4
  %378 = load i32*, i32** %17, align 8
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  store i32* %380, i32** %17, align 8
  br label %254

381:                                              ; preds = %254
  %382 = load i32, i32* %10, align 4
  store i32 %382, i32* %5, align 4
  br label %383

383:                                              ; preds = %381, %363, %86
  %384 = load i32, i32* %5, align 4
  ret i32 %384
}

declare dso_local %struct.TYPE_6__* @JFS_IP(i32) #1

declare dso_local i32 @jfs_err(i8*, %struct.tlock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lmNextPage(%struct.jfs_log*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @jfs_info(i8*, i32, ...) #1

declare dso_local i64 @lid_to_tlock(i32) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @LOGGC_LOCK(%struct.jfs_log*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @LOGGC_UNLOCK(%struct.jfs_log*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
