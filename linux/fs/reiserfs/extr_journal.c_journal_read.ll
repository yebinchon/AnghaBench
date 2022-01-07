; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.reiserfs_journal = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.reiserfs_journal_desc = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.reiserfs_journal_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"checking transaction log (%pg)\0A\00", align 1
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"journal-1153: found in header: first_unflushed_offset %d, last_flushed_trans_id %lu\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"journal-1179: Setting oldest_start to offset %llu, trans_id %lu\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"journal-1180: Resetting oldest_start to offset %lu, trans_id %lu\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"journal-1299: Setting newest_mount_id to %d\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"journal-1206: Starting replay from offset %llu, trans_id %lu\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"journal-1225: No valid transactions found\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"journal-1299: Setting newest_mount_id to %lu\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"replayed %d transactions in %lu seconds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @journal_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_read(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal*, align 8
  %5 = alloca %struct.reiserfs_journal_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.reiserfs_journal_header*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %18 = load %struct.super_block*, %struct.super_block** %3, align 8
  %19 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %18)
  store %struct.reiserfs_journal* %19, %struct.reiserfs_journal** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 9, i64* %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.super_block*, i8*, i32, ...) @reiserfs_info(%struct.super_block* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i64 (...) @ktime_get_seconds()
  store i64 %27, i64* %8, align 8
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %29)
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %31)
  %33 = add i64 %30, %32
  %34 = trunc i64 %33 to i32
  %35 = call i8* @journal_bread(%struct.super_block* %28, i32 %34)
  %36 = bitcast i8* %35 to %struct.TYPE_2__*
  %37 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %37, i32 0, i32 6
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %38, align 8
  %39 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %40 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %39, i32 0, i32 6
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = icmp ne %struct.TYPE_2__* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %372

44:                                               ; preds = %1
  %45 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %46 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %45, i32 0, i32 6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.reiserfs_journal_header*
  store %struct.reiserfs_journal_header* %50, %struct.reiserfs_journal_header** %13, align 8
  %51 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %52 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = load %struct.super_block*, %struct.super_block** %3, align 8
  %57 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %56)
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %116

59:                                               ; preds = %44
  %60 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %61 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %116

65:                                               ; preds = %59
  %66 = load %struct.super_block*, %struct.super_block** %3, align 8
  %67 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %66)
  %68 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %69 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = sext i32 %71 to i64
  %73 = add i64 %67, %72
  store i64 %73, i64* %9, align 8
  %74 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %75 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %80 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le32_to_cpu(i32 %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %11, align 8
  %84 = load %struct.super_block*, %struct.super_block** %3, align 8
  %85 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %86 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %87 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %91 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %84, i32 %85, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %93)
  store i32 1, i32* %14, align 4
  %95 = load %struct.super_block*, %struct.super_block** %3, align 8
  %96 = load %struct.super_block*, %struct.super_block** %3, align 8
  %97 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %96)
  %98 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %99 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = sext i32 %101 to i64
  %103 = add i64 %97, %102
  %104 = trunc i64 %103 to i32
  %105 = call i8* @journal_bread(%struct.super_block* %95, i32 %104)
  %106 = bitcast i8* %105 to %struct.buffer_head*
  store %struct.buffer_head* %106, %struct.buffer_head** %12, align 8
  %107 = load %struct.super_block*, %struct.super_block** %3, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %109 = call i32 @journal_transaction_is_valid(%struct.super_block* %107, %struct.buffer_head* %108, i32* null, i64* null)
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %65
  store i32 0, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %65
  %114 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  br label %218

116:                                              ; preds = %59, %44
  br label %117

117:                                              ; preds = %214, %116
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load i64, i64* %10, align 8
  %122 = load %struct.super_block*, %struct.super_block** %3, align 8
  %123 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %122)
  %124 = load %struct.super_block*, %struct.super_block** %3, align 8
  %125 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %124)
  %126 = add i64 %123, %125
  %127 = icmp ult i64 %121, %126
  br label %128

128:                                              ; preds = %120, %117
  %129 = phi i1 [ false, %117 ], [ %127, %120 ]
  br i1 %129, label %130, label %217

