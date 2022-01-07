; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_desc_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_prints.c_print_desc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64, i64 }
%struct.reiserfs_journal_desc = type { i32 }

@JOURNAL_DESC_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Desc block %llu (j_trans_id %d, j_mount_id %d, j_len %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*)* @print_desc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_desc_block(%struct.buffer_head* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.reiserfs_journal_desc*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  %5 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %6 = call i32 @get_journal_desc_magic(%struct.buffer_head* %5)
  %7 = load i32, i32* @JOURNAL_DESC_MAGIC, align 4
  %8 = call i64 @memcmp(i32 %6, i32 %7, i32 8)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.reiserfs_journal_desc*
  store %struct.reiserfs_journal_desc* %15, %struct.reiserfs_journal_desc** %4, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %4, align 8
  %20 = call i32 @get_desc_trans_id(%struct.reiserfs_journal_desc* %19)
  %21 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %4, align 8
  %22 = call i32 @get_desc_mount_id(%struct.reiserfs_journal_desc* %21)
  %23 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %4, align 8
  %24 = call i32 @get_desc_trans_len(%struct.reiserfs_journal_desc* %23)
  %25 = call i32 @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %20, i32 %22, i32 %24)
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_journal_desc_magic(%struct.buffer_head*) #1

declare dso_local i32 @printk(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @get_desc_mount_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i32 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
