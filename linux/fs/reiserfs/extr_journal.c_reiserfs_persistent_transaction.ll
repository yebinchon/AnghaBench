; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_persistent_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_persistent_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.reiserfs_transaction_handle* @reiserfs_persistent_transaction(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_transaction_handle*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call i64 @reiserfs_transaction_running(%struct.super_block* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %13, align 8
  store %struct.reiserfs_transaction_handle* %14, %struct.reiserfs_transaction_handle** %7, align 8
  %15 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %16 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %20 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 2
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  store %struct.reiserfs_transaction_handle* %25, %struct.reiserfs_transaction_handle** %3, align 8
  br label %49

26:                                               ; preds = %2
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = call %struct.reiserfs_transaction_handle* @kmalloc(i32 4, i32 %27)
  store %struct.reiserfs_transaction_handle* %28, %struct.reiserfs_transaction_handle** %7, align 8
  %29 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %30 = icmp ne %struct.reiserfs_transaction_handle* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %3, align 8
  br label %49

32:                                               ; preds = %26
  %33 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %33, %struct.super_block* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  %41 = call i32 @kfree(%struct.reiserfs_transaction_handle* %40)
  store %struct.reiserfs_transaction_handle* null, %struct.reiserfs_transaction_handle** %3, align 8
  br label %49

42:                                               ; preds = %32
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = call %struct.TYPE_4__* @SB_JOURNAL(%struct.super_block* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %7, align 8
  store %struct.reiserfs_transaction_handle* %48, %struct.reiserfs_transaction_handle** %3, align 8
  br label %49

49:                                               ; preds = %42, %39, %31, %11
  %50 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  ret %struct.reiserfs_transaction_handle* %50
}

declare dso_local i64 @reiserfs_transaction_running(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.reiserfs_transaction_handle* @kmalloc(i32, i32) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @kfree(%struct.reiserfs_transaction_handle*) #1

declare dso_local %struct.TYPE_4__* @SB_JOURNAL(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
