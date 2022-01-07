; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_abort.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i64, i64, i32, %struct.nilfs_transaction_info* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_MAGIC = common dso_local global i64 0, align 8
@TRACE_NILFS2_TRANSACTION_ABORT = common dso_local global i32 0, align 4
@NILFS_TI_DYNAMIC_ALLOC = common dso_local global i32 0, align 4
@nilfs_transaction_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nilfs_transaction_abort(%struct.super_block* %0) #0 {
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
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %29 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  %33 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %34 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %35 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %38 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TRACE_NILFS2_TRANSACTION_ABORT, align 4
  %41 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %32, %struct.nilfs_transaction_info* %33, i64 %36, i32 %39, i32 %40)
  br label %74

42:                                               ; preds = %19
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %4, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = call i32 @up_read(i32* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %48 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %49 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %52 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TRACE_NILFS2_TRANSACTION_ABORT, align 4
  %55 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %46, %struct.nilfs_transaction_info* %47, i64 %50, i32 %53, i32 %54)
  %56 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %57 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %56, i32 0, i32 3
  %58 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %57, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.nilfs_transaction_info* %58, %struct.nilfs_transaction_info** %60, align 8
  %61 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %62 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NILFS_TI_DYNAMIC_ALLOC, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %42
  %68 = load i32, i32* @nilfs_transaction_cachep, align 4
  %69 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %3, align 8
  %70 = call i32 @kmem_cache_free(i32 %68, %struct.nilfs_transaction_info* %69)
  br label %71

71:                                               ; preds = %67, %42
  %72 = load %struct.super_block*, %struct.super_block** %2, align 8
  %73 = call i32 @sb_end_intwrite(%struct.super_block* %72)
  br label %74

74:                                               ; preds = %71, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_nilfs2_transaction_transition(%struct.super_block*, %struct.nilfs_transaction_info*, i64, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.nilfs_transaction_info*) #1

declare dso_local i32 @sb_end_intwrite(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
