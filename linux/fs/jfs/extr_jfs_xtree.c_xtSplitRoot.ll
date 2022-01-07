; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitRoot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_xtree.c_xtSplitRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.inode = type { %struct.TYPE_6__, i32, i32*, i64 }
%struct.TYPE_6__ = type { i32, i8*, i8*, i64, i64, i32 }
%struct.xtsplit = type { i32, %struct.metapage*, i32, i32, i32, i32, %struct.pxdlist* }
%struct.metapage = type { %struct.TYPE_6__, i32, i32*, i64 }
%struct.pxdlist = type { i64, i32* }
%struct.tlock = type { i32 }
%struct.xtlock = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.metapage }
%struct.TYPE_9__ = type { i32 }

@xtStat = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@PSIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"xtSplitRoot: ip:0x%p rmp:0x%p\00", align 1
@BT_LEAF = common dso_local global i32 0, align 4
@BT_INTERNAL = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@COMMIT_Nolink = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckNEW = common dso_local global i32 0, align 4
@XAD_NEW = common dso_local global i32 0, align 4
@tlckGROW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"xtSplitRoot: sp:0x%p rp:0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.inode*, %struct.xtsplit*, %struct.metapage**)* @xtSplitRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xtSplitRoot(i32 %0, %struct.inode* %1, %struct.xtsplit* %2, %struct.metapage** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.xtsplit*, align 8
  %9 = alloca %struct.metapage**, align 8
  %10 = alloca %struct.metapage*, align 8
  %11 = alloca %struct.metapage*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.pxdlist*, align 8
  %19 = alloca %struct.tlock*, align 8
  %20 = alloca %struct.xtlock*, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.xtsplit* %2, %struct.xtsplit** %8, align 8
  store %struct.metapage** %3, %struct.metapage*** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = bitcast %struct.inode* %22 to %struct.metapage*
  %24 = call %struct.TYPE_10__* @JFS_IP(%struct.metapage* %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store %struct.metapage* %25, %struct.metapage** %10, align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @xtStat, i32 0, i32 0), align 4
  %27 = call i32 @INCREMENT(i32 %26)
  %28 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %29 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %28, i32 0, i32 6
  %30 = load %struct.pxdlist*, %struct.pxdlist** %29, align 8
  store %struct.pxdlist* %30, %struct.pxdlist** %18, align 8
  %31 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %32 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %35 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %17, align 8
  %38 = load %struct.pxdlist*, %struct.pxdlist** %18, align 8
  %39 = getelementptr inbounds %struct.pxdlist, %struct.pxdlist* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @addressPXD(i32* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = bitcast %struct.inode* %44 to %struct.metapage*
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @PSIZE, align 4
  %48 = call %struct.metapage* @get_metapage(%struct.metapage* %45, i32 %46, i32 %47, i32 1)
  store %struct.metapage* %48, %struct.metapage** %11, align 8
  %49 = load %struct.metapage*, %struct.metapage** %11, align 8
  %50 = icmp eq %struct.metapage* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %4
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %303

54:                                               ; preds = %4
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = bitcast %struct.inode* %55 to %struct.metapage*
  %57 = load i32*, i32** %17, align 8
  %58 = call i32 @lengthPXD(i32* %57)
  %59 = call i32 @dquot_alloc_block(%struct.metapage* %56, i32 %58)
  store i32 %59, i32* %21, align 4
  %60 = load i32, i32* %21, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load %struct.metapage*, %struct.metapage** %11, align 8
  %64 = call i32 @release_metapage(%struct.metapage* %63)
  %65 = load i32, i32* %21, align 4
  store i32 %65, i32* %5, align 4
  br label %303

66:                                               ; preds = %54
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = bitcast %struct.inode* %67 to %struct.metapage*
  %69 = load %struct.metapage*, %struct.metapage** %11, align 8
  %70 = call i32 @jfs_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.metapage* %68, %struct.metapage* %69)
  %71 = load %struct.metapage*, %struct.metapage** %11, align 8
  %72 = load %struct.inode*, %struct.inode** %7, align 8
  %73 = bitcast %struct.inode* %72 to %struct.metapage*
  %74 = call i32 @BT_MARK_DIRTY(%struct.metapage* %71, %struct.metapage* %73)
  %75 = load %struct.metapage*, %struct.metapage** %11, align 8
  %76 = getelementptr inbounds %struct.metapage, %struct.metapage* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.metapage*
  store %struct.metapage* %78, %struct.metapage** %12, align 8
  %79 = load %struct.metapage*, %struct.metapage** %10, align 8
  %80 = getelementptr inbounds %struct.metapage, %struct.metapage* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BT_LEAF, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %66
  %87 = load i32, i32* @BT_LEAF, align 4
  br label %90

