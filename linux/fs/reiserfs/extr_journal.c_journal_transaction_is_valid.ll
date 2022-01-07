; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_transaction_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_transaction_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.reiserfs_journal_desc = type { i32 }
%struct.reiserfs_journal_commit = type { i32 }
%struct.TYPE_2__ = type { i64 }

@JOURNAL_DESC_MAGIC = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"journal-986: transaction is valid returning because trans_id %d is greater than oldest_invalid %lu\00", align 1
@.str.1 = private unnamed_addr constant [98 x i8] c"journal-1087: transaction is valid returning because mount_id %d is less than newest_mount_id %lu\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"journal-2018\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"Bad transaction length %d encountered, ignoring transaction\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"journal_transaction_is_valid, commit offset %ld had bad time %d or length %d\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"journal-1004: transaction_is_valid setting oldest invalid trans_id to %d\00", align 1
@.str.6 = private unnamed_addr constant [70 x i8] c"journal-1006: found valid transaction start offset %llu, len %d id %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, i32*, i64*)* @journal_transaction_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_transaction_is_valid(%struct.super_block* %0, %struct.buffer_head* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.reiserfs_journal_desc*, align 8
  %11 = alloca %struct.reiserfs_journal_commit*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = icmp ne %struct.buffer_head* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %162

17:                                               ; preds = %4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %21, %struct.reiserfs_journal_desc** %10, align 8
  %22 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %23 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %22)
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %161

25:                                               ; preds = %17
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = call i32 @get_journal_desc_magic(%struct.buffer_head* %26)
  %28 = load i32, i32* @JOURNAL_DESC_MAGIC, align 4
  %29 = call i32 @memcmp(i32 %27, i32 %28, i32 8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %161, label %31

31:                                               ; preds = %25
  %32 = load i32*, i32** %8, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %40 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %47 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %48 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %47)
  %49 = zext i32 %48 to i64
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %45, i32 %46, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %51)
  store i32 0, i32* %5, align 4
  br label %162

53:                                               ; preds = %38, %34, %31
  %54 = load i64*, i64** %9, align 8
  %55 = icmp ne i64* %54, null
  br i1 %55, label %56, label %70

56:                                               ; preds = %53
  %57 = load i64*, i64** %9, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %60 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %59)
  %61 = icmp ugt i64 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.super_block*, %struct.super_block** %6, align 8
  %64 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %65 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %66 = call i64 @get_desc_mount_id(%struct.reiserfs_journal_desc* %65)
  %67 = load i64*, i64** %9, align 8
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %63, i32 %64, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %68)
  store i32 -1, i32* %5, align 4
  br label %162

70:                                               ; preds = %56, %53
  %71 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %72 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %71)
  %73 = load %struct.super_block*, %struct.super_block** %6, align 8
  %74 = call %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block* %73)
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ugt i64 %72, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %81 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %80)
  %82 = call i32 @reiserfs_warning(%struct.super_block* %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  store i32 -1, i32* %5, align 4
  br label %162

83:                                               ; preds = %70
  %84 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %87)
  %89 = sub i64 %86, %88
  store i64 %89, i64* %13, align 8
  %90 = load %struct.super_block*, %struct.super_block** %6, align 8
  %91 = load %struct.super_block*, %struct.super_block** %6, align 8
  %92 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %91)
  %93 = load i64, i64* %13, align 8
  %94 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %95 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %94)
  %96 = add i64 %93, %95
  %97 = add i64 %96, 1
  %98 = load %struct.super_block*, %struct.super_block** %6, align 8
  %99 = call i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %98)
  %100 = urem i64 %97, %99
  %101 = add i64 %92, %100
  %102 = call %struct.buffer_head* @journal_bread(%struct.super_block* %90, i64 %101)
  store %struct.buffer_head* %102, %struct.buffer_head** %12, align 8
  %103 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %104 = icmp ne %struct.buffer_head* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %83
  store i32 0, i32* %5, align 4
  br label %162

106:                                              ; preds = %83
  %107 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.reiserfs_journal_commit*
  store %struct.reiserfs_journal_commit* %110, %struct.reiserfs_journal_commit** %11, align 8
  %111 = load %struct.super_block*, %struct.super_block** %6, align 8
  %112 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %113 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %11, align 8
  %114 = call i64 @journal_compare_desc_commit(%struct.super_block* %111, %struct.reiserfs_journal_desc* %112, %struct.reiserfs_journal_commit* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %145

116:                                              ; preds = %106
  %117 = load %struct.super_block*, %struct.super_block** %6, align 8
  %118 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %119 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %120 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.super_block*, %struct.super_block** %6, align 8
  %123 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %122)
  %124 = sub i64 %121, %123
  %125 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %11, align 8
  %126 = call i64 @get_commit_trans_id(%struct.reiserfs_journal_commit* %125)
  %127 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %11, align 8
  %128 = call i32 @get_commit_trans_len(%struct.reiserfs_journal_commit* %127)
  %129 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %117, i32 %118, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i64 %124, i64 %126, i32 %128)
  %130 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %131 = call i32 @brelse(%struct.buffer_head* %130)
  %132 = load i32*, i32** %8, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %116
  %135 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %136 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %135)
  %137 = load i32*, i32** %8, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.super_block*, %struct.super_block** %6, align 8
  %139 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %140 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %141 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %140)
  %142 = zext i32 %141 to i64
  %143 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %138, i32 %139, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %134, %116
  store i32 -1, i32* %5, align 4
  br label %162

145:                                              ; preds = %106
  %146 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  %148 = load %struct.super_block*, %struct.super_block** %6, align 8
  %149 = load i32, i32* @REISERFS_DEBUG_CODE, align 4
  %150 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %151 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.super_block*, %struct.super_block** %6, align 8
  %154 = call i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block* %153)
  %155 = sub i64 %152, %154
  %156 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %157 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %156)
  %158 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %10, align 8
  %159 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %158)
  %160 = call i32 (%struct.super_block*, i32, i8*, i64, ...) @reiserfs_debug(%struct.super_block* %148, i32 %149, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i64 %155, i64 %157, i32 %159)
  store i32 1, i32* %5, align 4
  br label %162

161:                                              ; preds = %25, %17
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %145, %144, %105, %78, %62, %44, %16
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i64 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_journal_desc_magic(%struct.buffer_head*) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @reiserfs_debug(%struct.super_block*, i32, i8*, i64, ...) #1

declare dso_local i64 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_1st_BLOCK(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @journal_bread(%struct.super_block*, i64) #1

declare dso_local i64 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i64 @journal_compare_desc_commit(%struct.super_block*, %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_commit*) #1

declare dso_local i64 @get_commit_trans_id(%struct.reiserfs_journal_commit*) #1

declare dso_local i32 @get_commit_trans_len(%struct.reiserfs_journal_commit*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
