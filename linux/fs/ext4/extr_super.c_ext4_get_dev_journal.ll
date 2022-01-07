; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_dev_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_dev_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.super_block* }
%struct.TYPE_10__ = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_super_block = type { i64, i32, i32, i32, i32 }
%struct.block_device = type { i32 }
%struct.TYPE_12__ = type { %struct.block_device*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"blocksize too small for journal device\00", align 1
@EXT4_MIN_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"couldn't read superblock of external journal\00", align 1
@EXT4_SUPER_MAGIC = common dso_local global i64 0, align 8
@EXT4_FEATURE_INCOMPAT_JOURNAL_DEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"external journal has bad superblock\00", align 1
@EXT4_FEATURE_RO_COMPAT_METADATA_CSUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"external journal has corrupt superblock\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"journal UUID does not match\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to create device journal\00", align 1
@REQ_OP_READ = common dso_local global i32 0, align 4
@REQ_META = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"I/O error on journal device\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"External journal has more than one user (unsupported) - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.super_block*, i32)* @ext4_get_dev_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ext4_get_dev_journal(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ext4_super_block*, align 8
  %15 = alloca %struct.block_device*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call i32 @ext4_has_feature_journal(%struct.super_block* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = call %struct.block_device* @ext4_blkdev_get(i32 %22, %struct.super_block* %23)
  store %struct.block_device* %24, %struct.block_device** %15, align 8
  %25 = load %struct.block_device*, %struct.block_device** %15, align 8
  %26 = icmp eq %struct.block_device* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %206

28:                                               ; preds = %2
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.block_device*, %struct.block_device** %15, align 8
  %33 = call i32 @bdev_logical_block_size(%struct.block_device* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %38, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %203

41:                                               ; preds = %28
  %42 = load i32, i32* @EXT4_MIN_BLOCK_SIZE, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @EXT4_MIN_BLOCK_SIZE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = srem i32 %45, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %13, align 8
  %49 = load %struct.block_device*, %struct.block_device** %15, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @set_blocksize(%struct.block_device* %49, i32 %50)
  %52 = load %struct.block_device*, %struct.block_device** %15, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.buffer_head* @__bread(%struct.block_device* %52, i32 %53, i32 %54)
  store %struct.buffer_head* %55, %struct.buffer_head** %6, align 8
  %56 = icmp ne %struct.buffer_head* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %58, i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %203

61:                                               ; preds = %41
  %62 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add i64 %64, %65
  %67 = inttoptr i64 %66 to %struct.ext4_super_block*
  store %struct.ext4_super_block* %67, %struct.ext4_super_block** %14, align 8
  %68 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %69 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le16_to_cpu(i32 %70)
  %72 = load i64, i64* @EXT4_SUPER_MAGIC, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %61
  %75 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %76 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load i32, i32* @EXT4_FEATURE_INCOMPAT_JOURNAL_DEV, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74, %61
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = load i32, i32* @KERN_ERR, align 4
  %85 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %83, i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = call i32 @brelse(%struct.buffer_head* %86)
  br label %203

88:                                               ; preds = %74
  %89 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %90 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_METADATA_CSUM, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %88
  %97 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %98 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.super_block*, %struct.super_block** %4, align 8
  %101 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %102 = call i64 @ext4_superblock_csum(%struct.super_block* %100, %struct.ext4_super_block* %101)
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %105, i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %109 = call i32 @brelse(%struct.buffer_head* %108)
  br label %203

110:                                              ; preds = %96, %88
  %111 = load %struct.super_block*, %struct.super_block** %4, align 8
  %112 = call %struct.TYPE_12__* @EXT4_SB(%struct.super_block* %111)
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %118 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @memcmp(i32 %116, i32 %119, i32 16)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %110
  %123 = load %struct.super_block*, %struct.super_block** %4, align 8
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %123, i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %126 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %127 = call i32 @brelse(%struct.buffer_head* %126)
  br label %203

128:                                              ; preds = %110
  %129 = load %struct.ext4_super_block*, %struct.ext4_super_block** %14, align 8
  %130 = call i32 @ext4_blocks_count(%struct.ext4_super_block* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  %133 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %134 = call i32 @brelse(%struct.buffer_head* %133)
  %135 = load %struct.block_device*, %struct.block_device** %15, align 8
  %136 = load %struct.super_block*, %struct.super_block** %4, align 8
  %137 = getelementptr inbounds %struct.super_block, %struct.super_block* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call %struct.TYPE_11__* @jbd2_journal_init_dev(%struct.block_device* %135, i32 %138, i32 %139, i32 %140, i32 %141)
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %7, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = icmp ne %struct.TYPE_11__* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %128
  %146 = load %struct.super_block*, %struct.super_block** %4, align 8
  %147 = load i32, i32* @KERN_ERR, align 4
  %148 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %146, i32 %147, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %203

149:                                              ; preds = %128
  %150 = load %struct.super_block*, %struct.super_block** %4, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  store %struct.super_block* %150, %struct.super_block** %152, align 8
  %153 = load i32, i32* @REQ_OP_READ, align 4
  %154 = load i32, i32* @REQ_META, align 4
  %155 = load i32, i32* @REQ_PRIO, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = call i32 @ll_rw_block(i32 %153, i32 %156, i32 1, i32* %158)
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @wait_on_buffer(i32 %162)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @buffer_uptodate(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %173, label %169

169:                                              ; preds = %149
  %170 = load %struct.super_block*, %struct.super_block** %4, align 8
  %171 = load i32, i32* @KERN_ERR, align 4
  %172 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %170, i32 %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %200

173:                                              ; preds = %149
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @be32_to_cpu(i32 %178)
  %180 = icmp ne i32 %179, 1
  br i1 %180, label %181, label %191

181:                                              ; preds = %173
  %182 = load %struct.super_block*, %struct.super_block** %4, align 8
  %183 = load i32, i32* @KERN_ERR, align 4
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @be32_to_cpu(i32 %188)
  %190 = call i32 (%struct.super_block*, i32, i8*, ...) @ext4_msg(%struct.super_block* %182, i32 %183, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %189)
  br label %200

191:                                              ; preds = %173
  %192 = load %struct.block_device*, %struct.block_device** %15, align 8
  %193 = load %struct.super_block*, %struct.super_block** %4, align 8
  %194 = call %struct.TYPE_12__* @EXT4_SB(%struct.super_block* %193)
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  store %struct.block_device* %192, %struct.block_device** %195, align 8
  %196 = load %struct.super_block*, %struct.super_block** %4, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %198 = call i32 @ext4_init_journal_params(%struct.super_block* %196, %struct.TYPE_11__* %197)
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %199, %struct.TYPE_11__** %3, align 8
  br label %206

200:                                              ; preds = %181, %169
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %202 = call i32 @jbd2_journal_destroy(%struct.TYPE_11__* %201)
  br label %203

203:                                              ; preds = %200, %145, %122, %104, %82, %57, %37
  %204 = load %struct.block_device*, %struct.block_device** %15, align 8
  %205 = call i32 @ext4_blkdev_put(%struct.block_device* %204)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %206

206:                                              ; preds = %203, %191, %27
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %207
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local %struct.block_device* @ext4_blkdev_get(i32, %struct.super_block*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local %struct.buffer_head* @__bread(%struct.block_device*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext4_superblock_csum(%struct.super_block*, %struct.ext4_super_block*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local %struct.TYPE_11__* @jbd2_journal_init_dev(%struct.block_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32, i32*) #1

declare dso_local i32 @wait_on_buffer(i32) #1

declare dso_local i32 @buffer_uptodate(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ext4_init_journal_params(%struct.super_block*, %struct.TYPE_11__*) #1

declare dso_local i32 @jbd2_journal_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @ext4_blkdev_put(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
