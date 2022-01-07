; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_read_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_read_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.reiserfs_journal = type { i64, i32, i32 }
%struct.reiserfs_journal_desc = type { i32* }
%struct.reiserfs_journal_commit = type { i32* }
%struct.buffer_head = type { i32, i32, i64 }

@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"journal-1037: journal_read_transaction, offset %llu, len %d mount_id %d\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"journal-1039: journal_read_trans skipping because %lu is too old\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"journal-1146: journal_read_trans skipping because %d is != newest_mount_id %lu\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"journal_read_transaction, commit offset %llu had bad time %d or length %d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"clm-2076\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"device is readonly, unable to replay log\00", align 1
@EROFS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"journal-1169\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"kmalloc failed, unable to mount FS\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"journal-1207\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"REPLAY FAILURE fsck required! Block to replay is outside of filesystem\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"journal-1204\00", align 1
@.str.11 = private unnamed_addr constant [64 x i8] c"REPLAY FAILURE fsck required! Trying to replay onto a log block\00", align 1
@REQ_OP_READ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"journal-1212\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"REPLAY FAILURE fsck required! buffer write failed\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"journal-1226\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"REPLAY FAILURE, fsck required! buffer write failed\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"journal-1095: setting journal start to offset %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i64, i32, i64)* @journal_read_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_read_transaction(%struct.super_block* %0, i64 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.reiserfs_journal*, align 8
  %13 = alloca %struct.reiserfs_journal_desc*, align 8
  %14 = alloca %struct.reiserfs_journal_commit*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head**, align 8
  %19 = alloca %struct.buffer_head**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %23)
  store %struct.reiserfs_journal* %24, %struct.reiserfs_journal** %12, align 8
  store i32 0, i32* %15, align 4
  store %struct.buffer_head** null, %struct.buffer_head*** %18, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %19, align 8
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = call %struct.buffer_head* @journal_bread(%struct.super_block* %25, i32 %27)
  store %struct.buffer_head* %28, %struct.buffer_head** %17, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %500

32:                                               ; preds = %5
  %33 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %36, %struct.reiserfs_journal_desc** %13, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = zext i32 %39 to i64
  %41 = load %struct.super_block*, %struct.super_block** %7, align 8
  %42 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %41)
  %43 = sub i64 %40, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %20, align 4
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %47 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = load %struct.super_block*, %struct.super_block** %7, align 8
  %52 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %51)
  %53 = sub i64 %50, %52
  %54 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %55 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %54)
  %56 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %57 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %56)
  %58 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %45, i32 %46, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %53, i32 %55, i64 %57)
  %59 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %60 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %32
  %64 = load %struct.super_block*, %struct.super_block** %7, align 8
  %65 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.super_block*, %struct.super_block** %7, align 8
  %68 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %67)
  %69 = sub i64 %66, %68
  %70 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %64, i32 %65, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  store i32 1, i32* %6, align 4
  br label %500

73:                                               ; preds = %32
  %74 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %75 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %74)
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.super_block*, %struct.super_block** %7, align 8
  %80 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %81 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %82 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %81)
  %83 = load i64, i64* %11, align 8
  %84 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %79, i32 %80, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i64 %82, i64 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %86 = call i32 @brelse(%struct.buffer_head* %85)
  store i32 1, i32* %6, align 4
  br label %500

87:                                               ; preds = %73
  %88 = load %struct.super_block*, %struct.super_block** %7, align 8
  %89 = load %struct.super_block*, %struct.super_block** %7, align 8
  %90 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %89)
  %91 = load i32, i32* %20, align 4
  %92 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %93 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %92)
  %94 = add i32 %91, %93
  %95 = add i32 %94, 1
  %96 = load %struct.super_block*, %struct.super_block** %7, align 8
  %97 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %96)
  %98 = urem i32 %95, %97
  %99 = zext i32 %98 to i64
  %100 = add i64 %90, %99
  %101 = trunc i64 %100 to i32
  %102 = call %struct.buffer_head* @journal_bread(%struct.super_block* %88, i32 %101)
  store %struct.buffer_head* %102, %struct.buffer_head** %16, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %104 = icmp ne %struct.buffer_head* %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %87
  %106 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %107 = call i32 @brelse(%struct.buffer_head* %106)
  store i32 1, i32* %6, align 4
  br label %500

