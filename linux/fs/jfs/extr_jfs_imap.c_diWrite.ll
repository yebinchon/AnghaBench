; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diWrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.jfs_sb_info = type { i64, i32, i32 }
%struct.jfs_inode_info = type { %struct.TYPE_11__, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__, i64, i64, i32, %struct.TYPE_9__*, %struct.inode* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.dinode = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.metapage = type { i64 }
%struct.tlock = type { i32, i32, %struct.metapage* }
%struct.linelock = type { i32, %struct.lv* }
%struct.lv = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }

@INOSPERIAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ixpxd invalid\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@INOSPERPAGE = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@L2DISIZE = common dso_local global i32 0, align 4
@tlckINODE = common dso_local global i32 0, align 4
@tlckENTRY = common dso_local global i32 0, align 4
@tlckXTREE = common dso_local global i32 0, align 4
@tlckBTROOT = common dso_local global i32 0, align 4
@L2XTSLOTSIZE = common dso_local global i32 0, align 4
@XTENTRYSTART = common dso_local global i64 0, align 8
@XAD_NEW = common dso_local global i32 0, align 4
@XAD_EXTENDED = common dso_local global i32 0, align 4
@tlckDTREE = common dso_local global i32 0, align 4
@L2DTSLOTSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"diWrite: UFO tlock\00", align 1
@IDATASIZE = common dso_local global i32 0, align 4
@L2INODESLOTSIZE = common dso_local global i32 0, align 4
@COMMIT_Inlineea = common dso_local global i32 0, align 4
@INODESLOTSIZE = common dso_local global i32 0, align 4
@COMMIT_Dirtable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diWrite(i32 %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.jfs_sb_info*, align 8
  %7 = alloca %struct.jfs_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dinode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.metapage*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.tlock*, align 8
  %22 = alloca %struct.tlock*, align 8
  %23 = alloca %struct.linelock*, align 8
  %24 = alloca %struct.linelock*, align 8
  %25 = alloca %struct.lv*, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_10__*, align 8
  %28 = alloca %struct.TYPE_10__*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca %struct.TYPE_10__*, align 8
  %31 = alloca %struct.TYPE_10__*, align 8
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_12__*, align 8
  %34 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.inode* %1, %struct.inode** %5, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.jfs_sb_info* @JFS_SBI(i32 %37)
  store %struct.jfs_sb_info* %38, %struct.jfs_sb_info** %6, align 8
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %39)
  store %struct.jfs_inode_info* %40, %struct.jfs_inode_info** %7, align 8
  store i32 0, i32* %8, align 4
  %41 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %42 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %41, i32 0, i32 9
  %43 = load %struct.inode*, %struct.inode** %42, align 8
  store %struct.inode* %43, %struct.inode** %18, align 8
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @INOSPERIAG, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %46, %48
  store i32 %49, i32* %9, align 4
  %50 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %51 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %50, i32 0, i32 7
  %52 = call i32 @addressPXD(i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %2
  %55 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %56 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %55, i32 0, i32 7
  %57 = call i64 @lengthPXD(i32* %56)
  %58 = load %struct.inode*, %struct.inode** %18, align 8
  %59 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %59, i32 0, i32 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %57, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %54, %2
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @jfs_error(i32 %68, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %562

72:                                               ; preds = %54
  %73 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %74 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %73, i32 0, i32 7
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %77 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @INOPBLK(i32* %74, i32 %75, i64 %78)
  store i64 %79, i64* %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @INOSPERPAGE, align 4
  %82 = sub nsw i32 %81, 1
  %83 = and i32 %80, %82
  store i32 %83, i32* %16, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %86 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = lshr i64 %84, %87
  store i64 %88, i64* %15, align 8
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %92 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %90, %94
  store i32 %95, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %125

97:                                               ; preds = %72
  %98 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %99 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %104 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %102, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %97
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %113 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %111, %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %16, align 4
  br label %124

118:                                              ; preds = %97
  %119 = load i64, i64* %15, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %15, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %16, align 4
  br label %124

124:                                              ; preds = %118, %110
  br label %125

125:                                              ; preds = %124, %72
  br label %126

126:                                              ; preds = %163, %125
  %127 = load %struct.inode*, %struct.inode** %18, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %130 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = shl i64 %128, %131
  %133 = load i32, i32* @PSIZE, align 4
  %134 = call %struct.metapage* @read_metapage(%struct.inode* %127, i64 %132, i32 %133, i32 1)
  store %struct.metapage* %134, %struct.metapage** %14, align 8
  %135 = load %struct.metapage*, %struct.metapage** %14, align 8
  %136 = icmp ne %struct.metapage* %135, null
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %562

140:                                              ; preds = %126
  %141 = load %struct.metapage*, %struct.metapage** %14, align 8
  %142 = getelementptr inbounds %struct.metapage, %struct.metapage* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to %struct.dinode*
  store %struct.dinode* %144, %struct.dinode** %10, align 8
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.dinode*, %struct.dinode** %10, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds %struct.dinode, %struct.dinode* %146, i64 %147
  store %struct.dinode* %148, %struct.dinode** %10, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @INOSPERPAGE, align 4
  %151 = sub nsw i32 %150, 1
  %152 = and i32 %149, %151
  %153 = load i32, i32* @L2DISIZE, align 4
  %154 = shl i32 %152, %153
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %4, align 4
  %156 = load %struct.inode*, %struct.inode** %18, align 8
  %157 = load %struct.metapage*, %struct.metapage** %14, align 8
  %158 = load i32, i32* @tlckINODE, align 4
  %159 = load i32, i32* @tlckENTRY, align 4
  %160 = or i32 %158, %159
  %161 = call %struct.tlock* @txLock(i32 %155, %struct.inode* %156, %struct.metapage* %157, i32 %160)
  store %struct.tlock* %161, %struct.tlock** %21, align 8
  %162 = icmp eq %struct.tlock* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %140
  br label %126

164:                                              ; preds = %140
  %165 = load %struct.tlock*, %struct.tlock** %21, align 8
  %166 = getelementptr inbounds %struct.tlock, %struct.tlock* %165, i32 0, i32 1
  %167 = bitcast i32* %166 to %struct.linelock*
  store %struct.linelock* %167, %struct.linelock** %23, align 8
  %168 = load %struct.inode*, %struct.inode** %5, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @S_ISDIR(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %281

173:                                              ; preds = %164
  %174 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %175 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %20, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %281

178:                                              ; preds = %173
  %179 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %180 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %179, i32 0, i32 6
  store i64 0, i64* %180, align 8
  %181 = load i64, i64* %20, align 8
  %182 = call %struct.tlock* @lid_to_tlock(i64 %181)
  store %struct.tlock* %182, %struct.tlock** %22, align 8
  %183 = load %struct.tlock*, %struct.tlock** %22, align 8
  %184 = getelementptr inbounds %struct.tlock, %struct.tlock* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @tlckXTREE, align 4
  %187 = and i32 %185, %186
  %188 = call i32 @assert(i32 %187)
  %189 = load i32, i32* @tlckBTROOT, align 4
  %190 = load %struct.tlock*, %struct.tlock** %22, align 8
  %191 = getelementptr inbounds %struct.tlock, %struct.tlock* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.metapage*, %struct.metapage** %14, align 8
  %195 = load %struct.tlock*, %struct.tlock** %22, align 8
  %196 = getelementptr inbounds %struct.tlock, %struct.tlock* %195, i32 0, i32 2
  store %struct.metapage* %194, %struct.metapage** %196, align 8
  %197 = load %struct.tlock*, %struct.tlock** %22, align 8
  %198 = getelementptr inbounds %struct.tlock, %struct.tlock* %197, i32 0, i32 1
  %199 = bitcast i32* %198 to %struct.linelock*
  store %struct.linelock* %199, %struct.linelock** %24, align 8
  %200 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %201 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %200, i32 0, i32 4
  store %struct.TYPE_10__* %201, %struct.TYPE_10__** %27, align 8
  %202 = load %struct.dinode*, %struct.dinode** %10, align 8
  %203 = getelementptr inbounds %struct.dinode, %struct.dinode* %202, i32 0, i32 0
  %204 = bitcast %struct.TYPE_11__* %203 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %204, %struct.TYPE_10__** %28, align 8
  %205 = load %struct.linelock*, %struct.linelock** %24, align 8
  %206 = getelementptr inbounds %struct.linelock, %struct.linelock* %205, i32 0, i32 1
  %207 = load %struct.lv*, %struct.lv** %206, align 8
  store %struct.lv* %207, %struct.lv** %25, align 8
  store i32 0, i32* %26, align 4
  br label %208

208:                                              ; preds = %235, %178
  %209 = load i32, i32* %26, align 4
  %210 = load %struct.linelock*, %struct.linelock** %24, align 8
  %211 = getelementptr inbounds %struct.linelock, %struct.linelock* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %240

214:                                              ; preds = %208
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = load %struct.lv*, %struct.lv** %25, align 8
  %219 = getelementptr inbounds %struct.lv, %struct.lv* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i64 %220
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = load %struct.lv*, %struct.lv** %25, align 8
  %226 = getelementptr inbounds %struct.lv, %struct.lv* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i64 %227
  %229 = load %struct.lv*, %struct.lv** %25, align 8
  %230 = getelementptr inbounds %struct.lv, %struct.lv* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @L2XTSLOTSIZE, align 4
  %233 = shl i32 %231, %232
  %234 = call i32 @memcpy(%struct.TYPE_11__* %221, %struct.TYPE_11__* %228, i32 %233)
  br label %235

235:                                              ; preds = %214
  %236 = load i32, i32* %26, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %26, align 4
  %238 = load %struct.lv*, %struct.lv** %25, align 8
  %239 = getelementptr inbounds %struct.lv, %struct.lv* %238, i32 1
  store %struct.lv* %239, %struct.lv** %25, align 8
  br label %208

240:                                              ; preds = %208
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 1
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %242, align 8
  %244 = load i64, i64* @XTENTRYSTART, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i64 %244
  store %struct.TYPE_11__* %245, %struct.TYPE_11__** %29, align 8
  %246 = load i64, i64* @XTENTRYSTART, align 8
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %26, align 4
  br label %248

248:                                              ; preds = %275, %240
  %249 = load i32, i32* %26, align 4
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @le16_to_cpu(i32 %253)
  %255 = icmp slt i32 %249, %254
  br i1 %255, label %256, label %280

256:                                              ; preds = %248
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @XAD_NEW, align 4
  %261 = load i32, i32* @XAD_EXTENDED, align 4
  %262 = or i32 %260, %261
  %263 = and i32 %259, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %256
  %266 = load i32, i32* @XAD_NEW, align 4
  %267 = load i32, i32* @XAD_EXTENDED, align 4
  %268 = or i32 %266, %267
  %269 = xor i32 %268, -1
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %269
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %265, %256
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %26, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %26, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 1
  store %struct.TYPE_11__* %279, %struct.TYPE_11__** %29, align 8
  br label %248

280:                                              ; preds = %248
  br label %281

281:                                              ; preds = %280, %173, %164
  %282 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %283 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %282, i32 0, i32 5
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %20, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  br label %443

287:                                              ; preds = %281
  %288 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %289 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %288, i32 0, i32 5
  store i64 0, i64* %289, align 8
  %290 = load i64, i64* %20, align 8
  %291 = call %struct.tlock* @lid_to_tlock(i64 %290)
  store %struct.tlock* %291, %struct.tlock** %22, align 8
  %292 = load %struct.tlock*, %struct.tlock** %22, align 8
  %293 = getelementptr inbounds %struct.tlock, %struct.tlock* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  store i32 %294, i32* %19, align 4
  %295 = load i32, i32* @tlckBTROOT, align 4
  %296 = load %struct.tlock*, %struct.tlock** %22, align 8
  %297 = getelementptr inbounds %struct.tlock, %struct.tlock* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = or i32 %298, %295
  store i32 %299, i32* %297, align 8
  %300 = load %struct.metapage*, %struct.metapage** %14, align 8
  %301 = load %struct.tlock*, %struct.tlock** %22, align 8
  %302 = getelementptr inbounds %struct.tlock, %struct.tlock* %301, i32 0, i32 2
  store %struct.metapage* %300, %struct.metapage** %302, align 8
  %303 = load %struct.tlock*, %struct.tlock** %22, align 8
  %304 = getelementptr inbounds %struct.tlock, %struct.tlock* %303, i32 0, i32 1
  %305 = bitcast i32* %304 to %struct.linelock*
  store %struct.linelock* %305, %struct.linelock** %24, align 8
  %306 = load i32, i32* %19, align 4
  %307 = load i32, i32* @tlckXTREE, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %391

310:                                              ; preds = %287
  %311 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %312 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %311, i32 0, i32 4
  store %struct.TYPE_10__* %312, %struct.TYPE_10__** %30, align 8
  %313 = load %struct.dinode*, %struct.dinode** %10, align 8
  %314 = getelementptr inbounds %struct.dinode, %struct.dinode* %313, i32 0, i32 4
  store %struct.TYPE_10__* %314, %struct.TYPE_10__** %31, align 8
  %315 = load %struct.linelock*, %struct.linelock** %24, align 8
  %316 = getelementptr inbounds %struct.linelock, %struct.linelock* %315, i32 0, i32 1
  %317 = load %struct.lv*, %struct.lv** %316, align 8
  store %struct.lv* %317, %struct.lv** %25, align 8
  store i32 0, i32* %26, align 4
  br label %318

318:                                              ; preds = %345, %310
  %319 = load i32, i32* %26, align 4
  %320 = load %struct.linelock*, %struct.linelock** %24, align 8
  %321 = getelementptr inbounds %struct.linelock, %struct.linelock* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %350

324:                                              ; preds = %318
  %325 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 1
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %326, align 8
  %328 = load %struct.lv*, %struct.lv** %25, align 8
  %329 = getelementptr inbounds %struct.lv, %struct.lv* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %327, i64 %330
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %333, align 8
  %335 = load %struct.lv*, %struct.lv** %25, align 8
  %336 = getelementptr inbounds %struct.lv, %struct.lv* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %334, i64 %337
  %339 = load %struct.lv*, %struct.lv** %25, align 8
  %340 = getelementptr inbounds %struct.lv, %struct.lv* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @L2XTSLOTSIZE, align 4
  %343 = shl i32 %341, %342
  %344 = call i32 @memcpy(%struct.TYPE_11__* %331, %struct.TYPE_11__* %338, i32 %343)
  br label %345

345:                                              ; preds = %324
  %346 = load i32, i32* %26, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %26, align 4
  %348 = load %struct.lv*, %struct.lv** %25, align 8
  %349 = getelementptr inbounds %struct.lv, %struct.lv* %348, i32 1
  store %struct.lv* %349, %struct.lv** %25, align 8
  br label %318

350:                                              ; preds = %318
  %351 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %352 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %352, align 8
  %354 = load i64, i64* @XTENTRYSTART, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i64 %354
  store %struct.TYPE_11__* %355, %struct.TYPE_11__** %32, align 8
  %356 = load i64, i64* @XTENTRYSTART, align 8
  %357 = trunc i64 %356 to i32
  store i32 %357, i32* %26, align 4
  br label %358

358:                                              ; preds = %385, %350
  %359 = load i32, i32* %26, align 4
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @le16_to_cpu(i32 %363)
  %365 = icmp slt i32 %359, %364
  br i1 %365, label %366, label %390

366:                                              ; preds = %358
  %367 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @XAD_NEW, align 4
  %371 = load i32, i32* @XAD_EXTENDED, align 4
  %372 = or i32 %370, %371
  %373 = and i32 %369, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %384

375:                                              ; preds = %366
  %376 = load i32, i32* @XAD_NEW, align 4
  %377 = load i32, i32* @XAD_EXTENDED, align 4
  %378 = or i32 %376, %377
  %379 = xor i32 %378, -1
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = and i32 %382, %379
  store i32 %383, i32* %381, align 4
  br label %384

384:                                              ; preds = %375, %366
  br label %385

385:                                              ; preds = %384
  %386 = load i32, i32* %26, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %26, align 4
  %388 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 1
  store %struct.TYPE_11__* %389, %struct.TYPE_11__** %32, align 8
  br label %358

390:                                              ; preds = %358
  br label %442

391:                                              ; preds = %287
  %392 = load i32, i32* %19, align 4
  %393 = load i32, i32* @tlckDTREE, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %439

396:                                              ; preds = %391
  %397 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %398 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %397, i32 0, i32 3
  %399 = bitcast i32* %398 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %399, %struct.TYPE_12__** %33, align 8
  %400 = load %struct.dinode*, %struct.dinode** %10, align 8
  %401 = getelementptr inbounds %struct.dinode, %struct.dinode* %400, i32 0, i32 3
  %402 = bitcast i32* %401 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %402, %struct.TYPE_12__** %34, align 8
  %403 = load %struct.linelock*, %struct.linelock** %24, align 8
  %404 = getelementptr inbounds %struct.linelock, %struct.linelock* %403, i32 0, i32 1
  %405 = load %struct.lv*, %struct.lv** %404, align 8
  store %struct.lv* %405, %struct.lv** %25, align 8
  store i32 0, i32* %26, align 4
  br label %406

406:                                              ; preds = %433, %396
  %407 = load i32, i32* %26, align 4
  %408 = load %struct.linelock*, %struct.linelock** %24, align 8
  %409 = getelementptr inbounds %struct.linelock, %struct.linelock* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = icmp slt i32 %407, %410
  br i1 %411, label %412, label %438

412:                                              ; preds = %406
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %34, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_11__*, %struct.TYPE_11__** %414, align 8
  %416 = load %struct.lv*, %struct.lv** %25, align 8
  %417 = getelementptr inbounds %struct.lv, %struct.lv* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %415, i64 %418
  %420 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %421 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %420, i32 0, i32 0
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %421, align 8
  %423 = load %struct.lv*, %struct.lv** %25, align 8
  %424 = getelementptr inbounds %struct.lv, %struct.lv* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i64 %425
  %427 = load %struct.lv*, %struct.lv** %25, align 8
  %428 = getelementptr inbounds %struct.lv, %struct.lv* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @L2DTSLOTSIZE, align 4
  %431 = shl i32 %429, %430
  %432 = call i32 @memcpy(%struct.TYPE_11__* %419, %struct.TYPE_11__* %426, i32 %431)
  br label %433

433:                                              ; preds = %412
  %434 = load i32, i32* %26, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %26, align 4
  %436 = load %struct.lv*, %struct.lv** %25, align 8
  %437 = getelementptr inbounds %struct.lv, %struct.lv* %436, i32 1
  store %struct.lv* %437, %struct.lv** %25, align 8
  br label %406

438:                                              ; preds = %406
  br label %441

439:                                              ; preds = %391
  %440 = call i32 @jfs_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %441

441:                                              ; preds = %439, %438
  br label %442

442:                                              ; preds = %441, %390
  br label %443

443:                                              ; preds = %442, %286
  %444 = load %struct.inode*, %struct.inode** %5, align 8
  %445 = getelementptr inbounds %struct.inode, %struct.inode* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 4
  %447 = call i64 @S_ISLNK(i32 %446)
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %484

449:                                              ; preds = %443
  %450 = load %struct.inode*, %struct.inode** %5, align 8
  %451 = getelementptr inbounds %struct.inode, %struct.inode* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @IDATASIZE, align 4
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %455, label %484

455:                                              ; preds = %449
  %456 = load %struct.linelock*, %struct.linelock** %23, align 8
  %457 = getelementptr inbounds %struct.linelock, %struct.linelock* %456, i32 0, i32 1
  %458 = load %struct.lv*, %struct.lv** %457, align 8
  %459 = load %struct.linelock*, %struct.linelock** %23, align 8
  %460 = getelementptr inbounds %struct.linelock, %struct.linelock* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.lv, %struct.lv* %458, i64 %462
  store %struct.lv* %463, %struct.lv** %25, align 8
  %464 = load i32, i32* %17, align 4
  %465 = add nsw i32 %464, 256
  %466 = load i32, i32* @L2INODESLOTSIZE, align 4
  %467 = ashr i32 %465, %466
  %468 = sext i32 %467 to i64
  %469 = load %struct.lv*, %struct.lv** %25, align 8
  %470 = getelementptr inbounds %struct.lv, %struct.lv* %469, i32 0, i32 0
  store i64 %468, i64* %470, align 8
  %471 = load %struct.lv*, %struct.lv** %25, align 8
  %472 = getelementptr inbounds %struct.lv, %struct.lv* %471, i32 0, i32 1
  store i32 2, i32* %472, align 8
  %473 = load %struct.dinode*, %struct.dinode** %10, align 8
  %474 = getelementptr inbounds %struct.dinode, %struct.dinode* %473, i32 0, i32 2
  %475 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %476 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %475, i32 0, i32 2
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %476, align 8
  %478 = load i32, i32* @IDATASIZE, align 4
  %479 = call i32 @memcpy(%struct.TYPE_11__* %474, %struct.TYPE_11__* %477, i32 %478)
  %480 = load %struct.linelock*, %struct.linelock** %23, align 8
  %481 = getelementptr inbounds %struct.linelock, %struct.linelock* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %481, align 8
  br label %484

484:                                              ; preds = %455, %449, %443
  %485 = load i32, i32* @COMMIT_Inlineea, align 4
  %486 = load %struct.inode*, %struct.inode** %5, align 8
  %487 = call i64 @test_cflag(i32 %485, %struct.inode* %486)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %521

489:                                              ; preds = %484
  %490 = load %struct.linelock*, %struct.linelock** %23, align 8
  %491 = getelementptr inbounds %struct.linelock, %struct.linelock* %490, i32 0, i32 1
  %492 = load %struct.lv*, %struct.lv** %491, align 8
  %493 = load %struct.linelock*, %struct.linelock** %23, align 8
  %494 = getelementptr inbounds %struct.linelock, %struct.linelock* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.lv, %struct.lv* %492, i64 %496
  store %struct.lv* %497, %struct.lv** %25, align 8
  %498 = load i32, i32* %17, align 4
  %499 = add nsw i32 %498, 384
  %500 = load i32, i32* @L2INODESLOTSIZE, align 4
  %501 = ashr i32 %499, %500
  %502 = sext i32 %501 to i64
  %503 = load %struct.lv*, %struct.lv** %25, align 8
  %504 = getelementptr inbounds %struct.lv, %struct.lv* %503, i32 0, i32 0
  store i64 %502, i64* %504, align 8
  %505 = load %struct.lv*, %struct.lv** %25, align 8
  %506 = getelementptr inbounds %struct.lv, %struct.lv* %505, i32 0, i32 1
  store i32 1, i32* %506, align 8
  %507 = load %struct.dinode*, %struct.dinode** %10, align 8
  %508 = getelementptr inbounds %struct.dinode, %struct.dinode* %507, i32 0, i32 1
  %509 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %510 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %509, i32 0, i32 1
  %511 = load %struct.TYPE_11__*, %struct.TYPE_11__** %510, align 8
  %512 = load i32, i32* @INODESLOTSIZE, align 4
  %513 = call i32 @memcpy(%struct.TYPE_11__* %508, %struct.TYPE_11__* %511, i32 %512)
  %514 = load %struct.linelock*, %struct.linelock** %23, align 8
  %515 = getelementptr inbounds %struct.linelock, %struct.linelock* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %515, align 8
  %518 = load i32, i32* @COMMIT_Inlineea, align 4
  %519 = load %struct.inode*, %struct.inode** %5, align 8
  %520 = call i32 @clear_cflag(i32 %518, %struct.inode* %519)
  br label %521

521:                                              ; preds = %489, %484
  %522 = load %struct.linelock*, %struct.linelock** %23, align 8
  %523 = getelementptr inbounds %struct.linelock, %struct.linelock* %522, i32 0, i32 1
  %524 = load %struct.lv*, %struct.lv** %523, align 8
  %525 = load %struct.linelock*, %struct.linelock** %23, align 8
  %526 = getelementptr inbounds %struct.linelock, %struct.linelock* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds %struct.lv, %struct.lv* %524, i64 %528
  store %struct.lv* %529, %struct.lv** %25, align 8
  %530 = load i32, i32* %17, align 4
  %531 = load i32, i32* @L2INODESLOTSIZE, align 4
  %532 = ashr i32 %530, %531
  %533 = sext i32 %532 to i64
  %534 = load %struct.lv*, %struct.lv** %25, align 8
  %535 = getelementptr inbounds %struct.lv, %struct.lv* %534, i32 0, i32 0
  store i64 %533, i64* %535, align 8
  %536 = load %struct.dinode*, %struct.dinode** %10, align 8
  %537 = load %struct.inode*, %struct.inode** %5, align 8
  %538 = call i32 @copy_to_dinode(%struct.dinode* %536, %struct.inode* %537)
  %539 = load i32, i32* @COMMIT_Dirtable, align 4
  %540 = load %struct.inode*, %struct.inode** %5, align 8
  %541 = call i64 @test_and_clear_cflag(i32 %539, %struct.inode* %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %551

543:                                              ; preds = %521
  %544 = load %struct.lv*, %struct.lv** %25, align 8
  %545 = getelementptr inbounds %struct.lv, %struct.lv* %544, i32 0, i32 1
  store i32 2, i32* %545, align 8
  %546 = load %struct.dinode*, %struct.dinode** %10, align 8
  %547 = getelementptr inbounds %struct.dinode, %struct.dinode* %546, i32 0, i32 0
  %548 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %7, align 8
  %549 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %548, i32 0, i32 0
  %550 = call i32 @memcpy(%struct.TYPE_11__* %547, %struct.TYPE_11__* %549, i32 96)
  br label %554

551:                                              ; preds = %521
  %552 = load %struct.lv*, %struct.lv** %25, align 8
  %553 = getelementptr inbounds %struct.lv, %struct.lv* %552, i32 0, i32 1
  store i32 1, i32* %553, align 8
  br label %554

554:                                              ; preds = %551, %543
  %555 = load %struct.linelock*, %struct.linelock** %23, align 8
  %556 = getelementptr inbounds %struct.linelock, %struct.linelock* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %556, align 8
  %559 = load %struct.metapage*, %struct.metapage** %14, align 8
  %560 = call i32 @write_metapage(%struct.metapage* %559)
  %561 = load i32, i32* %8, align 4
  store i32 %561, i32* %3, align 4
  br label %562

562:                                              ; preds = %554, %137, %65
  %563 = load i32, i32* %3, align 4
  ret i32 %563
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @addressPXD(i32*) #1

declare dso_local i64 @lengthPXD(i32*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i64 @INOPBLK(i32*, i32, i64) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local %struct.tlock* @txLock(i32, %struct.inode*, %struct.metapage*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local %struct.tlock* @lid_to_tlock(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @test_cflag(i32, %struct.inode*) #1

declare dso_local i32 @clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @copy_to_dinode(%struct.dinode*, %struct.inode*) #1

declare dso_local i64 @test_and_clear_cflag(i32, %struct.inode*) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