130:                                              ; preds = %128
  %131 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %132 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load %struct.super_block*, %struct.super_block** %3, align 8
  %136 = getelementptr inbounds %struct.super_block, %struct.super_block* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.super_block*, %struct.super_block** %3, align 8
  %139 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %138)
  %140 = load %struct.super_block*, %struct.super_block** %3, align 8
  %141 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %140)
  %142 = add i64 %139, %141
  %143 = call %struct.buffer_head* @reiserfs_breada(i32 %133, i64 %134, i32 %137, i64 %142)
  store %struct.buffer_head* %143, %struct.buffer_head** %12, align 8
  %144 = load %struct.super_block*, %struct.super_block** %3, align 8
  %145 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %146 = call i32 @journal_transaction_is_valid(%struct.super_block* %144, %struct.buffer_head* %145, i32* %7, i64* %11)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %211

149:                                              ; preds = %130
  %150 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = inttoptr i64 %152 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %153, %struct.reiserfs_journal_desc** %5, align 8
  %154 = load i64, i64* %9, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %149
  %157 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %158 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %157)
  store i32 %158, i32* %6, align 4
  %159 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %9, align 8
  %162 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %163 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %162)
  store i64 %163, i64* %11, align 8
  %164 = load %struct.super_block*, %struct.super_block** %3, align 8
  %165 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %166 = load i64, i64* %9, align 8
  %167 = load %struct.super_block*, %struct.super_block** %3, align 8
  %168 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %167)
  %169 = sub i64 %166, %168
  %170 = load i32, i32* %6, align 4
  %171 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %164, i32 %165, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %169, i32 %170)
  br label %192

172:                                              ; preds = %149
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %175 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %174)
  %176 = icmp ugt i32 %173, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %172
  %178 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %179 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %178)
  store i32 %179, i32* %6, align 4
  %180 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %181 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %9, align 8
  %183 = load %struct.super_block*, %struct.super_block** %3, align 8
  %184 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %185 = load i64, i64* %9, align 8
  %186 = load %struct.super_block*, %struct.super_block** %3, align 8
  %187 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %186)
  %188 = sub i64 %185, %187
  %189 = load i32, i32* %6, align 4
  %190 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %183, i32 %184, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %188, i32 %189)
  br label %191

191:                                              ; preds = %177, %172
  br label %192

192:                                              ; preds = %191, %156
  %193 = load i64, i64* %11, align 8
  %194 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %195 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %194)
  %196 = icmp ult i64 %193, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %199 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %198)
  store i64 %199, i64* %11, align 8
  %200 = load %struct.super_block*, %struct.super_block** %3, align 8
  %201 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %202 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %203 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %202)
  %204 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %200, i32 %201, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i64 %203)
  br label %205

205:                                              ; preds = %197, %192
  %206 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %5, align 8
  %207 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %206)
  %208 = add nsw i64 %207, 2
  %209 = load i64, i64* %10, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %10, align 8
  br label %214

211:                                              ; preds = %130
  %212 = load i64, i64* %10, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %10, align 8
  br label %214

214:                                              ; preds = %211, %205
  %215 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %216 = call i32 @brelse(%struct.buffer_head* %215)
  br label %117

217:                                              ; preds = %128
  br label %218

218:                                              ; preds = %217, %113
  %219 = load i64, i64* %9, align 8
  store i64 %219, i64* %10, align 8
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %218
  %223 = load %struct.super_block*, %struct.super_block** %3, align 8
  %224 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %225 = load i64, i64* %10, align 8
  %226 = load %struct.super_block*, %struct.super_block** %3, align 8
  %227 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %226)
  %228 = sub i64 %225, %227
  %229 = load i32, i32* %6, align 4
  %230 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %223, i32 %224, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i64 %228, i32 %229)
  br label %231

231:                                              ; preds = %222, %218
  store i32 0, i32* %15, align 4
  br label %232

232:                                              ; preds = %269, %231
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i32, i32* %6, align 4
  %237 = icmp ugt i32 %236, 0
  br label %238

238:                                              ; preds = %235, %232
  %239 = phi i1 [ false, %232 ], [ %237, %235 ]
  br i1 %239, label %240, label %270

240:                                              ; preds = %238
  %241 = load %struct.super_block*, %struct.super_block** %3, align 8
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %9, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i64, i64* %11, align 8
  %246 = call i32 @journal_read_transaction(%struct.super_block* %241, i64 %242, i64 %243, i32 %244, i64 %245)
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %240
  %250 = load i32, i32* %17, align 4
  store i32 %250, i32* %2, align 4
  br label %372

251:                                              ; preds = %240
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %270

255:                                              ; preds = %251
  br label %256

