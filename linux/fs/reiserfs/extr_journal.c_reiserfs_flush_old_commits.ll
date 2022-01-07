; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_flush_old_commits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_flush_old_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_journal = type { i64, i64, i64, i32, i32 }

@COMMIT_NOW = common dso_local global i32 0, align 4
@WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_flush_old_commits(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.reiserfs_transaction_handle, align 4
  %5 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %5, align 8
  %8 = call i64 (...) @ktime_get_seconds()
  store i64 %8, i64* %3, align 8
  %9 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %10 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %9, i32 0, i32 4
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %15, i32 0, i32 3
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  %35 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %36 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.super_block*, %struct.super_block** %2, align 8
  %41 = call i32 @journal_join(%struct.reiserfs_transaction_handle* %4, %struct.super_block* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = load %struct.super_block*, %struct.super_block** %2, align 8
  %45 = load %struct.super_block*, %struct.super_block** %2, align 8
  %46 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %45)
  %47 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %44, i32 %46, i32 1)
  %48 = load %struct.super_block*, %struct.super_block** %2, align 8
  %49 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %48)
  %50 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %4, i32 %49)
  %51 = load i32, i32* @COMMIT_NOW, align 4
  %52 = load i32, i32* @WAIT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %4, i32 %53)
  br label %55

55:                                               ; preds = %43, %39
  br label %56

56:                                               ; preds = %13, %55, %29, %24, %19, %14
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @ktime_get_seconds(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @journal_join(%struct.reiserfs_transaction_handle*, %struct.super_block*) #1

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