88:                                               ; preds = %66
  %89 = load i32, i32* @BT_INTERNAL, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.metapage*, %struct.metapage** %12, align 8
  %93 = getelementptr inbounds %struct.metapage, %struct.metapage* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.metapage*, %struct.metapage** %12, align 8
  %98 = getelementptr inbounds %struct.metapage, %struct.metapage* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 8
  %100 = load i64, i64* @XTENTRYSTART, align 8
  %101 = call i8* @cpu_to_le16(i64 %100)
  %102 = load %struct.metapage*, %struct.metapage** %12, align 8
  %103 = getelementptr inbounds %struct.metapage, %struct.metapage* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i8* %101, i8** %104, align 8
  %105 = load i32, i32* @PSIZE, align 4
  %106 = load i32, i32* @L2XTSLOTSIZE, align 4
  %107 = ashr i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = call i8* @cpu_to_le16(i64 %108)
  %110 = load %struct.metapage*, %struct.metapage** %12, align 8
  %111 = getelementptr inbounds %struct.metapage, %struct.metapage* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i8* %109, i8** %112, align 8
  %113 = load %struct.metapage*, %struct.metapage** %12, align 8
  %114 = getelementptr inbounds %struct.metapage, %struct.metapage* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.metapage*, %struct.metapage** %12, align 8
  %117 = getelementptr inbounds %struct.metapage, %struct.metapage* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load %struct.metapage*, %struct.metapage** %10, align 8
  %120 = getelementptr inbounds %struct.metapage, %struct.metapage* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @le16_to_cpu(i8* %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  %125 = load %struct.metapage*, %struct.metapage** %12, align 8
  %126 = getelementptr inbounds %struct.metapage, %struct.metapage* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @XTENTRYSTART, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load %struct.metapage*, %struct.metapage** %10, align 8
  %131 = getelementptr inbounds %struct.metapage, %struct.metapage* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @XTENTRYSTART, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* @XTENTRYSTART, align 8
  %138 = sub i64 %136, %137
  %139 = load i32, i32* @L2XTSLOTSIZE, align 4
  %140 = zext i32 %139 to i64
  %141 = shl i64 %138, %140
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memmove(i32* %129, i32* %134, i32 %142)
  %144 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %145 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %15, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %171

150:                                              ; preds = %90
  %151 = load %struct.metapage*, %struct.metapage** %12, align 8
  %152 = getelementptr inbounds %struct.metapage, %struct.metapage* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  %158 = load %struct.metapage*, %struct.metapage** %12, align 8
  %159 = getelementptr inbounds %struct.metapage, %struct.metapage* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %14, align 4
  %166 = sub nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = mul i64 %167, 4
  %169 = trunc i64 %168 to i32
  %170 = call i32 @memmove(i32* %157, i32* %163, i32 %169)
  br label %171

171:                                              ; preds = %150, %90
  %172 = load %struct.metapage*, %struct.metapage** %12, align 8
  %173 = getelementptr inbounds %struct.metapage, %struct.metapage* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32* %177, i32** %16, align 8
  %178 = load i32*, i32** %16, align 8
  %179 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %180 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %183 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %186 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %189 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @XT_PUTENTRY(i32* %178, i32 %181, i32 %184, i32 %187, i32 %190)
  %192 = load i32, i32* %15, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = call i8* @cpu_to_le16(i64 %194)
  %196 = load %struct.metapage*, %struct.metapage** %12, align 8
  %197 = getelementptr inbounds %struct.metapage, %struct.metapage* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load i32, i32* @COMMIT_Nolink, align 4
  %200 = load %struct.inode*, %struct.inode** %7, align 8
  %201 = bitcast %struct.inode* %200 to %struct.metapage*
  %202 = call i32 @test_cflag(i32 %199, %struct.metapage* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %230, label %204

204:                                              ; preds = %171
  %205 = load i32, i32* %6, align 4
  %206 = load %struct.inode*, %struct.inode** %7, align 8
  %207 = bitcast %struct.inode* %206 to %struct.metapage*
  %208 = load %struct.metapage*, %struct.metapage** %11, align 8
  %209 = load i32, i32* @tlckXTREE, align 4
  %210 = load i32, i32* @tlckNEW, align 4
  %211 = or i32 %209, %210
  %212 = call %struct.tlock* @txLock(i32 %205, %struct.metapage* %207, %struct.metapage* %208, i32 %211)
  store %struct.tlock* %212, %struct.tlock** %19, align 8
  %213 = load %struct.tlock*, %struct.tlock** %19, align 8
  %214 = getelementptr inbounds %struct.tlock, %struct.tlock* %213, i32 0, i32 0
  %215 = bitcast i32* %214 to %struct.xtlock*
  store %struct.xtlock* %215, %struct.xtlock** %20, align 8
  %216 = load i64, i64* @XTENTRYSTART, align 8
  %217 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %218 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  store i64 %216, i64* %219, align 8
  %220 = load %struct.metapage*, %struct.metapage** %12, align 8
  %221 = getelementptr inbounds %struct.metapage, %struct.metapage* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = call i64 @le16_to_cpu(i8* %223)
  %225 = load i64, i64* @XTENTRYSTART, align 8
  %226 = sub i64 %224, %225
  %227 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %228 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 1
  store i64 %226, i64* %229, align 8
  br label %230

230:                                              ; preds = %204, %171
  %231 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %232 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %231, i32 0, i32 1
  %233 = load %struct.metapage*, %struct.metapage** %232, align 8
  %234 = load %struct.inode*, %struct.inode** %7, align 8
  %235 = bitcast %struct.inode* %234 to %struct.metapage*
  %236 = call i32 @BT_MARK_DIRTY(%struct.metapage* %233, %struct.metapage* %235)
  %237 = load %struct.metapage*, %struct.metapage** %10, align 8
  %238 = getelementptr inbounds %struct.metapage, %struct.metapage* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @XTENTRYSTART, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32* %241, i32** %16, align 8
  %242 = load i32*, i32** %16, align 8
  %243 = load i32, i32* @XAD_NEW, align 4
  %244 = load %struct.inode*, %struct.inode** %7, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call %struct.TYPE_9__* @JFS_SBI(i32 %246)
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @XT_PUTENTRY(i32* %242, i32 %243, i32 0, i32 %249, i32 %250)
  %252 = load i32, i32* @BT_LEAF, align 4
  %253 = xor i32 %252, -1
  %254 = load %struct.metapage*, %struct.metapage** %10, align 8
  %255 = getelementptr inbounds %struct.metapage, %struct.metapage* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = and i32 %257, %253
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* @BT_INTERNAL, align 4
  %260 = load %struct.metapage*, %struct.metapage** %10, align 8
  %261 = getelementptr inbounds %struct.metapage, %struct.metapage* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = or i32 %263, %259
  store i32 %264, i32* %262, align 8
  %265 = load i64, i64* @XTENTRYSTART, align 8
  %266 = add i64 %265, 1
  %267 = call i8* @cpu_to_le16(i64 %266)
  %268 = load %struct.metapage*, %struct.metapage** %10, align 8
  %269 = getelementptr inbounds %struct.metapage, %struct.metapage* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  store i8* %267, i8** %270, align 8
  %271 = load i32, i32* @COMMIT_Nolink, align 4
  %272 = load %struct.inode*, %struct.inode** %7, align 8
  %273 = bitcast %struct.inode* %272 to %struct.metapage*
  %274 = call i32 @test_cflag(i32 %271, %struct.metapage* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %297, label %276

276:                                              ; preds = %230
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.inode*, %struct.inode** %7, align 8
  %279 = bitcast %struct.inode* %278 to %struct.metapage*
  %280 = load %struct.xtsplit*, %struct.xtsplit** %8, align 8
  %281 = getelementptr inbounds %struct.xtsplit, %struct.xtsplit* %280, i32 0, i32 1
  %282 = load %struct.metapage*, %struct.metapage** %281, align 8
  %283 = load i32, i32* @tlckXTREE, align 4
  %284 = load i32, i32* @tlckGROW, align 4
  %285 = or i32 %283, %284
  %286 = call %struct.tlock* @txLock(i32 %277, %struct.metapage* %279, %struct.metapage* %282, i32 %285)
  store %struct.tlock* %286, %struct.tlock** %19, align 8
  %287 = load %struct.tlock*, %struct.tlock** %19, align 8
  %288 = getelementptr inbounds %struct.tlock, %struct.tlock* %287, i32 0, i32 0
  %289 = bitcast i32* %288 to %struct.xtlock*
  store %struct.xtlock* %289, %struct.xtlock** %20, align 8
  %290 = load i64, i64* @XTENTRYSTART, align 8
  %291 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %292 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i32 0, i32 0
  store i64 %290, i64* %293, align 8
  %294 = load %struct.xtlock*, %struct.xtlock** %20, align 8
  %295 = getelementptr inbounds %struct.xtlock, %struct.xtlock* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  store i64 1, i64* %296, align 8
  br label %297

297:                                              ; preds = %276, %230
  %298 = load %struct.metapage*, %struct.metapage** %11, align 8
  %299 = load %struct.metapage**, %struct.metapage*** %9, align 8
  store %struct.metapage* %298, %struct.metapage** %299, align 8
  %300 = load %struct.metapage*, %struct.metapage** %10, align 8
  %301 = load %struct.metapage*, %struct.metapage** %12, align 8
  %302 = call i32 @jfs_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.metapage* %300, %struct.metapage* %301)
  store i32 0, i32* %5, align 4
  br label %303

303:                                              ; preds = %297, %62, %51
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local %struct.TYPE_10__* @JFS_IP(%struct.metapage*) #1

declare dso_local i32 @INCREMENT(i32) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local %struct.metapage* @get_metapage(%struct.metapage*, i32, i32, i32) #1

declare dso_local i32 @dquot_alloc_block(%struct.metapage*, i32) #1

declare dso_local i32 @lengthPXD(i32*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_info(i8*, %struct.metapage*, %struct.metapage*) #1

declare dso_local i32 @BT_MARK_DIRTY(%struct.metapage*, %struct.metapage*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @XT_PUTENTRY(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @test_cflag(i32, %struct.metapage*) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.metapage*, %struct.metapage*, i32) #1

declare dso_local %struct.TYPE_9__* @JFS_SBI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
