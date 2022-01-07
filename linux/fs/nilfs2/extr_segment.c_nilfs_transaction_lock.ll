; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_segment.c_nilfs_transaction_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nilfs_transaction_info* }
%struct.nilfs_transaction_info = type { i32, i64, i32, %struct.nilfs_transaction_info* }
%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32, %struct.nilfs_sc_info* }
%struct.nilfs_sc_info = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NILFS_TI_WRITER = common dso_local global i32 0, align 4
@NILFS_TI_MAGIC = common dso_local global i32 0, align 4
@TRACE_NILFS2_TRANSACTION_TRYLOCK = common dso_local global i32 0, align 4
@NILFS_SC_PRIOR_FLUSH = common dso_local global i32 0, align 4
@NILFS_TI_GC = common dso_local global i32 0, align 4
@TRACE_NILFS2_TRANSACTION_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.nilfs_transaction_info*, i32)* @nilfs_transaction_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_transaction_lock(%struct.super_block* %0, %struct.nilfs_transaction_info* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.nilfs_transaction_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nilfs_transaction_info*, align 8
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca %struct.nilfs_sc_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.nilfs_transaction_info* %1, %struct.nilfs_transaction_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %11, align 8
  store %struct.nilfs_transaction_info* %12, %struct.nilfs_transaction_info** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.the_nilfs*, %struct.the_nilfs** %14, align 8
  store %struct.the_nilfs* %15, %struct.the_nilfs** %8, align 8
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %17 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %16, i32 0, i32 1
  %18 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %17, align 8
  store %struct.nilfs_sc_info* %18, %struct.nilfs_sc_info** %9, align 8
  %19 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %7, align 8
  %20 = call i32 @WARN_ON(%struct.nilfs_transaction_info* %19)
  %21 = load i32, i32* @NILFS_TI_WRITER, align 4
  %22 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %23 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %25 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %7, align 8
  %27 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %28 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %27, i32 0, i32 3
  store %struct.nilfs_transaction_info* %26, %struct.nilfs_transaction_info** %28, align 8
  %29 = load i32, i32* @NILFS_TI_MAGIC, align 4
  %30 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %31 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.nilfs_transaction_info* %32, %struct.nilfs_transaction_info** %34, align 8
  br label %35

35:                                               ; preds = %55, %3
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %38 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %39 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %42 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TRACE_NILFS2_TRANSACTION_TRYLOCK, align 4
  %45 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %36, %struct.nilfs_transaction_info* %37, i64 %40, i32 %43, i32 %44)
  %46 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %47 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %46, i32 0, i32 0
  %48 = call i32 @down_write(i32* %47)
  %49 = load i32, i32* @NILFS_SC_PRIOR_FLUSH, align 4
  %50 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %51 = getelementptr inbounds %struct.nilfs_sc_info, %struct.nilfs_sc_info* %50, i32 0, i32 0
  %52 = call i32 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %35
  br label %62

55:                                               ; preds = %35
  %56 = load %struct.nilfs_sc_info*, %struct.nilfs_sc_info** %9, align 8
  %57 = call i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info* %56)
  %58 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %59 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %58, i32 0, i32 0
  %60 = call i32 @up_write(i32* %59)
  %61 = call i32 (...) @cond_resched()
  br label %35

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i32, i32* @NILFS_TI_GC, align 4
  %67 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %68 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %62
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %74 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %75 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.nilfs_transaction_info*, %struct.nilfs_transaction_info** %5, align 8
  %78 = getelementptr inbounds %struct.nilfs_transaction_info, %struct.nilfs_transaction_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TRACE_NILFS2_TRANSACTION_LOCK, align 4
  %81 = call i32 @trace_nilfs2_transaction_transition(%struct.super_block* %72, %struct.nilfs_transaction_info* %73, i64 %76, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @WARN_ON(%struct.nilfs_transaction_info*) #1

declare dso_local i32 @trace_nilfs2_transaction_transition(%struct.super_block*, %struct.nilfs_transaction_info*, i64, i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nilfs_segctor_do_immediate_flush(%struct.nilfs_sc_info*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
