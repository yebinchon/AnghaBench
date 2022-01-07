; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diExtendFS.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_diExtendFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inomap = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.iag = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.bmap = type { i32 }
%struct.metapage = type { i64 }
%struct.TYPE_6__ = type { %struct.inomap* }
%struct.TYPE_5__ = type { %struct.bmap* }

@.str = private unnamed_addr constant [45 x i8] c"diExtendFS: nextiag:%d numinos:%d numfree:%d\00", align 1
@MAXAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unexpected value of iagnum\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"numinos or numfree incorrect\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diExtendFS(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inomap*, align 8
  %9 = alloca %struct.iag*, align 8
  %10 = alloca %struct.iag*, align 8
  %11 = alloca %struct.bmap*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.inomap*, %struct.inomap** %23, align 8
  store %struct.inomap* %24, %struct.inomap** %8, align 8
  store %struct.iag* null, %struct.iag** %9, align 8
  store %struct.iag* null, %struct.iag** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_5__* @JFS_SBI(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.bmap*, %struct.bmap** %29, align 8
  store %struct.bmap* %30, %struct.bmap** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %31 = load %struct.inomap*, %struct.inomap** %8, align 8
  %32 = getelementptr inbounds %struct.inomap, %struct.inomap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inomap*, %struct.inomap** %8, align 8
  %35 = getelementptr inbounds %struct.inomap, %struct.inomap* %34, i32 0, i32 2
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load %struct.inomap*, %struct.inomap** %8, align 8
  %38 = getelementptr inbounds %struct.inomap, %struct.inomap* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @jfs_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %74, %2
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @MAXAG, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load %struct.inomap*, %struct.inomap** %8, align 8
  %47 = getelementptr inbounds %struct.inomap, %struct.inomap* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.inomap*, %struct.inomap** %8, align 8
  %54 = getelementptr inbounds %struct.inomap, %struct.inomap* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.inomap*, %struct.inomap** %8, align 8
  %61 = getelementptr inbounds %struct.inomap, %struct.inomap* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.inomap*, %struct.inomap** %8, align 8
  %68 = getelementptr inbounds %struct.inomap, %struct.inomap* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %45
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %41

77:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %310, %77
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.inomap*, %struct.inomap** %8, align 8
  %81 = getelementptr inbounds %struct.inomap, %struct.inomap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %313

84:                                               ; preds = %78
  %85 = load %struct.inomap*, %struct.inomap** %8, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @diIAGRead(%struct.inomap* %85, i32 %86, %struct.metapage** %12)
  store i32 %87, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %7, align 4
  br label %310

91:                                               ; preds = %84
  %92 = load %struct.metapage*, %struct.metapage** %12, align 8
  %93 = getelementptr inbounds %struct.metapage, %struct.metapage* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.iag*
  store %struct.iag* %95, %struct.iag** %9, align 8
  %96 = load %struct.iag*, %struct.iag** %9, align 8
  %97 = getelementptr inbounds %struct.iag, %struct.iag* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32_to_cpu(i64 %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load %struct.metapage*, %struct.metapage** %12, align 8
  %104 = call i32 @release_metapage(%struct.metapage* %103)
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @jfs_error(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %334

111:                                              ; preds = %91
  %112 = load %struct.iag*, %struct.iag** %9, align 8
  %113 = getelementptr inbounds %struct.iag, %struct.iag* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @EXTSPERIAG, align 4
  %116 = call i64 @cpu_to_le32(i32 %115)
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.metapage*, %struct.metapage** %12, align 8
  %120 = call i32 @release_metapage(%struct.metapage* %119)
  br label %310

121:                                              ; preds = %111
  %122 = load %struct.iag*, %struct.iag** %9, align 8
  %123 = getelementptr inbounds %struct.iag, %struct.iag* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @le64_to_cpu(i32 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.bmap*, %struct.bmap** %11, align 8
  %128 = getelementptr inbounds %struct.bmap, %struct.bmap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %126, %129
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.bmap*, %struct.bmap** %11, align 8
  %133 = getelementptr inbounds %struct.bmap, %struct.bmap* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %131, %134
  %136 = call i32 @cpu_to_le64(i32 %135)
  %137 = load %struct.iag*, %struct.iag** %9, align 8
  %138 = getelementptr inbounds %struct.iag, %struct.iag* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @EXTSPERIAG, align 4
  %140 = load %struct.iag*, %struct.iag** %9, align 8
  %141 = getelementptr inbounds %struct.iag, %struct.iag* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @le32_to_cpu(i64 %142)
  %144 = sub nsw i32 %139, %143
  %145 = load i32, i32* @L2INOSPEREXT, align 4
  %146 = shl i32 %144, %145
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %121
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = load %struct.inomap*, %struct.inomap** %8, align 8
  %153 = getelementptr inbounds %struct.inomap, %struct.inomap* %152, i32 0, i32 3
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, %151
  store i64 %160, i64* %158, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %18, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %149, %121
  %165 = load %struct.iag*, %struct.iag** %9, align 8
  %166 = getelementptr inbounds %struct.iag, %struct.iag* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @le32_to_cpu(i64 %167)
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %245

170:                                              ; preds = %164
  %171 = load %struct.inomap*, %struct.inomap** %8, align 8
  %172 = getelementptr inbounds %struct.inomap, %struct.inomap* %171, i32 0, i32 3
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i32, i32* %15, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %16, align 4
  %179 = icmp eq i32 %178, -1
  br i1 %179, label %180, label %187

180:                                              ; preds = %170
  %181 = call i64 @cpu_to_le32(i32 -1)
  %182 = load %struct.iag*, %struct.iag** %9, align 8
  %183 = getelementptr inbounds %struct.iag, %struct.iag* %182, i32 0, i32 6
  store i64 %181, i64* %183, align 8
  %184 = call i64 @cpu_to_le32(i32 -1)
  %185 = load %struct.iag*, %struct.iag** %9, align 8
  %186 = getelementptr inbounds %struct.iag, %struct.iag* %185, i32 0, i32 3
  store i64 %184, i64* %186, align 8
  br label %213

187:                                              ; preds = %170
  %188 = load %struct.inomap*, %struct.inomap** %8, align 8
  %189 = load i32, i32* %16, align 4
  %190 = call i32 @diIAGRead(%struct.inomap* %188, i32 %189, %struct.metapage** %13)
  store i32 %190, i32* %6, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %7, align 4
  br label %307

194:                                              ; preds = %187
  %195 = load %struct.metapage*, %struct.metapage** %13, align 8
  %196 = getelementptr inbounds %struct.metapage, %struct.metapage* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = inttoptr i64 %197 to %struct.iag*
  store %struct.iag* %198, %struct.iag** %10, align 8
  %199 = load %struct.iag*, %struct.iag** %9, align 8
  %200 = getelementptr inbounds %struct.iag, %struct.iag* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.iag*, %struct.iag** %10, align 8
  %203 = getelementptr inbounds %struct.iag, %struct.iag* %202, i32 0, i32 3
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* %16, align 4
  %205 = call i64 @cpu_to_le32(i32 %204)
  %206 = load %struct.iag*, %struct.iag** %9, align 8
  %207 = getelementptr inbounds %struct.iag, %struct.iag* %206, i32 0, i32 6
  store i64 %205, i64* %207, align 8
  %208 = call i64 @cpu_to_le32(i32 -1)
  %209 = load %struct.iag*, %struct.iag** %9, align 8
  %210 = getelementptr inbounds %struct.iag, %struct.iag* %209, i32 0, i32 3
  store i64 %208, i64* %210, align 8
  %211 = load %struct.metapage*, %struct.metapage** %13, align 8
  %212 = call i32 @write_metapage(%struct.metapage* %211)
  br label %213

213:                                              ; preds = %194, %180
  %214 = load %struct.iag*, %struct.iag** %9, align 8
  %215 = getelementptr inbounds %struct.iag, %struct.iag* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @le32_to_cpu(i64 %216)
  %218 = load %struct.inomap*, %struct.inomap** %8, align 8
  %219 = getelementptr inbounds %struct.inomap, %struct.inomap* %218, i32 0, i32 3
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  store i32 %217, i32* %224, align 8
  %225 = load %struct.iag*, %struct.iag** %9, align 8
  %226 = getelementptr inbounds %struct.iag, %struct.iag* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @le32_to_cpu(i64 %227)
  %229 = sext i32 %228 to i64
  %230 = load %struct.inomap*, %struct.inomap** %8, align 8
  %231 = getelementptr inbounds %struct.inomap, %struct.inomap* %230, i32 0, i32 3
  %232 = load %struct.TYPE_4__*, %struct.TYPE_4__** %231, align 8
  %233 = load i32, i32* %15, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, %229
  store i64 %238, i64* %236, align 8
  %239 = load %struct.iag*, %struct.iag** %9, align 8
  %240 = getelementptr inbounds %struct.iag, %struct.iag* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @le32_to_cpu(i64 %241)
  %243 = load i32, i32* %19, align 4
  %244 = add nsw i32 %243, %242
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %213, %164
  %246 = load %struct.iag*, %struct.iag** %9, align 8
  %247 = getelementptr inbounds %struct.iag, %struct.iag* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @le32_to_cpu(i64 %248)
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %306

251:                                              ; preds = %245
  %252 = load %struct.inomap*, %struct.inomap** %8, align 8
  %253 = getelementptr inbounds %struct.inomap, %struct.inomap* %252, i32 0, i32 3
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %15, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %16, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %268

261:                                              ; preds = %251
  %262 = call i64 @cpu_to_le32(i32 -1)
  %263 = load %struct.iag*, %struct.iag** %9, align 8
  %264 = getelementptr inbounds %struct.iag, %struct.iag* %263, i32 0, i32 5
  store i64 %262, i64* %264, align 8
  %265 = call i64 @cpu_to_le32(i32 -1)
  %266 = load %struct.iag*, %struct.iag** %9, align 8
  %267 = getelementptr inbounds %struct.iag, %struct.iag* %266, i32 0, i32 4
  store i64 %265, i64* %267, align 8
  br label %294

268:                                              ; preds = %251
  %269 = load %struct.inomap*, %struct.inomap** %8, align 8
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @diIAGRead(%struct.inomap* %269, i32 %270, %struct.metapage** %13)
  store i32 %271, i32* %6, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %7, align 4
  br label %307

275:                                              ; preds = %268
  %276 = load %struct.metapage*, %struct.metapage** %13, align 8
  %277 = getelementptr inbounds %struct.metapage, %struct.metapage* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to %struct.iag*
  store %struct.iag* %279, %struct.iag** %10, align 8
  %280 = load %struct.iag*, %struct.iag** %9, align 8
  %281 = getelementptr inbounds %struct.iag, %struct.iag* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load %struct.iag*, %struct.iag** %10, align 8
  %284 = getelementptr inbounds %struct.iag, %struct.iag* %283, i32 0, i32 4
  store i64 %282, i64* %284, align 8
  %285 = load i32, i32* %16, align 4
  %286 = call i64 @cpu_to_le32(i32 %285)
  %287 = load %struct.iag*, %struct.iag** %9, align 8
  %288 = getelementptr inbounds %struct.iag, %struct.iag* %287, i32 0, i32 5
  store i64 %286, i64* %288, align 8
  %289 = call i64 @cpu_to_le32(i32 -1)
  %290 = load %struct.iag*, %struct.iag** %9, align 8
  %291 = getelementptr inbounds %struct.iag, %struct.iag* %290, i32 0, i32 4
  store i64 %289, i64* %291, align 8
  %292 = load %struct.metapage*, %struct.metapage** %13, align 8
  %293 = call i32 @write_metapage(%struct.metapage* %292)
  br label %294

294:                                              ; preds = %275, %261
  %295 = load %struct.iag*, %struct.iag** %9, align 8
  %296 = getelementptr inbounds %struct.iag, %struct.iag* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @le32_to_cpu(i64 %297)
  %299 = load %struct.inomap*, %struct.inomap** %8, align 8
  %300 = getelementptr inbounds %struct.inomap, %struct.inomap* %299, i32 0, i32 3
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  store i32 %298, i32* %305, align 4
  br label %306

306:                                              ; preds = %294, %245
  br label %307

307:                                              ; preds = %306, %273, %192
  %308 = load %struct.metapage*, %struct.metapage** %12, align 8
  %309 = call i32 @write_metapage(%struct.metapage* %308)
  br label %310

310:                                              ; preds = %307, %118, %89
  %311 = load i32, i32* %14, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %14, align 4
  br label %78

313:                                              ; preds = %78
  %314 = load i32, i32* %18, align 4
  %315 = load %struct.inomap*, %struct.inomap** %8, align 8
  %316 = getelementptr inbounds %struct.inomap, %struct.inomap* %315, i32 0, i32 2
  %317 = call i32 @atomic_read(i32* %316)
  %318 = icmp ne i32 %314, %317
  br i1 %318, label %325, label %319

319:                                              ; preds = %313
  %320 = load i32, i32* %19, align 4
  %321 = load %struct.inomap*, %struct.inomap** %8, align 8
  %322 = getelementptr inbounds %struct.inomap, %struct.inomap* %321, i32 0, i32 1
  %323 = call i32 @atomic_read(i32* %322)
  %324 = icmp ne i32 %320, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %319, %313
  %326 = load %struct.inode*, %struct.inode** %4, align 8
  %327 = getelementptr inbounds %struct.inode, %struct.inode* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @jfs_error(i32 %328, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %330 = load i32, i32* @EIO, align 4
  %331 = sub nsw i32 0, %330
  store i32 %331, i32* %3, align 4
  br label %334

332:                                              ; preds = %319
  %333 = load i32, i32* %7, align 4
  store i32 %333, i32* %3, align 4
  br label %334

334:                                              ; preds = %332, %325, %102
  %335 = load i32, i32* %3, align 4
  ret i32 %335
}

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_info(i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