108:                                              ; preds = %87
  %109 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %110 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.reiserfs_journal_commit*
  store %struct.reiserfs_journal_commit* %112, %struct.reiserfs_journal_commit** %14, align 8
  %113 = load %struct.super_block*, %struct.super_block** %7, align 8
  %114 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %115 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %116 = call i64 @journal_compare_desc_commit(%struct.super_block* %113, %struct.reiserfs_journal_desc* %114, %struct.reiserfs_journal_commit* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %108
  %119 = load %struct.super_block*, %struct.super_block** %7, align 8
  %120 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %121 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = zext i32 %123 to i64
  %125 = load %struct.super_block*, %struct.super_block** %7, align 8
  %126 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %125)
  %127 = sub i64 %124, %126
  %128 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %129 = call i32 @get_commit_trans_id(%struct.reiserfs_journal_commit* %128)
  %130 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %131 = call i32 @get_commit_trans_len(%struct.reiserfs_journal_commit* %130)
  %132 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %119, i32 %120, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0), i64 %127, i32 %129, i32 %131)
  %133 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  %135 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  store i32 1, i32* %6, align 4
  br label %500

137:                                              ; preds = %108
  %138 = load %struct.super_block*, %struct.super_block** %7, align 8
  %139 = getelementptr inbounds %struct.super_block, %struct.super_block* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @bdev_read_only(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %137
  %144 = load %struct.super_block*, %struct.super_block** %7, align 8
  %145 = call i32 @reiserfs_warning(%struct.super_block* %144, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  %148 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %149 = call i32 @brelse(%struct.buffer_head* %148)
  %150 = load i32, i32* @EROFS, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %6, align 4
  br label %500

152:                                              ; preds = %137
  %153 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %154 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %153)
  store i32 %154, i32* %15, align 4
  %155 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %156 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %155)
  %157 = load i32, i32* @GFP_NOFS, align 4
  %158 = call %struct.buffer_head** @kmalloc_array(i32 %156, i32 8, i32 %157)
  store %struct.buffer_head** %158, %struct.buffer_head*** %18, align 8
  %159 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %160 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %159)
  %161 = load i32, i32* @GFP_NOFS, align 4
  %162 = call %struct.buffer_head** @kmalloc_array(i32 %160, i32 8, i32 %161)
  store %struct.buffer_head** %162, %struct.buffer_head*** %19, align 8
  %163 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %164 = icmp ne %struct.buffer_head** %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %152
  %166 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %167 = icmp ne %struct.buffer_head** %166, null
  br i1 %167, label %179, label %168

168:                                              ; preds = %165, %152
  %169 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %170 = call i32 @brelse(%struct.buffer_head* %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %172 = call i32 @brelse(%struct.buffer_head* %171)
  %173 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %174 = call i32 @kfree(%struct.buffer_head** %173)
  %175 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %176 = call i32 @kfree(%struct.buffer_head** %175)
  %177 = load %struct.super_block*, %struct.super_block** %7, align 8
  %178 = call i32 @reiserfs_warning(%struct.super_block* %177, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %500

179:                                              ; preds = %165
  %180 = load %struct.super_block*, %struct.super_block** %7, align 8
  %181 = getelementptr inbounds %struct.super_block, %struct.super_block* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @journal_trans_half(i32 %182)
  store i32 %183, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %184

184:                                              ; preds = %289, %179
  %185 = load i32, i32* %21, align 4
  %186 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %187 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %186)
  %188 = icmp ult i32 %185, %187
  br i1 %188, label %189, label %292

189:                                              ; preds = %184
  %190 = load %struct.super_block*, %struct.super_block** %7, align 8
  %191 = load %struct.super_block*, %struct.super_block** %7, align 8
  %192 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %191)
  %193 = load i32, i32* %20, align 4
  %194 = add i32 %193, 1
  %195 = load i32, i32* %21, align 4
  %196 = add i32 %194, %195
  %197 = load %struct.super_block*, %struct.super_block** %7, align 8
  %198 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %197)
  %199 = urem i32 %196, %198
  %200 = zext i32 %199 to i64
  %201 = add i64 %192, %200
  %202 = trunc i64 %201 to i32
  %203 = call %struct.buffer_head* @journal_getblk(%struct.super_block* %190, i32 %202)
  %204 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %204, i64 %206
  store %struct.buffer_head* %203, %struct.buffer_head** %207, align 8
  %208 = load i32, i32* %21, align 4
  %209 = load i32, i32* %22, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %189
  %212 = load %struct.super_block*, %struct.super_block** %7, align 8
  %213 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %214 = getelementptr inbounds %struct.reiserfs_journal_desc, %struct.reiserfs_journal_desc* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %21, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @le32_to_cpu(i32 %219)
  %221 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %212, i32 %220)
  %222 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %223 = load i32, i32* %21, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %222, i64 %224
  store %struct.buffer_head* %221, %struct.buffer_head** %225, align 8
  br label %243

