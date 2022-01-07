; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i64, i32, %struct.nilfs_transaction_info* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@TRACE_NILFS2_TRANSACTION_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @nilfs_transaction_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_transaction_unlock(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.nilfs_transaction_info*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  store %struct.nilfs_transaction_info* %7, %struct.nilfs_transaction_info** %3, align 8
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %4, align 8
  %11 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %12 = icmp eq %struct.nilfs_transaction_info* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %15 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %18 = icmp ne i64 %16, %17
  br label %19

19:                                               ; preds = %13, %1
  %20 = phi i1 [ true, %1 ], [ %18, %13 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %24 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %30 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %29, i32 0, i32 0
  %31 = call i32 @up_write(i32* %30)
  %32 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %33 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %32, i32 0, i32 3
  %34 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.nilfs_transaction_info* %34, %struct.nilfs_transaction_info** %36, align 8
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %39 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %40 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %43 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TRACE_NILFS2_TRANSACTION_UNLOCK, align 4
  %46 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %37, %struct.nilfs_transaction_info* %38, i64 %41, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @trace_nilfs2_transaction_transition(%struct.super_block*, %struct.nilfs_transaction_info*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
