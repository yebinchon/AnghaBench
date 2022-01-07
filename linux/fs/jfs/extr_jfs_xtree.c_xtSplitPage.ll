; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitPage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32 }
%struct.xtsplit = type { i32, i32, i32, i32, i32, %struct.pxdlist*, %struct.metapage* }
%struct.pxdlist = type { i64, i32* }
%struct.metapage = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i32 }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32 }

@xtStat = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"xtSplitPage: ip:0x%p smp:0x%p rmp:0x%p\00", align 1
@BT_TYPE = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xtSplitPage: sp:0x%p rp:0x%p\00", align 1
@tlckRELINK = common dso_local global i32 0, align 4
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**, i64*)* @xtSplitPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtSplitPage(i32 %0, %struct.inode* %1, %struct.xtsplit* %2, %struct.metapage** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.xtsplit*, align 8
  %10 = alloca %struct.metapage**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.metapage*, align 8
  %16 = alloca %struct.TYPE_10__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.metapage*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca %struct.pxdlist*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.tlock*, align 8
  %30 = alloca %struct.xtlock*, align 8
  %31 = alloca %struct.xtlock*, align 8
  %32 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.xtsplit* %2, %struct.xtsplit** %9, align 8
  store %struct.metapage** %3, %struct.metapage*** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  store %struct.xtlock* null, %struct.xtlock** %30, align 8
  store %struct.xtlock* null, %struct.xtlock** %31, align 8
  store i32 0, i32* %32, align 4
  %33 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %34 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %33, i32 0, i32 6
  %35 = load %struct.metapage*, %struct.metapage** %34, align 8
  store %struct.metapage* %35, %struct.metapage** %13, align 8
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = load %struct.metapage*, %struct.metapage** %13, align 8
  %38 = call %struct.TYPE_10__* @XT_PAGE(%struct.inode* %36, %struct.metapage* %37)
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %14, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @xtStat, i32 0, i32 0), align 4
  %40 = call i32 @INCREMENT(i32 %39)
  %41 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %42 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %41, i32 0, i32 5
  %43 = load %struct.pxdlist*, %struct.pxdlist** %42, align 8
  store %struct.pxdlist* %43, %struct.pxdlist** %27, align 8
  %44 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %45 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %48 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %28, align 8
  %51 = load %struct.pxdlist*, %struct.pxdlist** %27, align 8
  %52 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load i32*, i32** %28, align 8
  %56 = call i64 @addressPXD(i32* %55)
  store i64 %56, i64* %17, align 8
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = load i32*, i32** %28, align 8
  %59 = call i64 @lengthPXD(i32* %58)
  %60 = call i32 @dquot_alloc_block(%struct.inode* %57, i64 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %5
  br label %538

64:                                               ; preds = %5
  %65 = load i32*, i32** %28, align 8
  %66 = call i64 @lengthPXD(i32* %65)
  %67 = load i32, i32* %32, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %32, align 4
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i32, i32* @PSIZE, align 4
  %74 = call %struct.metapage* @get_metapage(%struct.inode* %71, i64 %72, i32 %73, i32 1)
  store %struct.metapage* %74, %struct.metapage** %15, align 8
  %75 = load %struct.metapage*, %struct.metapage** %15, align 8
  %76 = icmp eq %struct.metapage* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %64
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %12, align 4
  br label %538

80:                                               ; preds = %64
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = bitcast %struct.inode* %81 to %struct.TYPE_10__*
  %83 = load %struct.metapage*, %struct.metapage** %13, align 8
  %84 = load %struct.metapage*, %struct.metapage** %15, align 8
  %85 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %82, %struct.metapage* %83, %struct.metapage* %84)
  %86 = load %struct.metapage*, %struct.metapage** %15, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @BT_MARK_DIRTY(%struct.metapage* %86, %struct.inode* %87)
  %89 = load %struct.metapage*, %struct.metapage** %15, align 8
  %90 = getelementptr inbounds %struct.metapage, %struct.metapage* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %16, align 8
  %93 = load i32*, i32** %28, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  store i32 %94, i32* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @BT_TYPE, align 4
  %103 = and i32 %101, %102
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 2
  store i8* %110, i8** %113, align 8
  %114 = load i64, i64* @XTENTRYSTART, align 8
  %115 = call i8* @cpu_to_le16(i64 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  %119 = load %struct.metapage*, %struct.metapage** %13, align 8
  %120 = load %struct.inode*, %struct.inode** %8, align 8
  %121 = call i32 @BT_MARK_DIRTY(%struct.metapage* %119, %struct.inode* %120)
  %122 = load i32, i32* @COMMIT_Nolink, align 4
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = call i32 @test_cflag(i32 %122, %struct.inode* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %151, label %126

126:                                              ; preds = %80
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.inode*, %struct.inode** %8, align 8
  %129 = load %struct.metapage*, %struct.metapage** %15, align 8
  %130 = load i32, i32* @tlckXTREE, align 4
  %131 = load i32, i32* @tlckNEW, align 4
  %132 = or i32 %130, %131
  %133 = call %struct.tlock* @txLock(i32 %127, %struct.inode* %128, %struct.metapage* %129, i32 %132)
  store %struct.tlock* %133, %struct.tlock** %29, align 8
  %134 = load %struct.tlock*, %struct.tlock** %29, align 8
  %135 = getelementptr inbounds %struct.tlock, %struct.tlock* %134, i32 0, i32 0
  %136 = bitcast i32* %135 to %struct.xtlock*
  store %struct.xtlock* %136, %struct.xtlock** %31, align 8
  %137 = load i64, i64* @XTENTRYSTART, align 8
  %138 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %139 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  store i64 %137, i64* %140, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.inode*, %struct.inode** %8, align 8
  %143 = load %struct.metapage*, %struct.metapage** %13, align 8
  %144 = load i32, i32* @tlckXTREE, align 4
  %145 = load i32, i32* @tlckGROW, align 4
  %146 = or i32 %144, %145
  %147 = call %struct.tlock* @txLock(i32 %141, %struct.inode* %142, %struct.metapage* %143, i32 %146)
  store %struct.tlock* %147, %struct.tlock** %29, align 8
  %148 = load %struct.tlock*, %struct.tlock** %29, align 8
  %149 = getelementptr inbounds %struct.tlock, %struct.tlock* %148, i32 0, i32 0
  %150 = bitcast i32* %149 to %struct.xtlock*
  store %struct.xtlock* %150, %struct.xtlock** %30, align 8
  br label %151

151:                                              ; preds = %126, %80
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load i8*, i8** %154, align 8
  %156 = call i64 @le64_to_cpu(i8* %155)
  store i64 %156, i64* %20, align 8
  %157 = load i64, i64* %20, align 8
  %158 = call i8* @cpu_to_le64(i64 %157)
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  store i8* %158, i8** %161, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 5
  %165 = call i64 @addressPXD(i32* %164)
  %166 = call i8* @cpu_to_le64(i64 %165)
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 3
  store i8* %166, i8** %169, align 8
  %170 = load i64, i64* %17, align 8
  %171 = call i8* @cpu_to_le64(i64 %170)
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 4
  store i8* %171, i8** %174, align 8
  %175 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %176 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  store i32 %177, i32* %21, align 4
  %178 = load i64, i64* %20, align 8
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %231

180:                                              ; preds = %151
  %181 = load i32, i32* %21, align 4
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @le16_to_cpu(i8* %186)
  %188 = icmp eq i64 %182, %187
  br i1 %188, label %189, label %231

189:                                              ; preds = %180
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @XTENTRYSTART, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %26, align 8
  %195 = load i32*, i32** %26, align 8
  %196 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %197 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %200 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %203 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %206 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @XT_PUTENTRY(i32* %195, i32 %198, i32 %201, i32 %204, i32 %207)
  %209 = load i64, i64* @XTENTRYSTART, align 8
  %210 = add i64 %209, 1
  %211 = call i8* @cpu_to_le16(i64 %210)
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i8* %211, i8** %214, align 8
  %215 = load i32, i32* @COMMIT_Nolink, align 4
  %216 = load %struct.inode*, %struct.inode** %8, align 8
  %217 = call i32 @test_cflag(i32 %215, %struct.inode* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %223, label %219

219:                                              ; preds = %189
  %220 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %221 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 1
  store i32 1, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %189
  %224 = load %struct.metapage*, %struct.metapage** %15, align 8
  %225 = load %struct.metapage**, %struct.metapage*** %10, align 8
  store %struct.metapage* %224, %struct.metapage** %225, align 8
  %226 = load i64, i64* %17, align 8
  %227 = load i64*, i64** %11, align 8
  store i64 %226, i64* %227, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %230 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %228, %struct.TYPE_10__* %229)
  store i32 0, i32* %6, align 4
  br label %547

231:                                              ; preds = %180, %151
  %232 = load i64, i64* %20, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %271

234:                                              ; preds = %231
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load %struct.metapage*, %struct.metapage** %18, align 8
  %238 = load i32, i32* @PSIZE, align 4
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @XT_GETPAGE(%struct.inode* %235, i64 %236, %struct.metapage* %237, i32 %238, %struct.TYPE_10__* %239, i32 %240)
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %234
  %245 = load %struct.metapage*, %struct.metapage** %15, align 8
  %246 = call i32 @XT_PUTPAGE(%struct.metapage* %245)
  br label %538

247:                                              ; preds = %234
  %248 = load %struct.metapage*, %struct.metapage** %18, align 8
  %249 = load %struct.inode*, %struct.inode** %8, align 8
  %250 = call i32 @BT_MARK_DIRTY(%struct.metapage* %248, %struct.inode* %249)
  %251 = load i32, i32* @COMMIT_Nolink, align 4
  %252 = load %struct.inode*, %struct.inode** %8, align 8
  %253 = call i32 @test_cflag(i32 %251, %struct.inode* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %247
  %256 = load i32, i32* %7, align 4
  %257 = load %struct.inode*, %struct.inode** %8, align 8
  %258 = load %struct.metapage*, %struct.metapage** %18, align 8
  %259 = load i32, i32* @tlckXTREE, align 4
  %260 = load i32, i32* @tlckRELINK, align 4
  %261 = or i32 %259, %260
  %262 = call %struct.tlock* @txLock(i32 %256, %struct.inode* %257, %struct.metapage* %258, i32 %261)
  store %struct.tlock* %262, %struct.tlock** %29, align 8
  br label %263

263:                                              ; preds = %255, %247
  %264 = load i64, i64* %17, align 8
  %265 = call i8* @cpu_to_le64(i64 %264)
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 3
  store i8* %265, i8** %268, align 8
  %269 = load %struct.metapage*, %struct.metapage** %18, align 8
  %270 = call i32 @XT_PUTPAGE(%struct.metapage* %269)
  br label %271

271:                                              ; preds = %263, %231
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 2
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @le16_to_cpu(i8* %275)
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %22, align 4
  %278 = load i32, i32* %22, align 4
  %279 = ashr i32 %278, 1
  store i32 %279, i32* %23, align 4
  %280 = load i32, i32* %22, align 4
  %281 = load i32, i32* %23, align 4
  %282 = sub nsw i32 %280, %281
  store i32 %282, i32* %24, align 4
  %283 = load i32, i32* %21, align 4
  %284 = load i32, i32* %23, align 4
  %285 = icmp sle i32 %283, %284
  br i1 %285, label %286, label %388

286:                                              ; preds = %271
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* @XTENTRYSTART, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %24, align 4
  %299 = load i32, i32* @L2XTSLOTSIZE, align 4
  %300 = shl i32 %298, %299
  %301 = call i32 @memmove(i32* %291, i32* %297, i32 %300)
  %302 = load i32, i32* %21, align 4
  %303 = load i32, i32* %23, align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %286
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 1
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %21, align 4
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 1
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %23, align 4
  %320 = load i32, i32* %21, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* @L2XTSLOTSIZE, align 4
  %323 = shl i32 %321, %322
  %324 = call i32 @memmove(i32* %312, i32* %318, i32 %323)
  br label %325

325:                                              ; preds = %305, %286
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = load i32, i32* %21, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %328, i64 %330
  store i32* %331, i32** %26, align 8
  %332 = load i32*, i32** %26, align 8
  %333 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %334 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %337 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %340 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %343 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @XT_PUTENTRY(i32* %332, i32 %335, i32 %338, i32 %341, i32 %344)
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %346, 1
  %348 = sext i32 %347 to i64
  %349 = call i8* @cpu_to_le16(i64 %348)
  %350 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %351, i32 0, i32 1
  store i8* %349, i8** %352, align 8
  %353 = load i32, i32* @COMMIT_Nolink, align 4
  %354 = load %struct.inode*, %struct.inode** %8, align 8
  %355 = call i32 @test_cflag(i32 %353, %struct.inode* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %379, label %357

357:                                              ; preds = %325
  %358 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %359 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 0
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %371

363:                                              ; preds = %357
  %364 = load i32, i32* %21, align 4
  %365 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %366 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = trunc i64 %368 to i32
  %370 = call i32 @min(i32 %364, i32 %369)
  br label %373

371:                                              ; preds = %357
  %372 = load i32, i32* %21, align 4
  br label %373

373:                                              ; preds = %371, %363
  %374 = phi i32 [ %370, %363 ], [ %372, %371 ]
  %375 = sext i32 %374 to i64
  %376 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %377 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  store i64 %375, i64* %378, align 8
  br label %379

379:                                              ; preds = %373, %325
  %380 = load i64, i64* @XTENTRYSTART, align 8
  %381 = load i32, i32* %24, align 4
  %382 = sext i32 %381 to i64
  %383 = add i64 %380, %382
  %384 = call i8* @cpu_to_le16(i64 %383)
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 1
  store i8* %384, i8** %387, align 8
  br label %498

388:                                              ; preds = %271
  %389 = load i32, i32* %21, align 4
  %390 = load i32, i32* %23, align 4
  %391 = sub nsw i32 %389, %390
  store i32 %391, i32* %25, align 4
  %392 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 1
  %394 = load i32*, i32** %393, align 8
  %395 = load i64, i64* @XTENTRYSTART, align 8
  %396 = getelementptr inbounds i32, i32* %394, i64 %395
  %397 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %398 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %23, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %25, align 4
  %404 = load i32, i32* @L2XTSLOTSIZE, align 4
  %405 = shl i32 %403, %404
  %406 = call i32 @memmove(i32* %396, i32* %402, i32 %405)
  %407 = load i64, i64* @XTENTRYSTART, align 8
  %408 = load i32, i32* %25, align 4
  %409 = sext i32 %408 to i64
  %410 = add i64 %409, %407
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %25, align 4
  %412 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 1
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %25, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32* %417, i32** %26, align 8
  %418 = load i32*, i32** %26, align 8
  %419 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %420 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 8
  %422 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %423 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %426 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.xtsplit*, %struct.xtsplit** %9, align 8
  %429 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @XT_PUTENTRY(i32* %418, i32 %421, i32 %424, i32 %427, i32 %430)
  %432 = load i32, i32* %21, align 4
  %433 = load i32, i32* %22, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %455

435:                                              ; preds = %388
  %436 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %437 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %436, i32 0, i32 1
  %438 = load i32*, i32** %437, align 8
  %439 = load i32, i32* %25, align 4
  %440 = add nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %438, i64 %441
  %443 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %444 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %443, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = load i32, i32* %21, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %22, align 4
  %450 = load i32, i32* %21, align 4
  %451 = sub nsw i32 %449, %450
  %452 = load i32, i32* @L2XTSLOTSIZE, align 4
  %453 = shl i32 %451, %452
  %454 = call i32 @memmove(i32* %442, i32* %448, i32 %453)
  br label %455

455:                                              ; preds = %435, %388
  %456 = load i32, i32* %23, align 4
  %457 = sext i32 %456 to i64
  %458 = call i8* @cpu_to_le16(i64 %457)
  %459 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %460 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %460, i32 0, i32 1
  store i8* %458, i8** %461, align 8
  %462 = load i32, i32* @COMMIT_Nolink, align 4
  %463 = load %struct.inode*, %struct.inode** %8, align 8
  %464 = call i32 @test_cflag(i32 %462, %struct.inode* %463)
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %488, label %466

466:                                              ; preds = %455
  %467 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %468 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 0
  %470 = load i64, i64* %469, align 8
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %466
  %473 = load i32, i32* %23, align 4
  %474 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %475 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = trunc i64 %477 to i32
  %479 = call i32 @min(i32 %473, i32 %478)
  br label %482

480:                                              ; preds = %466
  %481 = load i32, i32* %23, align 4
  br label %482

482:                                              ; preds = %480, %472
  %483 = phi i32 [ %479, %472 ], [ %481, %480 ]
  %484 = sext i32 %483 to i64
  %485 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %486 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %485, i32 0, i32 0
  %487 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %486, i32 0, i32 0
  store i64 %484, i64* %487, align 8
  br label %488

488:                                              ; preds = %482, %455
  %489 = load i64, i64* @XTENTRYSTART, align 8
  %490 = load i32, i32* %24, align 4
  %491 = sext i32 %490 to i64
  %492 = add i64 %489, %491
  %493 = add i64 %492, 1
  %494 = call i8* @cpu_to_le16(i64 %493)
  %495 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %496 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 1
  store i8* %494, i8** %497, align 8
  br label %498

498:                                              ; preds = %488, %379
  %499 = load i32, i32* @COMMIT_Nolink, align 4
  %500 = load %struct.inode*, %struct.inode** %8, align 8
  %501 = call i32 @test_cflag(i32 %499, %struct.inode* %500)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %529, label %503

503:                                              ; preds = %498
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %505, i32 0, i32 1
  %507 = load i8*, i8** %506, align 8
  %508 = call i64 @le16_to_cpu(i8* %507)
  %509 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %510 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  %512 = load i64, i64* %511, align 8
  %513 = sub i64 %508, %512
  %514 = trunc i64 %513 to i32
  %515 = load %struct.xtlock*, %struct.xtlock** %30, align 8
  %516 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %515, i32 0, i32 0
  %517 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %516, i32 0, i32 1
  store i32 %514, i32* %517, align 8
  %518 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 1
  %521 = load i8*, i8** %520, align 8
  %522 = call i64 @le16_to_cpu(i8* %521)
  %523 = load i64, i64* @XTENTRYSTART, align 8
  %524 = sub i64 %522, %523
  %525 = trunc i64 %524 to i32
  %526 = load %struct.xtlock*, %struct.xtlock** %31, align 8
  %527 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %527, i32 0, i32 1
  store i32 %525, i32* %528, align 8
  br label %529

529:                                              ; preds = %503, %498
  %530 = load %struct.metapage*, %struct.metapage** %15, align 8
  %531 = load %struct.metapage**, %struct.metapage*** %10, align 8
  store %struct.metapage* %530, %struct.metapage** %531, align 8
  %532 = load i64, i64* %17, align 8
  %533 = load i64*, i64** %11, align 8
  store i64 %532, i64* %533, align 8
  %534 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %535 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %536 = call i32 (i8*, %struct.TYPE_10__*, ...) @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %534, %struct.TYPE_10__* %535)
  %537 = load i32, i32* %12, align 4
  store i32 %537, i32* %6, align 4
  br label %547

538:                                              ; preds = %244, %77, %63
  %539 = load i32, i32* %32, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %545

541:                                              ; preds = %538
  %542 = load %struct.inode*, %struct.inode** %8, align 8
  %543 = load i32, i32* %32, align 4
  %544 = call i32 @dquot_free_block(%struct.inode* %542, i32 %543)
  br label %545

545:                                              ; preds = %541, %538
  %546 = load i32, i32* %12, align 4
  store i32 %546, i32* %6, align 4
  br label %547

547:                                              ; preds = %545, %529, %223
  %548 = load i32, i32* %6, align 4
  ret i32 %548
}

declare dso_local %struct.TYPE_10__* @XT_PAGE(%struct.inode*, %struct.metapage*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @dquot_alloc_block(%struct.inode*, i64) #1

declare dso_local i64 @lengthPXD(i32*) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @jfs_info(i8*, %struct.TYPE_10__*, ...) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.inode*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @test_cflag(i32, %struct.inode*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @XT_GETPAGE(%struct.inode*, i64, %struct.metapage*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @XT_PUTPAGE(%struct.metapage*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dquot_free_block(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