226:                                              ; preds = %189
  %227 = load %struct.super_block*, %struct.super_block** %7, align 8
  %228 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %14, align 8
  %229 = getelementptr inbounds %struct.reiserfs_journal_commit, %struct.reiserfs_journal_commit* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* %22, align 4
  %233 = sub nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %230, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @le32_to_cpu(i32 %236)
  %238 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %227, i32 %237)
  %239 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %239, i64 %241
  store %struct.buffer_head* %238, %struct.buffer_head** %242, align 8
  br label %243

243:                                              ; preds = %226, %211
  %244 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %245 = load i32, i32* %21, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %244, i64 %246
  %248 = load %struct.buffer_head*, %struct.buffer_head** %247, align 8
  %249 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = zext i32 %250 to i64
  %252 = load %struct.super_block*, %struct.super_block** %7, align 8
  %253 = call i64 @SB_BLOCK_COUNT(%struct.super_block* %252)
  %254 = icmp sgt i64 %251, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %243
  %256 = load %struct.super_block*, %struct.super_block** %7, align 8
  %257 = call i32 @reiserfs_warning(%struct.super_block* %256, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0))
  br label %273

258:                                              ; preds = %243
  %259 = load %struct.super_block*, %struct.super_block** %7, align 8
  %260 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %261 = load i32, i32* %21, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %260, i64 %262
  %264 = load %struct.buffer_head*, %struct.buffer_head** %263, align 8
  %265 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = zext i32 %266 to i64
  %268 = call i64 @is_block_in_log_or_reserved_area(%struct.super_block* %259, i64 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %288

270:                                              ; preds = %258
  %271 = load %struct.super_block*, %struct.super_block** %7, align 8
  %272 = call i32 @reiserfs_warning(%struct.super_block* %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270, %255
  %274 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %275 = load i32, i32* %21, align 4
  %276 = call i32 @brelse_array(%struct.buffer_head** %274, i32 %275)
  %277 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %278 = load i32, i32* %21, align 4
  %279 = call i32 @brelse_array(%struct.buffer_head** %277, i32 %278)
  %280 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %281 = call i32 @brelse(%struct.buffer_head* %280)
  %282 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %283 = call i32 @brelse(%struct.buffer_head* %282)
  %284 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %285 = call i32 @kfree(%struct.buffer_head** %284)
  %286 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %287 = call i32 @kfree(%struct.buffer_head** %286)
  store i32 -1, i32* %6, align 4
  br label %500

288:                                              ; preds = %258
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %21, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %21, align 4
  br label %184

292:                                              ; preds = %184
  %293 = load i32, i32* @REQ_OP_READ, align 4
  %294 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %295 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %294)
  %296 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %297 = call i32 @ll_rw_block(i32 %293, i32 0, i32 %295, %struct.buffer_head** %296)
  store i32 0, i32* %21, align 4
  br label %298

298:                                              ; preds = %376, %292
  %299 = load i32, i32* %21, align 4
  %300 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %301 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %300)
  %302 = icmp ult i32 %299, %301
  br i1 %302, label %303, label %379

