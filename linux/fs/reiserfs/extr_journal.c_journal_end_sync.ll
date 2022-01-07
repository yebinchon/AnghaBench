; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_end_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_journal_end_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64 }

@COMMIT_NOW = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_end_sync(%struct.reiserfs_transaction_handle* %0) #0 {
  %2 = alloca %struct.reiserfs_transaction_handle*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %2, align 8
  %5 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %2, align 8
  %6 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %5, i32 0, i32 2
  %7 = load %struct.super_block*, %struct.super_block** %6, align 8
  store %struct.super_block* %7, %struct.super_block** %3, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %8)
  store %struct.reiserfs_journal* %9, %struct.reiserfs_journal** %4, align 8
  %10 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %2, align 8
  %11 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %2, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %4, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load %struct.super_block*, %struct.super_block** %3, align 8
  %29 = load %struct.super_block*, %struct.super_block** %3, align 8
  %30 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %29)
  %31 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %28, i32 %30, i32 1)
  %32 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %2, align 8
  %33 = load %struct.super_block*, %struct.super_block** %3, align 8
  %34 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %33)
  %35 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %32, i32 %34)
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %2, align 8
  %38 = load i32, i32* @COMMIT_NOW, align 4
  %39 = load i32, i32* @WAIT, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %37, i32 %40)
  ret i32 %41
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @do_journal_end(%struct.reiserfs_transaction_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
