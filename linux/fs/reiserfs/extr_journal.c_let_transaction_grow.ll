; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_let_transaction_grow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_let_transaction_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LIST_COMMIT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @let_transaction_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @let_transaction_grow(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_journal*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %8)
  store %struct.reiserfs_journal* %9, %struct.reiserfs_journal** %5, align 8
  %10 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %2, %62
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %14)
  store i32 %15, i32* %7, align 4
  %16 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %17, i32 %18)
  %20 = load i32, i32* @LIST_COMMIT_PENDING, align 4
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %20
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %45, %13
  %28 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %28, i32 0, i32 3
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %34 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %33, i32 0, i32 2
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32, %27
  %38 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %39 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %37, %32
  %44 = phi i1 [ false, %32 ], [ %42, %37 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = call i32 @queue_log_writer(%struct.super_block* %46)
  br label %27

48:                                               ; preds = %43
  %49 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %50 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %66

55:                                               ; preds = %48
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %66

62:                                               ; preds = %55
  %63 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %64 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %6, align 8
  br label %13

66:                                               ; preds = %61, %54
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @queue_log_writer(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
