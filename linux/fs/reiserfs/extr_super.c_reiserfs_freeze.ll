; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_freeze.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_reiserfs_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @reiserfs_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_freeze(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_transaction_handle, align 4
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call i32 @reiserfs_cancel_old_flush(%struct.super_block* %5)
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @reiserfs_write_lock(%struct.super_block* %7)
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = call i32 @sb_rdonly(%struct.super_block* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.super_block*, %struct.super_block** %2, align 8
  %14 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %3, %struct.super_block* %13, i32 1)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = call i32 @reiserfs_block_writes(%struct.reiserfs_transaction_handle* %3)
  br label %29

19:                                               ; preds = %12
  %20 = load %struct.super_block*, %struct.super_block** %2, align 8
  %21 = load %struct.super_block*, %struct.super_block** %2, align 8
  %22 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %21)
  %23 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %20, i32 %22, i32 1)
  %24 = load %struct.super_block*, %struct.super_block** %2, align 8
  %25 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %24)
  %26 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %3, i32 %25)
  %27 = call i32 @reiserfs_block_writes(%struct.reiserfs_transaction_handle* %3)
  %28 = call i32 @journal_end_sync(%struct.reiserfs_transaction_handle* %3)
  br label %29

29:                                               ; preds = %19, %17
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call i32 @reiserfs_write_unlock(%struct.super_block* %31)
  ret i32 0
}

declare dso_local i32 @reiserfs_cancel_old_flush(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_lock(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_block_writes(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @journal_end_sync(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