303:                                              ; preds = %298
  %304 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %305 = load i32, i32* %21, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %304, i64 %306
  %308 = load %struct.buffer_head*, %struct.buffer_head** %307, align 8
  %309 = call i32 @wait_on_buffer(%struct.buffer_head* %308)
  %310 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %311 = load i32, i32* %21, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %310, i64 %312
  %314 = load %struct.buffer_head*, %struct.buffer_head** %313, align 8
  %315 = call i32 @buffer_uptodate(%struct.buffer_head* %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %341, label %317

317:                                              ; preds = %303
  %318 = load %struct.super_block*, %struct.super_block** %7, align 8
  %319 = call i32 @reiserfs_warning(%struct.super_block* %318, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i64 0, i64 0))
  %320 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %320, i64 %322
  %324 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %325 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %324)
  %326 = load i32, i32* %21, align 4
  %327 = sub i32 %325, %326
  %328 = call i32 @brelse_array(%struct.buffer_head** %323, i32 %327)
  %329 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %330 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %331 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %330)
  %332 = call i32 @brelse_array(%struct.buffer_head** %329, i32 %331)
  %333 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %334 = call i32 @brelse(%struct.buffer_head* %333)
  %335 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %336 = call i32 @brelse(%struct.buffer_head* %335)
  %337 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %338 = call i32 @kfree(%struct.buffer_head** %337)
  %339 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %340 = call i32 @kfree(%struct.buffer_head** %339)
  store i32 -1, i32* %6, align 4
  br label %500

341:                                              ; preds = %303
  %342 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %343 = load i32, i32* %21, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %342, i64 %344
  %346 = load %struct.buffer_head*, %struct.buffer_head** %345, align 8
  %347 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %350 = load i32, i32* %21, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %349, i64 %351
  %353 = load %struct.buffer_head*, %struct.buffer_head** %352, align 8
  %354 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %353, i32 0, i32 2
  %355 = load i64, i64* %354, align 8
  %356 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %357 = load i32, i32* %21, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %356, i64 %358
  %360 = load %struct.buffer_head*, %struct.buffer_head** %359, align 8
  %361 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @memcpy(i64 %348, i64 %355, i32 %362)
  %364 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %365 = load i32, i32* %21, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %364, i64 %366
  %368 = load %struct.buffer_head*, %struct.buffer_head** %367, align 8
  %369 = call i32 @set_buffer_uptodate(%struct.buffer_head* %368)
  %370 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %371 = load i32, i32* %21, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %370, i64 %372
  %374 = load %struct.buffer_head*, %struct.buffer_head** %373, align 8
  %375 = call i32 @brelse(%struct.buffer_head* %374)
  br label %376

376:                                              ; preds = %341
  %377 = load i32, i32* %21, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %21, align 4
  br label %298

379:                                              ; preds = %298
  store i32 0, i32* %21, align 4
  br label %380

380:                                              ; preds = %398, %379
  %381 = load i32, i32* %21, align 4
  %382 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %383 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %382)
  %384 = icmp ult i32 %381, %383
  br i1 %384, label %385, label %401

385:                                              ; preds = %380
  %386 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %387 = load i32, i32* %21, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %386, i64 %388
  %390 = load %struct.buffer_head*, %struct.buffer_head** %389, align 8
  %391 = call i32 @set_buffer_dirty(%struct.buffer_head* %390)
  %392 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %393 = load i32, i32* %21, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %392, i64 %394
  %396 = load %struct.buffer_head*, %struct.buffer_head** %395, align 8
  %397 = call i32 @write_dirty_buffer(%struct.buffer_head* %396, i32 0)
  br label %398

398:                                              ; preds = %385
  %399 = load i32, i32* %21, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %21, align 4
  br label %380

401:                                              ; preds = %380
  store i32 0, i32* %21, align 4
  br label %402

402:                                              ; preds = %448, %401
  %403 = load i32, i32* %21, align 4
  %404 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %405 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %404)
  %406 = icmp ult i32 %403, %405
  br i1 %406, label %407, label %451

