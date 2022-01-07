; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_reiserfs_transaction_running.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_reiserfs.h_reiserfs_transaction_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.reiserfs_transaction_handle* }
%struct.reiserfs_transaction_handle = type { %struct.super_block* }
%struct.super_block = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @reiserfs_transaction_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_transaction_running(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %6, align 8
  store %struct.reiserfs_transaction_handle* %7, %struct.reiserfs_transaction_handle** %4, align 8
  %8 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %9 = icmp ne %struct.reiserfs_transaction_handle* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %12 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = icmp eq %struct.super_block* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %28

17:                                               ; preds = %10, %1
  %18 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %19 = icmp ne %struct.reiserfs_transaction_handle* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %22 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %21, i32 0, i32 0
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  %24 = icmp eq %struct.super_block* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %20, %17
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