256:                                              ; preds = %255
  %257 = load %struct.super_block*, %struct.super_block** %3, align 8
  %258 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %257)
  %259 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %260 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = add i64 %258, %261
  store i64 %262, i64* %10, align 8
  %263 = load i32, i32* %15, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %15, align 4
  %265 = load i64, i64* %10, align 8
  %266 = load i64, i64* %9, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %256
  br label %270

269:                                              ; preds = %256
  br label %232

270:                                              ; preds = %268, %254, %238
  %271 = load i32, i32* %6, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load %struct.super_block*, %struct.super_block** %3, align 8
  %275 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %276 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %274, i32 %275, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %277

277:                                              ; preds = %273, %270
  %278 = load i32, i32* %14, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %319

280:                                              ; preds = %277
  %281 = load i32, i32* %15, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %319

283:                                              ; preds = %280
  %284 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %285 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @le32_to_cpu(i32 %286)
  %288 = sext i32 %287 to i64
  %289 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %290 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %289, i32 0, i32 0
  store i64 %288, i64* %290, align 8
  %291 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %292 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @le32_to_cpu(i32 %293)
  %295 = add nsw i32 %294, 1
  %296 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %297 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %299 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %283
  %303 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %304 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %303, i32 0, i32 1
  store i32 10, i32* %304, align 8
  br label %305

305:                                              ; preds = %302, %283
  %306 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %307 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @le32_to_cpu(i32 %308)
  %310 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %311 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %310, i32 0, i32 2
  store i32 %309, i32* %311, align 4
  %312 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %13, align 8
  %313 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @le32_to_cpu(i32 %314)
  %316 = add nsw i32 %315, 1
  %317 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %318 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 8
  br label %325

319:                                              ; preds = %280, %277
  %320 = load i64, i64* %11, align 8
  %321 = add i64 %320, 1
  %322 = trunc i64 %321 to i32
  %323 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %324 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %323, i32 0, i32 3
  store i32 %322, i32* %324, align 8
  br label %325

325:                                              ; preds = %319, %305
  %326 = load %struct.super_block*, %struct.super_block** %3, align 8
  %327 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %328 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %329 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = call i32 (%struct.super_block*, i32, i8*, ...) @reiserfs_debug(%struct.super_block* %326, i32 %327, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %330)
  %332 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %333 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = trunc i64 %334 to i32
  %336 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %337 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %336, i32 0, i32 4
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %15, align 4
  %339 = icmp sgt i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %325
  %341 = load %struct.super_block*, %struct.super_block** %3, align 8
  %342 = load i32, i32* %15, align 4
  %343 = call i64 (...) @ktime_get_seconds()
  %344 = load i64, i64* %8, align 8
  %345 = sub nsw i64 %343, %344
  %346 = call i32 (%struct.super_block*, i8*, i32, ...) @reiserfs_info(%struct.super_block* %341, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %342, i64 %345)
  br label %347

347:                                              ; preds = %340, %325
  %348 = load %struct.super_block*, %struct.super_block** %3, align 8
  %349 = call i32 @reiserfs_write_lock(%struct.super_block* %348)
  %350 = load %struct.super_block*, %struct.super_block** %3, align 8
  %351 = getelementptr inbounds %struct.super_block, %struct.super_block* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = call i32 @bdev_read_only(i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %369, label %355

355:                                              ; preds = %347
  %356 = load %struct.super_block*, %struct.super_block** %3, align 8
  %357 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %358 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = trunc i64 %359 to i32
  %361 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %362 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 4
  %364 = call i64 @_update_journal_header_block(%struct.super_block* %356, i32 %360, i32 %363)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %355
  %367 = load %struct.super_block*, %struct.super_block** %3, align 8
  %368 = call i32 @reiserfs_write_unlock(%struct.super_block* %367)
  store i32 -1, i32* %2, align 4
  br label %372

369:                                              ; preds = %355, %347
  %370 = load %struct.super_block*, %struct.super_block** %3, align 8
  %371 = call i32 @reiserfs_write_unlock(%struct.super_block* %370)
  store i32 0, i32* %2, align 4
  br label %372

372:                                              ; preds = %369, %366, %249, %43
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_info(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i8* @journal_bread(%struct.super_block*, i32) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @reiserfs_debug(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @journal_transaction_is_valid(%struct.super_block*, %struct.buffer_head*, i32*, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @reiserfs_breada(i32, i64, i32, i64) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @journal_read_transaction(%struct.super_block*, i64, i64, i32, i64) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @bdev_read_only(i32) #1

declare dso_local i64 @_update_journal_header_block(%struct.super_block*, i32, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