407:                                              ; preds = %402
  %408 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %409 = load i32, i32* %21, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %408, i64 %410
  %412 = load %struct.buffer_head*, %struct.buffer_head** %411, align 8
  %413 = call i32 @wait_on_buffer(%struct.buffer_head* %412)
  %414 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %415 = load i32, i32* %21, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %414, i64 %416
  %418 = load %struct.buffer_head*, %struct.buffer_head** %417, align 8
  %419 = call i32 @buffer_uptodate(%struct.buffer_head* %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %441, label %421

421:                                              ; preds = %407
  %422 = load %struct.super_block*, %struct.super_block** %7, align 8
  %423 = call i32 @reiserfs_warning(%struct.super_block* %422, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %424 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %425 = load i32, i32* %21, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %424, i64 %426
  %428 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %429 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %428)
  %430 = load i32, i32* %21, align 4
  %431 = sub i32 %429, %430
  %432 = call i32 @brelse_array(%struct.buffer_head** %427, i32 %431)
  %433 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %434 = call i32 @brelse(%struct.buffer_head* %433)
  %435 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %436 = call i32 @brelse(%struct.buffer_head* %435)
  %437 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %438 = call i32 @kfree(%struct.buffer_head** %437)
  %439 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %440 = call i32 @kfree(%struct.buffer_head** %439)
  store i32 -1, i32* %6, align 4
  br label %500

441:                                              ; preds = %407
  %442 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %443 = load i32, i32* %21, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %442, i64 %444
  %446 = load %struct.buffer_head*, %struct.buffer_head** %445, align 8
  %447 = call i32 @brelse(%struct.buffer_head* %446)
  br label %448

448:                                              ; preds = %441
  %449 = load i32, i32* %21, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %21, align 4
  br label %402

451:                                              ; preds = %402
  %452 = load %struct.super_block*, %struct.super_block** %7, align 8
  %453 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %452)
  %454 = load i32, i32* %20, align 4
  %455 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %13, align 8
  %456 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %455)
  %457 = add i32 %454, %456
  %458 = add i32 %457, 2
  %459 = load %struct.super_block*, %struct.super_block** %7, align 8
  %460 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %459)
  %461 = urem i32 %458, %460
  %462 = zext i32 %461 to i64
  %463 = add i64 %453, %462
  store i64 %463, i64* %8, align 8
  %464 = load %struct.super_block*, %struct.super_block** %7, align 8
  %465 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %466 = load i64, i64* %8, align 8
  %467 = load %struct.super_block*, %struct.super_block** %7, align 8
  %468 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %467)
  %469 = sub i64 %466, %468
  %470 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %464, i32 %465, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.16, i64 0, i64 0), i64 %469)
  %471 = load i64, i64* %8, align 8
  %472 = load %struct.super_block*, %struct.super_block** %7, align 8
  %473 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %472)
  %474 = sub i64 %471, %473
  %475 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %476 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %475, i32 0, i32 0
  store i64 %474, i64* %476, align 8
  %477 = load i32, i32* %15, align 4
  %478 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %479 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %478, i32 0, i32 1
  store i32 %477, i32* %479, align 8
  %480 = load i32, i32* %15, align 4
  %481 = add i32 %480, 1
  %482 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %483 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %482, i32 0, i32 2
  store i32 %481, i32* %483, align 4
  %484 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %485 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %451
  %489 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %12, align 8
  %490 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %489, i32 0, i32 2
  store i32 10, i32* %490, align 4
  br label %491

491:                                              ; preds = %488, %451
  %492 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %493 = call i32 @brelse(%struct.buffer_head* %492)
  %494 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %495 = call i32 @brelse(%struct.buffer_head* %494)
  %496 = load %struct.buffer_head**, %struct.buffer_head*** %18, align 8
  %497 = call i32 @kfree(%struct.buffer_head** %496)
  %498 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  %499 = call i32 @kfree(%struct.buffer_head** %498)
  store i32 0, i32* %6, align 4
  br label %500

500:                                              ; preds = %491, %421, %317, %273, %168, %143, %118, %105, %78, %63, %31
  %501 = load i32, i32* %6, align 4
  ret i32 %501
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @journal_bread(%struct.super_block*, i32) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block*) #1

declare dso_local i32 @reiserfs_debug(%struct.super_block*, i32, i8*, i64, ...) #1

declare dso_local i32 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i64 @journal_compare_desc_commit(%struct.super_block*, %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_commit*) #1

declare dso_local i32 @get_commit_trans_id(%struct.reiserfs_journal_commit*) #1

declare dso_local i32 @get_commit_trans_len(%struct.reiserfs_journal_commit*) #1

declare dso_local i64 @bdev_read_only(i32) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local %struct.buffer_head** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

declare dso_local i32 @journal_trans_half(i32) #1

declare dso_local %struct.buffer_head* @journal_getblk(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @SB_BLOCK_COUNT(%struct.super_block*) #1

declare dso_local i64 @is_block_in_log_or_reserved_area(%struct.super_block*, i64) #1

declare dso_local i32 @brelse_array(%struct.buffer_head**, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @write_dirty_buffer(%struct.buffer_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
