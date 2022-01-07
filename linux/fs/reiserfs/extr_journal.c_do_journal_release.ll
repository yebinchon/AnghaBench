; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_do_journal_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_do_journal_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32 }

@FLUSH_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, %struct.super_block*, i32)* @do_journal_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_journal_release(%struct.reiserfs_transaction_handle* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_transaction_handle, align 4
  %8 = alloca %struct.reiserfs_journal*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %9)
  store %struct.reiserfs_journal* %10, %struct.reiserfs_journal** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %3
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call i32 @sb_rdonly(%struct.super_block* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %13
  %18 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %19 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %26 = load i32, i32* @FLUSH_ALL, align 4
  %27 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %25, i32 %26)
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call i32 @journal_join(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %17
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %33)
  %35 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %32, i32 %34, i32 1)
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %36)
  %38 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %7, i32 %37)
  %39 = load i32, i32* @FLUSH_ALL, align 4
  %40 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %7, i32 %39)
  br label %41

41:                                               ; preds = %31, %17
  br label %42

42:                                               ; preds = %41, %13, %3
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %42
  %46 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %47 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = call i32 @memset(%struct.reiserfs_transaction_handle* %7, i32 0, i32 4)
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = call i32 @journal_join_abort(%struct.reiserfs_transaction_handle* %7, %struct.super_block* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %56)
  %58 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %55, i32 %57, i32 1)
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %59)
  %61 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %7, i32 %60)
  %62 = load i32, i32* @FLUSH_ALL, align 4
  %63 = call i32 @do_journal_end(%struct.reiserfs_transaction_handle* %7, i32 %62)
  br label %64

64:                                               ; preds = %54, %49
  br label %65

65:                                               ; preds = %64, %45, %42
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = call i32 @reiserfs_write_unlock(%struct.super_block* %66)
  %68 = load %struct.super_block*, %struct.super_block** %5, align 8
  %69 = call i32 @reiserfs_cancel_old_flush(%struct.super_block* %68)
  %70 = load %struct.super_block*, %struct.super_block** %5, align 8
  %71 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %70)
  %72 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %71, i32 0, i32 0
  %73 = call i32 @cancel_delayed_work_sync(i32* %72)
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = call i32 @free_journal_ram(%struct.super_block* %74)
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = call i32 @reiserfs_write_lock(%struct.super_block* %76)
  ret i32 0
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @do_journal_end(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @journal_join(%struct.reiserfs_transaction_handle*, %struct.super_block*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i32 @memset(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @journal_join_abort(%struct.reiserfs_transaction_handle*, %struct.super_block*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

declare dso_local i32 @reiserfs_cancel_old_flush(%struct.super_block*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @free_journal_ram(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
