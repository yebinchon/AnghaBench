; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.metapage = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, %struct.TYPE_20__* }
%struct.TYPE_17__ = type { i8*, i8*, i32, i32 }
%struct.btstack = type { i32 }
%struct.xtsplit = type { i32, i32, i32, i32*, i64, i64, %struct.metapage* }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32 }

@XT_INSERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Could not find extent\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"nXAD in not completely contained within XAD\0A\00", align 1
@XTENTRYSTART = common dso_local global i32 0, align 4
@XAD_NOTRECORDED = common dso_local global i32 0, align 4
@MAXXLEN = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@XAD_EXTENDED = common dso_local global i32 0, align 4
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"xoff >= nxoff\0A\00", align 1
@PSIZE = common dso_local global i32 0, align 4
@BT_INTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"xtSearch failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unexpected value of index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtUpdate(i32 %0, %struct.inode* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.metapage*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.btstack, align 4
  %18 = alloca %struct.xtsplit, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.tlock*, align 8
  %32 = alloca %struct.xtlock*, align 8
  %33 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.xtlock* null, %struct.xtlock** %32, align 8
  store i32 0, i32* %33, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = call i64 @offsetXAD(%struct.TYPE_20__* %34)
  store i64 %35, i64* %23, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = call i32 @lengthXAD(%struct.TYPE_20__* %36)
  store i32 %37, i32* %25, align 4
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %39 = call i64 @addressXAD(%struct.TYPE_20__* %38)
  store i64 %39, i64* %29, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load i64, i64* %23, align 8
  %42 = load i32, i32* @XT_INSERT, align 4
  %43 = call i32 @xtSearch(%struct.inode* %40, i64 %41, i32* null, i32* %9, %struct.btstack* %17, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %997

47:                                               ; preds = %3
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.btstack, %struct.btstack* %17, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %12, align 8
  %52 = load %struct.metapage*, %struct.metapage** %10, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @XT_GETSEARCH(%struct.inode* %48, i32 %50, i64 %51, %struct.metapage* %52, %struct.TYPE_19__* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %47
  %59 = load %struct.metapage*, %struct.metapage** %10, align 8
  %60 = call i32 @XT_PUTPAGE(%struct.metapage* %59)
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @jfs_error(i32 %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %997

67:                                               ; preds = %47
  %68 = load %struct.metapage*, %struct.metapage** %10, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call i32 @BT_MARK_DIRTY(%struct.metapage* %68, %struct.inode* %69)
  %71 = load i32, i32* @COMMIT_Nolink, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = call i32 @test_cflag(i32 %71, %struct.inode* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = load %struct.metapage*, %struct.metapage** %10, align 8
  %79 = load i32, i32* @tlckXTREE, align 4
  %80 = load i32, i32* @tlckGROW, align 4
  %81 = or i32 %79, %80
  %82 = call %struct.tlock* @txLock(i32 %76, %struct.inode* %77, %struct.metapage* %78, i32 %81)
  store %struct.tlock* %82, %struct.tlock** %31, align 8
  %83 = load %struct.tlock*, %struct.tlock** %31, align 8
  %84 = getelementptr inbounds %struct.tlock, %struct.tlock* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to %struct.xtlock*
  store %struct.xtlock* %85, %struct.xtlock** %32, align 8
  br label %86

86:                                               ; preds = %75, %67
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i64 %91
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %19, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %22, align 4
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %97 = call i64 @offsetXAD(%struct.TYPE_20__* %96)
  store i64 %97, i64* %24, align 8
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %99 = call i32 @lengthXAD(%struct.TYPE_20__* %98)
  store i32 %99, i32* %26, align 4
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %101 = call i64 @addressXAD(%struct.TYPE_20__* %100)
  store i64 %101, i64* %30, align 8
  %102 = load i64, i64* %24, align 8
  %103 = load i64, i64* %23, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %115, label %105

105:                                              ; preds = %86
  %106 = load i64, i64* %23, align 8
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = load i64, i64* %24, align 8
  %111 = load i32, i32* %26, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %110, %112
  %114 = icmp sgt i64 %109, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105, %86
  %116 = load %struct.metapage*, %struct.metapage** %10, align 8
  %117 = call i32 @XT_PUTPAGE(%struct.metapage* %116)
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @jfs_error(i32 %120, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %997

124:                                              ; preds = %105
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %15, align 4
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @le16_to_cpu(i8* %131)
  store i32 %132, i32* %16, align 4
  %133 = load i64, i64* %24, align 8
  %134 = load i64, i64* %23, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124
  br label %293

137:                                              ; preds = %124
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* @XTENTRYSTART, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  br label %277

142:                                              ; preds = %137
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i64 %148
  store %struct.TYPE_20__* %149, %struct.TYPE_20__** %20, align 8
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %151 = call i32 @lengthXAD(%struct.TYPE_20__* %150)
  store i32 %151, i32* %27, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @XAD_NOTRECORDED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %276, label %158

158:                                              ; preds = %142
  %159 = load i64, i64* %23, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %161 = call i64 @offsetXAD(%struct.TYPE_20__* %160)
  %162 = load i32, i32* %27, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = icmp eq i64 %159, %164
  br i1 %165, label %166, label %276

166:                                              ; preds = %158
  %167 = load i64, i64* %29, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %169 = call i64 @addressXAD(%struct.TYPE_20__* %168)
  %170 = load i32, i32* %27, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %169, %171
  %173 = icmp eq i64 %167, %172
  br i1 %173, label %174, label %276

174:                                              ; preds = %166
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %25, align 4
  %177 = add nsw i32 %175, %176
  %178 = load i32, i32* @MAXXLEN, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %276

180:                                              ; preds = %174
  %181 = load i32, i32* %14, align 4
  %182 = sub nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  %183 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %184 = load i32, i32* %27, align 4
  %185 = load i32, i32* %25, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = call i32 @XADlength(%struct.TYPE_20__* %183, i64 %187)
  %189 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @XAD_NEW, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %180
  %196 = load i32, i32* @XAD_EXTENDED, align 4
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %195, %180
  %202 = load i32, i32* %26, align 4
  %203 = load i32, i32* %25, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %224

205:                                              ; preds = %201
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %207 = load i64, i64* %24, align 8
  %208 = load i32, i32* %25, align 4
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %207, %209
  %211 = call i32 @XADoffset(%struct.TYPE_20__* %206, i64 %210)
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %25, align 4
  %215 = sub nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = call i32 @XADlength(%struct.TYPE_20__* %212, i64 %216)
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %219 = load i64, i64* %30, align 8
  %220 = load i32, i32* %25, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = call i32 @XADaddress(%struct.TYPE_20__* %218, i64 %222)
  br label %955

224:                                              ; preds = %201
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* %16, align 4
  %227 = sub nsw i32 %226, 1
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %250

229:                                              ; preds = %224
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %231, align 8
  %233 = load i32, i32* %14, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i64 %234
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i64 %241
  %243 = load i32, i32* %16, align 4
  %244 = load i32, i32* %14, align 4
  %245 = sub nsw i32 %243, %244
  %246 = sub nsw i32 %245, 1
  %247 = load i32, i32* @L2XTSLOTSIZE, align 4
  %248 = shl i32 %246, %247
  %249 = call i32 @memmove(%struct.TYPE_20__* %235, %struct.TYPE_20__* %242, i32 %248)
  br label %250

250:                                              ; preds = %229, %224
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 @le16_to_cpu(i8* %254)
  %256 = sub nsw i32 %255, 1
  %257 = call i8* @cpu_to_le16(i32 %256)
  %258 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 0
  store i8* %257, i8** %260, align 8
  %261 = load i32, i32* %13, align 4
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @le16_to_cpu(i8* %267)
  store i32 %268, i32* %16, align 4
  %269 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %270 = call i64 @offsetXAD(%struct.TYPE_20__* %269)
  store i64 %270, i64* %23, align 8
  store i64 %270, i64* %24, align 8
  %271 = load i32, i32* %27, align 4
  %272 = load i32, i32* %25, align 4
  %273 = add nsw i32 %271, %272
  store i32 %273, i32* %25, align 4
  store i32 %273, i32* %26, align 4
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %275 = call i64 @addressXAD(%struct.TYPE_20__* %274)
  store i64 %275, i64* %29, align 8
  store i64 %275, i64* %30, align 8
  br label %293

276:                                              ; preds = %174, %166, %158, %142
  br label %277

277:                                              ; preds = %276, %141
  %278 = load i32, i32* %25, align 4
  %279 = load i32, i32* %26, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %292

281:                                              ; preds = %277
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %284 = bitcast %struct.TYPE_20__* %282 to i8*
  %285 = bitcast %struct.TYPE_20__* %283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %284, i8* align 4 %285, i64 4, i1 false)
  %286 = load i32, i32* %22, align 4
  %287 = load i32, i32* @XAD_NOTRECORDED, align 4
  %288 = xor i32 %287, -1
  %289 = and i32 %286, %288
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  br label %293

292:                                              ; preds = %277
  br label %779

293:                                              ; preds = %281, %250, %136
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %293
  %298 = load i64, i64* %24, align 8
  %299 = load i64, i64* %23, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  br label %955

302:                                              ; preds = %297
  br label %429

303:                                              ; preds = %293
  %304 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %305 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %305, align 8
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i64 %309
  store %struct.TYPE_20__* %310, %struct.TYPE_20__** %21, align 8
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %312 = call i32 @lengthXAD(%struct.TYPE_20__* %311)
  store i32 %312, i32* %28, align 4
  %313 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %314 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @XAD_NOTRECORDED, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %409, label %319

319:                                              ; preds = %303
  %320 = load i64, i64* %23, align 8
  %321 = load i32, i32* %25, align 4
  %322 = sext i32 %321 to i64
  %323 = add nsw i64 %320, %322
  %324 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %325 = call i64 @offsetXAD(%struct.TYPE_20__* %324)
  %326 = icmp eq i64 %323, %325
  br i1 %326, label %327, label %409

327:                                              ; preds = %319
  %328 = load i64, i64* %29, align 8
  %329 = load i32, i32* %25, align 4
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %328, %330
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %333 = call i64 @addressXAD(%struct.TYPE_20__* %332)
  %334 = icmp eq i64 %331, %333
  br i1 %334, label %335, label %409

335:                                              ; preds = %327
  %336 = load i32, i32* %28, align 4
  %337 = load i32, i32* %25, align 4
  %338 = add nsw i32 %336, %337
  %339 = load i32, i32* @MAXXLEN, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %409

341:                                              ; preds = %335
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %343 = load i64, i64* %23, align 8
  %344 = call i32 @XADoffset(%struct.TYPE_20__* %342, i64 %343)
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %346 = load i32, i32* %28, align 4
  %347 = load i32, i32* %25, align 4
  %348 = add nsw i32 %346, %347
  %349 = sext i32 %348 to i64
  %350 = call i32 @XADlength(%struct.TYPE_20__* %345, i64 %349)
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %352 = load i64, i64* %29, align 8
  %353 = call i32 @XADaddress(%struct.TYPE_20__* %351, i64 %352)
  %354 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %355 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @XAD_NEW, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %366, label %360

360:                                              ; preds = %341
  %361 = load i32, i32* @XAD_EXTENDED, align 4
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = or i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %360, %341
  %367 = load i32, i32* %26, align 4
  %368 = load i32, i32* %25, align 4
  %369 = icmp sgt i32 %367, %368
  br i1 %369, label %370, label %377

370:                                              ; preds = %366
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %372 = load i32, i32* %26, align 4
  %373 = load i32, i32* %25, align 4
  %374 = sub nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = call i32 @XADlength(%struct.TYPE_20__* %371, i64 %375)
  br label %408

377:                                              ; preds = %366
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 1
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %379, align 8
  %381 = load i32, i32* %14, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i64 %382
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_20__*, %struct.TYPE_20__** %385, align 8
  %387 = load i32, i32* %14, align 4
  %388 = add nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %386, i64 %389
  %391 = load i32, i32* %16, align 4
  %392 = load i32, i32* %14, align 4
  %393 = sub nsw i32 %391, %392
  %394 = sub nsw i32 %393, 1
  %395 = load i32, i32* @L2XTSLOTSIZE, align 4
  %396 = shl i32 %394, %395
  %397 = call i32 @memmove(%struct.TYPE_20__* %383, %struct.TYPE_20__* %390, i32 %396)
  %398 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %399 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @le16_to_cpu(i8* %401)
  %403 = sub nsw i32 %402, 1
  %404 = call i8* @cpu_to_le16(i32 %403)
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %406, i32 0, i32 0
  store i8* %404, i8** %407, align 8
  br label %408

408:                                              ; preds = %377, %370
  br label %955

409:                                              ; preds = %335, %327, %319, %303
  %410 = load i64, i64* %24, align 8
  %411 = load i64, i64* %23, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %409
  br label %955

414:                                              ; preds = %409
  br label %415

415:                                              ; preds = %414
  %416 = load i64, i64* %24, align 8
  %417 = load i64, i64* %23, align 8
  %418 = icmp sge i64 %416, %417
  br i1 %418, label %419, label %428

419:                                              ; preds = %415
  %420 = load %struct.metapage*, %struct.metapage** %10, align 8
  %421 = call i32 @XT_PUTPAGE(%struct.metapage* %420)
  %422 = load %struct.inode*, %struct.inode** %6, align 8
  %423 = getelementptr inbounds %struct.inode, %struct.inode* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = call i32 @jfs_error(i32 %424, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %426 = load i32, i32* @EIO, align 4
  %427 = sub nsw i32 0, %426
  store i32 %427, i32* %4, align 4
  br label %997

428:                                              ; preds = %415
  br label %429

429:                                              ; preds = %428, %302
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_20__*, %struct.TYPE_20__** %431, align 8
  %433 = load i32, i32* %14, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %432, i64 %434
  store %struct.TYPE_20__* %435, %struct.TYPE_20__** %19, align 8
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %437 = load i64, i64* %23, align 8
  %438 = load i64, i64* %24, align 8
  %439 = sub nsw i64 %437, %438
  %440 = call i32 @XADlength(%struct.TYPE_20__* %436, i64 %439)
  %441 = load i32, i32* %16, align 4
  %442 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %443, i32 0, i32 1
  %445 = load i8*, i8** %444, align 8
  %446 = call i32 @le16_to_cpu(i8* %445)
  %447 = icmp eq i32 %441, %446
  br i1 %447, label %448, label %564

448:                                              ; preds = %429
  %449 = load %struct.metapage*, %struct.metapage** %10, align 8
  %450 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 6
  store %struct.metapage* %449, %struct.metapage** %450, align 8
  %451 = load i32, i32* %15, align 4
  %452 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 0
  store i32 %451, i32* %452, align 8
  %453 = load i32, i32* %22, align 4
  %454 = load i32, i32* @XAD_NOTRECORDED, align 4
  %455 = xor i32 %454, -1
  %456 = and i32 %453, %455
  %457 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 1
  store i32 %456, i32* %457, align 4
  %458 = load i64, i64* %23, align 8
  %459 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 5
  store i64 %458, i64* %459, align 8
  %460 = load i32, i32* %25, align 4
  %461 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 2
  store i32 %460, i32* %461, align 8
  %462 = load i64, i64* %29, align 8
  %463 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 4
  store i64 %462, i64* %463, align 8
  %464 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 3
  store i32* null, i32** %464, align 8
  %465 = load i32, i32* %5, align 4
  %466 = load %struct.inode*, %struct.inode** %6, align 8
  %467 = call i32 @xtSplitUp(i32 %465, %struct.inode* %466, %struct.xtsplit* %18, %struct.btstack* %17)
  store i32 %467, i32* %8, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %471

469:                                              ; preds = %448
  %470 = load i32, i32* %8, align 4
  store i32 %470, i32* %4, align 4
  br label %997

471:                                              ; preds = %448
  %472 = load %struct.inode*, %struct.inode** %6, align 8
  %473 = load i64, i64* %12, align 8
  %474 = load %struct.metapage*, %struct.metapage** %10, align 8
  %475 = load i32, i32* @PSIZE, align 4
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %477 = load i32, i32* %8, align 4
  %478 = call i32 @XT_GETPAGE(%struct.inode* %472, i64 %473, %struct.metapage* %474, i32 %475, %struct.TYPE_19__* %476, i32 %477)
  %479 = load i32, i32* %8, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %471
  %482 = load i32, i32* %8, align 4
  store i32 %482, i32* %4, align 4
  br label %997

483:                                              ; preds = %471
  %484 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %485 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @BT_INTERNAL, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %543

491:                                              ; preds = %483
  %492 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %493 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %493, i32 0, i32 0
  %495 = load i8*, i8** %494, align 8
  %496 = load i32, i32* @XTENTRYSTART, align 4
  %497 = add nsw i32 %496, 1
  %498 = call i8* @cpu_to_le16(i32 %497)
  %499 = icmp eq i8* %495, %498
  %500 = zext i1 %499 to i32
  %501 = call i32 @ASSERT(i32 %500)
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 1
  %504 = load %struct.TYPE_20__*, %struct.TYPE_20__** %503, align 8
  %505 = load i32, i32* @XTENTRYSTART, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %504, i64 %506
  store %struct.TYPE_20__* %507, %struct.TYPE_20__** %19, align 8
  %508 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %509 = call i64 @addressXAD(%struct.TYPE_20__* %508)
  store i64 %509, i64* %12, align 8
  %510 = load %struct.metapage*, %struct.metapage** %10, align 8
  %511 = call i32 @XT_PUTPAGE(%struct.metapage* %510)
  %512 = load %struct.inode*, %struct.inode** %6, align 8
  %513 = load i64, i64* %12, align 8
  %514 = load %struct.metapage*, %struct.metapage** %10, align 8
  %515 = load i32, i32* @PSIZE, align 4
  %516 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %517 = load i32, i32* %8, align 4
  %518 = call i32 @XT_GETPAGE(%struct.inode* %512, i64 %513, %struct.metapage* %514, i32 %515, %struct.TYPE_19__* %516, i32 %517)
  %519 = load i32, i32* %8, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %523

521:                                              ; preds = %491
  %522 = load i32, i32* %8, align 4
  store i32 %522, i32* %4, align 4
  br label %997

523:                                              ; preds = %491
  %524 = load %struct.metapage*, %struct.metapage** %10, align 8
  %525 = load %struct.inode*, %struct.inode** %6, align 8
  %526 = call i32 @BT_MARK_DIRTY(%struct.metapage* %524, %struct.inode* %525)
  %527 = load i32, i32* @COMMIT_Nolink, align 4
  %528 = load %struct.inode*, %struct.inode** %6, align 8
  %529 = call i32 @test_cflag(i32 %527, %struct.inode* %528)
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %542, label %531

531:                                              ; preds = %523
  %532 = load i32, i32* %5, align 4
  %533 = load %struct.inode*, %struct.inode** %6, align 8
  %534 = load %struct.metapage*, %struct.metapage** %10, align 8
  %535 = load i32, i32* @tlckXTREE, align 4
  %536 = load i32, i32* @tlckGROW, align 4
  %537 = or i32 %535, %536
  %538 = call %struct.tlock* @txLock(i32 %532, %struct.inode* %533, %struct.metapage* %534, i32 %537)
  store %struct.tlock* %538, %struct.tlock** %31, align 8
  %539 = load %struct.tlock*, %struct.tlock** %31, align 8
  %540 = getelementptr inbounds %struct.tlock, %struct.tlock* %539, i32 0, i32 0
  %541 = bitcast i32* %540 to %struct.xtlock*
  store %struct.xtlock* %541, %struct.xtlock** %32, align 8
  br label %542

542:                                              ; preds = %531, %523
  br label %563

543:                                              ; preds = %483
  %544 = load i32, i32* %15, align 4
  %545 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %546 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %546, i32 0, i32 1
  %548 = load i8*, i8** %547, align 8
  %549 = call i32 @le16_to_cpu(i8* %548)
  %550 = ashr i32 %549, 1
  %551 = icmp sgt i32 %544, %550
  br i1 %551, label %552, label %562

552:                                              ; preds = %543
  %553 = load i32, i32* %15, align 4
  %554 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %555 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %555, i32 0, i32 0
  %557 = load i8*, i8** %556, align 8
  %558 = call i32 @le16_to_cpu(i8* %557)
  %559 = sub nsw i32 %553, %558
  %560 = load i32, i32* @XTENTRYSTART, align 4
  %561 = add nsw i32 %559, %560
  store i32 %561, i32* %15, align 4
  store i32 1, i32* %33, align 4
  br label %562

562:                                              ; preds = %552, %543
  br label %563

563:                                              ; preds = %562, %542
  br label %615

564:                                              ; preds = %429
  %565 = load i32, i32* %15, align 4
  %566 = load i32, i32* %16, align 4
  %567 = icmp slt i32 %565, %566
  br i1 %567, label %568, label %588

568:                                              ; preds = %564
  %569 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %570 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %569, i32 0, i32 1
  %571 = load %struct.TYPE_20__*, %struct.TYPE_20__** %570, align 8
  %572 = load i32, i32* %15, align 4
  %573 = add nsw i32 %572, 1
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %571, i64 %574
  %576 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %577 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %576, i32 0, i32 1
  %578 = load %struct.TYPE_20__*, %struct.TYPE_20__** %577, align 8
  %579 = load i32, i32* %15, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %578, i64 %580
  %582 = load i32, i32* %16, align 4
  %583 = load i32, i32* %15, align 4
  %584 = sub nsw i32 %582, %583
  %585 = load i32, i32* @L2XTSLOTSIZE, align 4
  %586 = shl i32 %584, %585
  %587 = call i32 @memmove(%struct.TYPE_20__* %575, %struct.TYPE_20__* %581, i32 %586)
  br label %588

588:                                              ; preds = %568, %564
  %589 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %590 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %589, i32 0, i32 1
  %591 = load %struct.TYPE_20__*, %struct.TYPE_20__** %590, align 8
  %592 = load i32, i32* %15, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %591, i64 %593
  store %struct.TYPE_20__* %594, %struct.TYPE_20__** %19, align 8
  %595 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %596 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %597 = bitcast %struct.TYPE_20__* %595 to i8*
  %598 = bitcast %struct.TYPE_20__* %596 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %597, i8* align 4 %598, i64 4, i1 false)
  %599 = load i32, i32* %22, align 4
  %600 = load i32, i32* @XAD_NOTRECORDED, align 4
  %601 = xor i32 %600, -1
  %602 = and i32 %599, %601
  %603 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %604 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %603, i32 0, i32 0
  store i32 %602, i32* %604, align 4
  %605 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %606 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %606, i32 0, i32 0
  %608 = load i8*, i8** %607, align 8
  %609 = call i32 @le16_to_cpu(i8* %608)
  %610 = add nsw i32 %609, 1
  %611 = call i8* @cpu_to_le16(i32 %610)
  %612 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %613 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %612, i32 0, i32 0
  %614 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %613, i32 0, i32 0
  store i8* %611, i8** %614, align 8
  br label %615

615:                                              ; preds = %588, %563
  %616 = load i64, i64* %23, align 8
  %617 = load i32, i32* %25, align 4
  %618 = sext i32 %617 to i64
  %619 = add nsw i64 %616, %618
  %620 = load i64, i64* %24, align 8
  %621 = load i32, i32* %26, align 4
  %622 = sext i32 %621 to i64
  %623 = add nsw i64 %620, %622
  %624 = icmp eq i64 %619, %623
  br i1 %624, label %625, label %626

625:                                              ; preds = %615
  br label %955

626:                                              ; preds = %615
  %627 = load i32, i32* %33, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %707

629:                                              ; preds = %626
  %630 = load i32, i32* @COMMIT_Nolink, align 4
  %631 = load %struct.inode*, %struct.inode** %6, align 8
  %632 = call i32 @test_cflag(i32 %630, %struct.inode* %631)
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %667, label %634

634:                                              ; preds = %629
  %635 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %636 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %647

640:                                              ; preds = %634
  %641 = load i32, i32* %13, align 4
  %642 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %643 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %643, i32 0, i32 0
  %645 = load i32, i32* %644, align 4
  %646 = call i32 @min(i32 %641, i32 %645)
  br label %649

647:                                              ; preds = %634
  %648 = load i32, i32* %13, align 4
  br label %649

649:                                              ; preds = %647, %640
  %650 = phi i32 [ %646, %640 ], [ %648, %647 ]
  %651 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %652 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %651, i32 0, i32 0
  %653 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %652, i32 0, i32 0
  store i32 %650, i32* %653, align 4
  %654 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %655 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %655, i32 0, i32 0
  %657 = load i8*, i8** %656, align 8
  %658 = call i32 @le16_to_cpu(i8* %657)
  %659 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %660 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %660, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = sub nsw i32 %658, %662
  %664 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %665 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %665, i32 0, i32 1
  store i32 %663, i32* %666, align 4
  br label %667

667:                                              ; preds = %649, %629
  %668 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %669 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %668, i32 0, i32 0
  %670 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %669, i32 0, i32 3
  %671 = load i32, i32* %670, align 4
  %672 = call i64 @le64_to_cpu(i32 %671)
  store i64 %672, i64* %12, align 8
  %673 = load %struct.metapage*, %struct.metapage** %10, align 8
  %674 = call i32 @XT_PUTPAGE(%struct.metapage* %673)
  %675 = load %struct.inode*, %struct.inode** %6, align 8
  %676 = load i64, i64* %12, align 8
  %677 = load %struct.metapage*, %struct.metapage** %10, align 8
  %678 = load i32, i32* @PSIZE, align 4
  %679 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %680 = load i32, i32* %8, align 4
  %681 = call i32 @XT_GETPAGE(%struct.inode* %675, i64 %676, %struct.metapage* %677, i32 %678, %struct.TYPE_19__* %679, i32 %680)
  %682 = load i32, i32* %8, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %686

684:                                              ; preds = %667
  %685 = load i32, i32* %8, align 4
  store i32 %685, i32* %4, align 4
  br label %997

686:                                              ; preds = %667
  %687 = load %struct.metapage*, %struct.metapage** %10, align 8
  %688 = load %struct.inode*, %struct.inode** %6, align 8
  %689 = call i32 @BT_MARK_DIRTY(%struct.metapage* %687, %struct.inode* %688)
  %690 = load i32, i32* @COMMIT_Nolink, align 4
  %691 = load %struct.inode*, %struct.inode** %6, align 8
  %692 = call i32 @test_cflag(i32 %690, %struct.inode* %691)
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %705, label %694

694:                                              ; preds = %686
  %695 = load i32, i32* %5, align 4
  %696 = load %struct.inode*, %struct.inode** %6, align 8
  %697 = load %struct.metapage*, %struct.metapage** %10, align 8
  %698 = load i32, i32* @tlckXTREE, align 4
  %699 = load i32, i32* @tlckGROW, align 4
  %700 = or i32 %698, %699
  %701 = call %struct.tlock* @txLock(i32 %695, %struct.inode* %696, %struct.metapage* %697, i32 %700)
  store %struct.tlock* %701, %struct.tlock** %31, align 8
  %702 = load %struct.tlock*, %struct.tlock** %31, align 8
  %703 = getelementptr inbounds %struct.tlock, %struct.tlock* %702, i32 0, i32 0
  %704 = bitcast i32* %703 to %struct.xtlock*
  store %struct.xtlock* %704, %struct.xtlock** %32, align 8
  br label %705

705:                                              ; preds = %694, %686
  %706 = load i32, i32* %15, align 4
  store i32 %706, i32* %14, align 4
  store i32 %706, i32* %13, align 4
  br label %710

707:                                              ; preds = %626
  %708 = load i32, i32* %14, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %14, align 4
  br label %710

710:                                              ; preds = %707, %705
  %711 = load i32, i32* %14, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %15, align 4
  %713 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %714 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %714, i32 0, i32 0
  %716 = load i8*, i8** %715, align 8
  %717 = call i32 @le16_to_cpu(i8* %716)
  store i32 %717, i32* %16, align 4
  %718 = load i32, i32* %26, align 4
  %719 = sext i32 %718 to i64
  %720 = load i64, i64* %23, align 8
  %721 = load i64, i64* %24, align 8
  %722 = sub nsw i64 %720, %721
  %723 = sub nsw i64 %719, %722
  %724 = trunc i64 %723 to i32
  store i32 %724, i32* %26, align 4
  %725 = load i64, i64* %23, align 8
  store i64 %725, i64* %24, align 8
  %726 = load i64, i64* %29, align 8
  store i64 %726, i64* %30, align 8
  %727 = load i32, i32* %16, align 4
  %728 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %729 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %728, i32 0, i32 0
  %730 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %729, i32 0, i32 1
  %731 = load i8*, i8** %730, align 8
  %732 = call i32 @le16_to_cpu(i8* %731)
  %733 = icmp eq i32 %727, %732
  br i1 %733, label %734, label %778

734:                                              ; preds = %710
  %735 = load %struct.metapage*, %struct.metapage** %10, align 8
  %736 = call i32 @XT_PUTPAGE(%struct.metapage* %735)
  %737 = load %struct.inode*, %struct.inode** %6, align 8
  %738 = load i64, i64* %23, align 8
  %739 = load i32, i32* @XT_INSERT, align 4
  %740 = call i32 @xtSearch(%struct.inode* %737, i64 %738, i32* null, i32* %9, %struct.btstack* %17, i32 %739)
  store i32 %740, i32* %8, align 4
  %741 = icmp ne i32 %740, 0
  br i1 %741, label %742, label %744

742:                                              ; preds = %734
  %743 = load i32, i32* %8, align 4
  store i32 %743, i32* %4, align 4
  br label %997

744:                                              ; preds = %734
  %745 = load %struct.inode*, %struct.inode** %6, align 8
  %746 = getelementptr inbounds %struct.btstack, %struct.btstack* %17, i32 0, i32 0
  %747 = load i32, i32* %746, align 4
  %748 = load i64, i64* %12, align 8
  %749 = load %struct.metapage*, %struct.metapage** %10, align 8
  %750 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %751 = load i32, i32* %13, align 4
  %752 = call i32 @XT_GETSEARCH(%struct.inode* %745, i32 %747, i64 %748, %struct.metapage* %749, %struct.TYPE_19__* %750, i32 %751)
  %753 = load i32, i32* %9, align 4
  %754 = icmp ne i32 %753, 0
  br i1 %754, label %755, label %764

755:                                              ; preds = %744
  %756 = load %struct.metapage*, %struct.metapage** %10, align 8
  %757 = call i32 @XT_PUTPAGE(%struct.metapage* %756)
  %758 = load %struct.inode*, %struct.inode** %6, align 8
  %759 = getelementptr inbounds %struct.inode, %struct.inode* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = call i32 @jfs_error(i32 %760, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %762 = load i32, i32* @EIO, align 4
  %763 = sub nsw i32 0, %762
  store i32 %763, i32* %4, align 4
  br label %997

764:                                              ; preds = %744
  %765 = load i32, i32* %13, align 4
  %766 = load i32, i32* %14, align 4
  %767 = icmp ne i32 %765, %766
  br i1 %767, label %768, label %777

768:                                              ; preds = %764
  %769 = load %struct.metapage*, %struct.metapage** %10, align 8
  %770 = call i32 @XT_PUTPAGE(%struct.metapage* %769)
  %771 = load %struct.inode*, %struct.inode** %6, align 8
  %772 = getelementptr inbounds %struct.inode, %struct.inode* %771, i32 0, i32 0
  %773 = load i32, i32* %772, align 4
  %774 = call i32 @jfs_error(i32 %773, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %775 = load i32, i32* @EIO, align 4
  %776 = sub nsw i32 0, %775
  store i32 %776, i32* %4, align 4
  br label %997

777:                                              ; preds = %764
  br label %778

778:                                              ; preds = %777, %710
  br label %779

779:                                              ; preds = %778, %292
  %780 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %781 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %780, i32 0, i32 1
  %782 = load %struct.TYPE_20__*, %struct.TYPE_20__** %781, align 8
  %783 = load i32, i32* %14, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %782, i64 %784
  store %struct.TYPE_20__* %785, %struct.TYPE_20__** %19, align 8
  %786 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %787 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %788 = bitcast %struct.TYPE_20__* %786 to i8*
  %789 = bitcast %struct.TYPE_20__* %787 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %788, i8* align 4 %789, i64 4, i1 false)
  %790 = load i32, i32* %22, align 4
  %791 = load i32, i32* @XAD_NOTRECORDED, align 4
  %792 = xor i32 %791, -1
  %793 = and i32 %790, %792
  %794 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %795 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %794, i32 0, i32 0
  store i32 %793, i32* %795, align 4
  %796 = load i64, i64* %24, align 8
  %797 = load i32, i32* %25, align 4
  %798 = sext i32 %797 to i64
  %799 = add nsw i64 %796, %798
  store i64 %799, i64* %24, align 8
  %800 = load i32, i32* %26, align 4
  %801 = load i32, i32* %25, align 4
  %802 = sub nsw i32 %800, %801
  store i32 %802, i32* %26, align 4
  %803 = load i64, i64* %30, align 8
  %804 = load i32, i32* %25, align 4
  %805 = sext i32 %804 to i64
  %806 = add nsw i64 %803, %805
  store i64 %806, i64* %30, align 8
  %807 = load i32, i32* %16, align 4
  %808 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %809 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %808, i32 0, i32 0
  %810 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %809, i32 0, i32 1
  %811 = load i8*, i8** %810, align 8
  %812 = call i32 @le16_to_cpu(i8* %811)
  %813 = icmp eq i32 %807, %812
  br i1 %813, label %814, label %907

814:                                              ; preds = %779
  %815 = load %struct.metapage*, %struct.metapage** %10, align 8
  %816 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 6
  store %struct.metapage* %815, %struct.metapage** %816, align 8
  %817 = load i32, i32* %15, align 4
  %818 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 0
  store i32 %817, i32* %818, align 8
  %819 = load i32, i32* %22, align 4
  %820 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 1
  store i32 %819, i32* %820, align 4
  %821 = load i64, i64* %24, align 8
  %822 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 5
  store i64 %821, i64* %822, align 8
  %823 = load i32, i32* %26, align 4
  %824 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 2
  store i32 %823, i32* %824, align 8
  %825 = load i64, i64* %30, align 8
  %826 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 4
  store i64 %825, i64* %826, align 8
  %827 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %18, i32 0, i32 3
  store i32* null, i32** %827, align 8
  %828 = load i32, i32* %5, align 4
  %829 = load %struct.inode*, %struct.inode** %6, align 8
  %830 = call i32 @xtSplitUp(i32 %828, %struct.inode* %829, %struct.xtsplit* %18, %struct.btstack* %17)
  store i32 %830, i32* %8, align 4
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %832, label %834

832:                                              ; preds = %814
  %833 = load i32, i32* %8, align 4
  store i32 %833, i32* %4, align 4
  br label %997

834:                                              ; preds = %814
  %835 = load %struct.inode*, %struct.inode** %6, align 8
  %836 = load i64, i64* %12, align 8
  %837 = load %struct.metapage*, %struct.metapage** %10, align 8
  %838 = load i32, i32* @PSIZE, align 4
  %839 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %840 = load i32, i32* %8, align 4
  %841 = call i32 @XT_GETPAGE(%struct.inode* %835, i64 %836, %struct.metapage* %837, i32 %838, %struct.TYPE_19__* %839, i32 %840)
  %842 = load i32, i32* %8, align 4
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %846

844:                                              ; preds = %834
  %845 = load i32, i32* %8, align 4
  store i32 %845, i32* %4, align 4
  br label %997

846:                                              ; preds = %834
  %847 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %848 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %847, i32 0, i32 0
  %849 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %848, i32 0, i32 2
  %850 = load i32, i32* %849, align 8
  %851 = load i32, i32* @BT_INTERNAL, align 4
  %852 = and i32 %850, %851
  %853 = icmp ne i32 %852, 0
  br i1 %853, label %854, label %906

854:                                              ; preds = %846
  %855 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %856 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %855, i32 0, i32 0
  %857 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %856, i32 0, i32 0
  %858 = load i8*, i8** %857, align 8
  %859 = load i32, i32* @XTENTRYSTART, align 4
  %860 = add nsw i32 %859, 1
  %861 = call i8* @cpu_to_le16(i32 %860)
  %862 = icmp eq i8* %858, %861
  %863 = zext i1 %862 to i32
  %864 = call i32 @ASSERT(i32 %863)
  %865 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %866 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %865, i32 0, i32 1
  %867 = load %struct.TYPE_20__*, %struct.TYPE_20__** %866, align 8
  %868 = load i32, i32* @XTENTRYSTART, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %867, i64 %869
  store %struct.TYPE_20__* %870, %struct.TYPE_20__** %19, align 8
  %871 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %872 = call i64 @addressXAD(%struct.TYPE_20__* %871)
  store i64 %872, i64* %12, align 8
  %873 = load %struct.metapage*, %struct.metapage** %10, align 8
  %874 = call i32 @XT_PUTPAGE(%struct.metapage* %873)
  %875 = load %struct.inode*, %struct.inode** %6, align 8
  %876 = load i64, i64* %12, align 8
  %877 = load %struct.metapage*, %struct.metapage** %10, align 8
  %878 = load i32, i32* @PSIZE, align 4
  %879 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %880 = load i32, i32* %8, align 4
  %881 = call i32 @XT_GETPAGE(%struct.inode* %875, i64 %876, %struct.metapage* %877, i32 %878, %struct.TYPE_19__* %879, i32 %880)
  %882 = load i32, i32* %8, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %886

884:                                              ; preds = %854
  %885 = load i32, i32* %8, align 4
  store i32 %885, i32* %4, align 4
  br label %997

886:                                              ; preds = %854
  %887 = load %struct.metapage*, %struct.metapage** %10, align 8
  %888 = load %struct.inode*, %struct.inode** %6, align 8
  %889 = call i32 @BT_MARK_DIRTY(%struct.metapage* %887, %struct.inode* %888)
  %890 = load i32, i32* @COMMIT_Nolink, align 4
  %891 = load %struct.inode*, %struct.inode** %6, align 8
  %892 = call i32 @test_cflag(i32 %890, %struct.inode* %891)
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %905, label %894

894:                                              ; preds = %886
  %895 = load i32, i32* %5, align 4
  %896 = load %struct.inode*, %struct.inode** %6, align 8
  %897 = load %struct.metapage*, %struct.metapage** %10, align 8
  %898 = load i32, i32* @tlckXTREE, align 4
  %899 = load i32, i32* @tlckGROW, align 4
  %900 = or i32 %898, %899
  %901 = call %struct.tlock* @txLock(i32 %895, %struct.inode* %896, %struct.metapage* %897, i32 %900)
  store %struct.tlock* %901, %struct.tlock** %31, align 8
  %902 = load %struct.tlock*, %struct.tlock** %31, align 8
  %903 = getelementptr inbounds %struct.tlock, %struct.tlock* %902, i32 0, i32 0
  %904 = bitcast i32* %903 to %struct.xtlock*
  store %struct.xtlock* %904, %struct.xtlock** %32, align 8
  br label %905

905:                                              ; preds = %894, %886
  br label %906

906:                                              ; preds = %905, %846
  br label %954

907:                                              ; preds = %779
  %908 = load i32, i32* %15, align 4
  %909 = load i32, i32* %16, align 4
  %910 = icmp slt i32 %908, %909
  br i1 %910, label %911, label %931

911:                                              ; preds = %907
  %912 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %913 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %912, i32 0, i32 1
  %914 = load %struct.TYPE_20__*, %struct.TYPE_20__** %913, align 8
  %915 = load i32, i32* %15, align 4
  %916 = add nsw i32 %915, 1
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %914, i64 %917
  %919 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %920 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %919, i32 0, i32 1
  %921 = load %struct.TYPE_20__*, %struct.TYPE_20__** %920, align 8
  %922 = load i32, i32* %15, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %921, i64 %923
  %925 = load i32, i32* %16, align 4
  %926 = load i32, i32* %15, align 4
  %927 = sub nsw i32 %925, %926
  %928 = load i32, i32* @L2XTSLOTSIZE, align 4
  %929 = shl i32 %927, %928
  %930 = call i32 @memmove(%struct.TYPE_20__* %918, %struct.TYPE_20__* %924, i32 %929)
  br label %931

931:                                              ; preds = %911, %907
  %932 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %933 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %932, i32 0, i32 1
  %934 = load %struct.TYPE_20__*, %struct.TYPE_20__** %933, align 8
  %935 = load i32, i32* %15, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %934, i64 %936
  store %struct.TYPE_20__* %937, %struct.TYPE_20__** %19, align 8
  %938 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %939 = load i32, i32* %22, align 4
  %940 = load i64, i64* %24, align 8
  %941 = load i32, i32* %26, align 4
  %942 = load i64, i64* %30, align 8
  %943 = call i32 @XT_PUTENTRY(%struct.TYPE_20__* %938, i32 %939, i64 %940, i32 %941, i64 %942)
  %944 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %945 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %944, i32 0, i32 0
  %946 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %945, i32 0, i32 0
  %947 = load i8*, i8** %946, align 8
  %948 = call i32 @le16_to_cpu(i8* %947)
  %949 = add nsw i32 %948, 1
  %950 = call i8* @cpu_to_le16(i32 %949)
  %951 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %952 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %951, i32 0, i32 0
  %953 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %952, i32 0, i32 0
  store i8* %950, i8** %953, align 8
  br label %954

954:                                              ; preds = %931, %906
  br label %955

955:                                              ; preds = %954, %625, %413, %408, %301, %205
  %956 = load i32, i32* @COMMIT_Nolink, align 4
  %957 = load %struct.inode*, %struct.inode** %6, align 8
  %958 = call i32 @test_cflag(i32 %956, %struct.inode* %957)
  %959 = icmp ne i32 %958, 0
  br i1 %959, label %993, label %960

960:                                              ; preds = %955
  %961 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %962 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %961, i32 0, i32 0
  %963 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %962, i32 0, i32 0
  %964 = load i32, i32* %963, align 4
  %965 = icmp ne i32 %964, 0
  br i1 %965, label %966, label %973

966:                                              ; preds = %960
  %967 = load i32, i32* %13, align 4
  %968 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %969 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %968, i32 0, i32 0
  %970 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 4
  %972 = call i32 @min(i32 %967, i32 %971)
  br label %975

973:                                              ; preds = %960
  %974 = load i32, i32* %13, align 4
  br label %975

975:                                              ; preds = %973, %966
  %976 = phi i32 [ %972, %966 ], [ %974, %973 ]
  %977 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %978 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %977, i32 0, i32 0
  %979 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %978, i32 0, i32 0
  store i32 %976, i32* %979, align 4
  %980 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %981 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %980, i32 0, i32 0
  %982 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %981, i32 0, i32 0
  %983 = load i8*, i8** %982, align 8
  %984 = call i32 @le16_to_cpu(i8* %983)
  %985 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %986 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %985, i32 0, i32 0
  %987 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %986, i32 0, i32 0
  %988 = load i32, i32* %987, align 4
  %989 = sub nsw i32 %984, %988
  %990 = load %struct.xtlock*, %struct.xtlock** %32, align 8
  %991 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %990, i32 0, i32 0
  %992 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %991, i32 0, i32 1
  store i32 %989, i32* %992, align 4
  br label %993

993:                                              ; preds = %975, %955
  %994 = load %struct.metapage*, %struct.metapage** %10, align 8
  %995 = call i32 @XT_PUTPAGE(%struct.metapage* %994)
  %996 = load i32, i32* %8, align 4
  store i32 %996, i32* %4, align 4
  br label %997

997:                                              ; preds = %993, %884, %844, %832, %768, %755, %742, %684, %521, %481, %469, %419, %115, %58, %45
  %998 = load i32, i32* %4, align 4
  ret i32 %998
}

declare dso_local i64 @offsetXAD(%struct.TYPE_20__*) #1

declare dso_local i32 @lengthXAD(%struct.TYPE_20__*) #1

declare dso_local i64 @addressXAD(%struct.TYPE_20__*) #1

declare dso_local i32 @xtSearch(%struct.inode*, i64, i32*, i32*, %struct.btstack*, i32) #1

declare dso_local i32 @XT_GETSEARCH(%struct.inode*, i32, i64, %struct.metapage*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @XADlength(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @XADoffset(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @XADaddress(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @memmove(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @xtSplitUp(i32, %struct.inode*, %struct.xtsplit*, %struct.btstack*) #1

declare dso_local i32 @XT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @XT_PUTENTRY(%struct.TYPE_20__*, i32, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
