; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitUp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitUp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.xtsplit = type { i32, i32, i32, i32, i32, %struct.metapage*, %struct.pxdlist* }
%struct.metapage = type { i32 }
%struct.pxdlist = type { i64, i32*, i64 }
%struct.btstack = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.btframe = type { i32, i32 }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@BT_ROOT = common dso_local global i32 0, align 4
@XTROOTMAXSLOT = common dso_local global i32 0, align 4
@INLINEEA = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.xtsplit*, %struct.btstack*)* @xtSplitUp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtSplitUp(i32 %0, %struct.inode* %1, %struct.xtsplit* %2, %struct.btstack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.xtsplit*, align 8
  %9 = alloca %struct.btstack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.metapage*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.btframe*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.pxdlist, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.tlock*, align 8
  %28 = alloca %struct.xtlock*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.xtsplit* %2, %struct.xtsplit** %8, align 8
  store %struct.btstack* %3, %struct.btstack** %9, align 8
  store i32 0, i32* %10, align 4
  %29 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %30 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %29, i32 0, i32 5
  %31 = load %struct.metapage*, %struct.metapage** %30, align 8
  store %struct.metapage* %31, %struct.metapage** %11, align 8
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load %struct.metapage*, %struct.metapage** %11, align 8
  %34 = call %struct.TYPE_10__* @XT_PAGE(%struct.inode* %32, %struct.metapage* %33)
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %12, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BT_ROOT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %185

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @S_ISDIR(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %185, label %48

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load i32, i32* @XTROOTMAXSLOT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %185

56:                                               ; preds = %48
  %57 = load %struct.inode*, %struct.inode** %7, align 8
  %58 = call %struct.TYPE_12__* @JFS_IP(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @INLINEEA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %185

64:                                               ; preds = %56
  %65 = load i32, i32* @XTROOTMAXSLOT, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @INLINEEA, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = call %struct.TYPE_12__* @JFS_IP(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load %struct.metapage*, %struct.metapage** %11, align 8
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = call i32 @BT_MARK_DIRTY(%struct.metapage* %77, %struct.inode* %78)
  %80 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %81 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  store i32 %82, i32* %18, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %64
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %18, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %18, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %19, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sub nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 4
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memmove(i32* %98, i32* %104, i32 %110)
  br label %112

112:                                              ; preds = %91, %64
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32* %118, i32** %21, align 8
  %119 = load i32*, i32** %21, align 8
  %120 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %121 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %124 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %127 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %130 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @XT_PUTENTRY(i32* %119, i32 %122, i32 %125, i32 %128, i32 %131)
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = call i32 @le16_add_cpu(i32* %135, i32 1)
  %137 = load i32, i32* @COMMIT_Nolink, align 4
  %138 = load %struct.inode*, %struct.inode** %7, align 8
  %139 = call i32 @test_cflag(i32 %137, %struct.inode* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %184, label %141

141:                                              ; preds = %112
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.inode*, %struct.inode** %7, align 8
  %144 = load %struct.metapage*, %struct.metapage** %11, align 8
  %145 = load i32, i32* @tlckXTREE, align 4
  %146 = load i32, i32* @tlckGROW, align 4
  %147 = or i32 %145, %146
  %148 = call %struct.tlock* @txLock(i32 %142, %struct.inode* %143, %struct.metapage* %144, i32 %147)
  store %struct.tlock* %148, %struct.tlock** %27, align 8
  %149 = load %struct.tlock*, %struct.tlock** %27, align 8
  %150 = getelementptr inbounds %struct.tlock, %struct.tlock* %149, i32 0, i32 0
  %151 = bitcast i32* %150 to %struct.xtlock*
  store %struct.xtlock* %151, %struct.xtlock** %28, align 8
  %152 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %153 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %141
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %160 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @min(i32 %158, i32 %162)
  br label %166

164:                                              ; preds = %141
  %165 = load i32, i32* %18, align 4
  br label %166

166:                                              ; preds = %164, %157
  %167 = phi i32 [ %163, %157 ], [ %165, %164 ]
  %168 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %169 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i32 %167, i32* %170, align 4
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le16_to_cpu(i32 %174)
  %176 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %177 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %175, %179
  %181 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %182 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 4
  br label %184

184:                                              ; preds = %166, %112
  store i32 0, i32* %5, align 4
  br label %472

185:                                              ; preds = %56, %48, %42, %4
  %186 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %187 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %186, i32 0, i32 6
  %188 = load %struct.pxdlist*, %struct.pxdlist** %187, align 8
  %189 = icmp eq %struct.pxdlist* %188, null
  br i1 %189, label %190, label %235

190:                                              ; preds = %185
  %191 = load %struct.btstack*, %struct.btstack** %9, align 8
  %192 = getelementptr inbounds %struct.btstack, %struct.btstack* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %24, align 4
  %194 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %195 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %194, i32 0, i32 6
  store %struct.pxdlist* %25, %struct.pxdlist** %195, align 8
  %196 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %25, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %25, i32 0, i32 0
  store i64 0, i64* %197, align 8
  %198 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %25, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  store i32* %200, i32** %26, align 8
  %201 = load %struct.inode*, %struct.inode** %7, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call %struct.TYPE_11__* @JFS_SBI(i32 %203)
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %23, align 4
  br label %207

207:                                              ; preds = %229, %190
  %208 = load i32, i32* %24, align 4
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %234

210:                                              ; preds = %207
  %211 = load %struct.inode*, %struct.inode** %7, align 8
  %212 = load i32, i32* %23, align 4
  %213 = call i32 @dbAlloc(%struct.inode* %211, i32 0, i32 %212, i32* %22)
  store i32 %213, i32* %10, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = load i32*, i32** %26, align 8
  %217 = load i32, i32* %22, align 4
  %218 = call i32 @PXDaddress(i32* %216, i32 %217)
  %219 = load i32*, i32** %26, align 8
  %220 = load i32, i32* %23, align 4
  %221 = call i32 @PXDlength(i32* %219, i32 %220)
  %222 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %25, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, 1
  store i64 %224, i64* %222, align 8
  br label %229

225:                                              ; preds = %210
  %226 = load %struct.metapage*, %struct.metapage** %11, align 8
  %227 = call i32 @XT_PUTPAGE(%struct.metapage* %226)
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %5, align 4
  br label %472

229:                                              ; preds = %215
  %230 = load i32, i32* %24, align 4
  %231 = add nsw i32 %230, -1
  store i32 %231, i32* %24, align 4
  %232 = load i32*, i32** %26, align 8
  %233 = getelementptr inbounds i32, i32* %232, i32 1
  store i32* %233, i32** %26, align 8
  br label %207

234:                                              ; preds = %207
  br label %235

235:                                              ; preds = %234, %185
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @BT_ROOT, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = load i32, i32* %6, align 4
  %245 = load %struct.inode*, %struct.inode** %7, align 8
  %246 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %247 = call i32 @xtSplitRoot(i32 %244, %struct.inode* %245, %struct.xtsplit* %246, %struct.metapage** %13)
  br label %253

248:                                              ; preds = %235
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.inode*, %struct.inode** %7, align 8
  %251 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %252 = call i32 @xtSplitPage(i32 %249, %struct.inode* %250, %struct.xtsplit* %251, %struct.metapage** %13, i32* %14)
  br label %253

253:                                              ; preds = %248, %243
  %254 = phi i32 [ %247, %243 ], [ %252, %248 ]
  store i32 %254, i32* %10, align 4
  %255 = load %struct.metapage*, %struct.metapage** %11, align 8
  %256 = call i32 @XT_PUTPAGE(%struct.metapage* %255)
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %253
  %260 = load i32, i32* @EIO, align 4
  %261 = sub nsw i32 0, %260
  store i32 %261, i32* %5, align 4
  br label %472

262:                                              ; preds = %253
  br label %263

263:                                              ; preds = %468, %262
  %264 = load %struct.btstack*, %struct.btstack** %9, align 8
  %265 = call %struct.btframe* @BT_POP(%struct.btstack* %264)
  store %struct.btframe* %265, %struct.btframe** %20, align 8
  %266 = icmp ne %struct.btframe* %265, null
  br i1 %266, label %267, label %469

267:                                              ; preds = %263
  %268 = load %struct.metapage*, %struct.metapage** %13, align 8
  store %struct.metapage* %268, %struct.metapage** %15, align 8
  %269 = load i32, i32* %14, align 4
  store i32 %269, i32* %17, align 4
  %270 = load %struct.inode*, %struct.inode** %7, align 8
  %271 = load %struct.metapage*, %struct.metapage** %15, align 8
  %272 = call %struct.TYPE_10__* @XT_PAGE(%struct.inode* %270, %struct.metapage* %271)
  store %struct.TYPE_10__* %272, %struct.TYPE_10__** %16, align 8
  %273 = load %struct.inode*, %struct.inode** %7, align 8
  %274 = load %struct.btframe*, %struct.btframe** %20, align 8
  %275 = getelementptr inbounds %struct.btframe, %struct.btframe* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.metapage*, %struct.metapage** %11, align 8
  %278 = load i32, i32* @PSIZE, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %280 = load i32, i32* %10, align 4
  %281 = call i32 @XT_GETPAGE(%struct.inode* %273, i32 %276, %struct.metapage* %277, i32 %278, %struct.TYPE_10__* %279, i32 %280)
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %267
  %285 = load %struct.metapage*, %struct.metapage** %15, align 8
  %286 = call i32 @XT_PUTPAGE(%struct.metapage* %285)
  %287 = load i32, i32* %10, align 4
  store i32 %287, i32* %5, align 4
  br label %472

288:                                              ; preds = %267
  %289 = load %struct.btframe*, %struct.btframe** %20, align 8
  %290 = getelementptr inbounds %struct.btframe, %struct.btframe* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %18, align 4
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @le16_to_cpu(i32 %296)
  store i32 %297, i32* %19, align 4
  %298 = load i32, i32* %19, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @le16_to_cpu(i32 %302)
  %304 = icmp eq i32 %298, %303
  br i1 %304, label %305, label %364

305:                                              ; preds = %288
  %306 = load %struct.metapage*, %struct.metapage** %11, align 8
  %307 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %308 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %307, i32 0, i32 5
  store %struct.metapage* %306, %struct.metapage** %308, align 8
  %309 = load i32, i32* %18, align 4
  %310 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %311 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  %312 = load i32, i32* @XAD_NEW, align 4
  %313 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %314 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %313, i32 0, i32 4
  store i32 %312, i32* %314, align 8
  %315 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = load i64, i64* @XTENTRYSTART, align 8
  %319 = getelementptr inbounds i32, i32* %317, i64 %318
  %320 = call i32 @offsetXAD(i32* %319)
  %321 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %322 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  %323 = load %struct.inode*, %struct.inode** %7, align 8
  %324 = getelementptr inbounds %struct.inode, %struct.inode* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = call %struct.TYPE_11__* @JFS_SBI(i32 %325)
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %330 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 4
  %331 = load i32, i32* %17, align 4
  %332 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %333 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %332, i32 0, i32 2
  store i32 %331, i32* %333, align 8
  %334 = load %struct.metapage*, %struct.metapage** %15, align 8
  %335 = call i32 @XT_PUTPAGE(%struct.metapage* %334)
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @BT_ROOT, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %348

343:                                              ; preds = %305
  %344 = load i32, i32* %6, align 4
  %345 = load %struct.inode*, %struct.inode** %7, align 8
  %346 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %347 = call i32 @xtSplitRoot(i32 %344, %struct.inode* %345, %struct.xtsplit* %346, %struct.metapage** %13)
  br label %353

348:                                              ; preds = %305
  %349 = load i32, i32* %6, align 4
  %350 = load %struct.inode*, %struct.inode** %7, align 8
  %351 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %352 = call i32 @xtSplitPage(i32 %349, %struct.inode* %350, %struct.xtsplit* %351, %struct.metapage** %13, i32* %14)
  br label %353

353:                                              ; preds = %348, %343
  %354 = phi i32 [ %347, %343 ], [ %352, %348 ]
  store i32 %354, i32* %10, align 4
  %355 = load i32, i32* %10, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load %struct.metapage*, %struct.metapage** %11, align 8
  %359 = call i32 @XT_PUTPAGE(%struct.metapage* %358)
  %360 = load i32, i32* %10, align 4
  store i32 %360, i32* %5, align 4
  br label %472

361:                                              ; preds = %353
  %362 = load %struct.metapage*, %struct.metapage** %11, align 8
  %363 = call i32 @XT_PUTPAGE(%struct.metapage* %362)
  br label %468

364:                                              ; preds = %288
  %365 = load %struct.metapage*, %struct.metapage** %11, align 8
  %366 = load %struct.inode*, %struct.inode** %7, align 8
  %367 = call i32 @BT_MARK_DIRTY(%struct.metapage* %365, %struct.inode* %366)
  %368 = load i32, i32* %18, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp slt i32 %368, %369
  br i1 %370, label %371, label %391

371:                                              ; preds = %364
  %372 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %373 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %372, i32 0, i32 1
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %18, align 4
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %380 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %379, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = load i32, i32* %18, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %381, i64 %383
  %385 = load i32, i32* %19, align 4
  %386 = load i32, i32* %18, align 4
  %387 = sub nsw i32 %385, %386
  %388 = load i32, i32* @L2XTSLOTSIZE, align 4
  %389 = shl i32 %387, %388
  %390 = call i32 @memmove(i32* %378, i32* %384, i32 %389)
  br label %391

391:                                              ; preds = %371, %364
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %18, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32* %397, i32** %21, align 8
  %398 = load i32*, i32** %21, align 8
  %399 = load i32, i32* @XAD_NEW, align 4
  %400 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 1
  %402 = load i32*, i32** %401, align 8
  %403 = load i64, i64* @XTENTRYSTART, align 8
  %404 = getelementptr inbounds i32, i32* %402, i64 %403
  %405 = call i32 @offsetXAD(i32* %404)
  %406 = load %struct.inode*, %struct.inode** %7, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  %409 = call %struct.TYPE_11__* @JFS_SBI(i32 %408)
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %17, align 4
  %413 = call i32 @XT_PUTENTRY(i32* %398, i32 %399, i32 %405, i32 %411, i32 %412)
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 1
  %417 = call i32 @le16_add_cpu(i32* %416, i32 1)
  %418 = load i32, i32* @COMMIT_Nolink, align 4
  %419 = load %struct.inode*, %struct.inode** %7, align 8
  %420 = call i32 @test_cflag(i32 %418, %struct.inode* %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %465, label %422

422:                                              ; preds = %391
  %423 = load i32, i32* %6, align 4
  %424 = load %struct.inode*, %struct.inode** %7, align 8
  %425 = load %struct.metapage*, %struct.metapage** %11, align 8
  %426 = load i32, i32* @tlckXTREE, align 4
  %427 = load i32, i32* @tlckGROW, align 4
  %428 = or i32 %426, %427
  %429 = call %struct.tlock* @txLock(i32 %423, %struct.inode* %424, %struct.metapage* %425, i32 %428)
  store %struct.tlock* %429, %struct.tlock** %27, align 8
  %430 = load %struct.tlock*, %struct.tlock** %27, align 8
  %431 = getelementptr inbounds %struct.tlock, %struct.tlock* %430, i32 0, i32 0
  %432 = bitcast i32* %431 to %struct.xtlock*
  store %struct.xtlock* %432, %struct.xtlock** %28, align 8
  %433 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %434 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %422
  %439 = load i32, i32* %18, align 4
  %440 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %441 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 4
  %444 = call i32 @min(i32 %439, i32 %443)
  br label %447

445:                                              ; preds = %422
  %446 = load i32, i32* %18, align 4
  br label %447

447:                                              ; preds = %445, %438
  %448 = phi i32 [ %444, %438 ], [ %446, %445 ]
  %449 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %450 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %450, i32 0, i32 0
  store i32 %448, i32* %451, align 4
  %452 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = call i32 @le16_to_cpu(i32 %455)
  %457 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %458 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = sub nsw i32 %456, %460
  %462 = load %struct.xtlock*, %struct.xtlock** %28, align 8
  %463 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 1
  store i32 %461, i32* %464, align 4
  br label %465

465:                                              ; preds = %447, %391
  %466 = load %struct.metapage*, %struct.metapage** %11, align 8
  %467 = call i32 @XT_PUTPAGE(%struct.metapage* %466)
  br label %469

468:                                              ; preds = %361
  br label %263

469:                                              ; preds = %465, %263
  %470 = load %struct.metapage*, %struct.metapage** %13, align 8
  %471 = call i32 @XT_PUTPAGE(%struct.metapage* %470)
  store i32 0, i32* %5, align 4
  br label %472

472:                                              ; preds = %469, %357, %284, %259, %225, %184
  %473 = load i32, i32* %5, align 4
  ret i32 %473
}

declare dso_local %struct.TYPE_10__* @XT_PAGE(%struct.inode*, %struct.metapage*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_12__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_11__* @JFS_SBI(i32) #1

declare dso_local i32 @dbAlloc(%struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @PXDaddress(i32*, i32) #1

declare dso_local i32 @PXDlength(i32*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @xtSplitRoot(i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**) #1

declare dso_local i32 @xtSplitPage(i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**, i32*) #1

declare dso_local %struct.btframe* @BT_POP(%struct.btstack*) #1

declare dso_local i32 @XT_GETPAGE(%struct.inode*, i32, %struct.metapage*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @offsetXAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
