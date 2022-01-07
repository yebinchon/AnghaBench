; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_construct_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_construct_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64 }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_construct_segment(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.the_nilfs*, align 8
  %5 = alloca %struct.nilfs_sc_info*, align 8
  %6 = alloca %struct.nilfs_transaction_info*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load %struct.the_nilfs*, %struct.the_nilfs** %9, align 8
  store %struct.the_nilfs* %10, %struct.the_nilfs** %4, align 8
  %11 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %12 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %11, i32 0, i32 0
  %13 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %12, align 8
  store %struct.nilfs_sc_info* %13, %struct.nilfs_sc_info** %5, align 8
  %14 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %5, align 8
  %15 = icmp ne %struct.nilfs_sc_info* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EROFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %21, align 8
  store %struct.nilfs_transaction_info* %22, %struct.nilfs_transaction_info** %6, align 8
  %23 = icmp ne %struct.nilfs_transaction_info* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %6, align 8
  %26 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NILFS_TI_MAGIC, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ false, %19 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %5, align 8
  %35 = call i32 @nilfs_segctor_sync(%struct.nilfs_sc_info* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %30, %16
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nilfs_segctor_sync(%struct.nilfs_sc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
