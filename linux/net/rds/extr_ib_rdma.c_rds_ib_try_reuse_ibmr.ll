; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_try_reuse_ibmr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_try_reuse_ibmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32 }
%struct.rds_ib_mr_pool = type { i64, i64, i32 }

@RDS_IB_MR_8K_POOL = common dso_local global i64 0, align 8
@s_ib_rdma_mr_8k_pool_depleted = common dso_local global i32 0, align 4
@s_ib_rdma_mr_1m_pool_depleted = common dso_local global i32 0, align 4
@s_ib_rdma_mr_8k_pool_wait = common dso_local global i32 0, align 4
@s_ib_rdma_mr_1m_pool_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_mr* @rds_ib_try_reuse_ibmr(%struct.rds_ib_mr_pool* %0) #0 {
  %2 = alloca %struct.rds_ib_mr*, align 8
  %3 = alloca %struct.rds_ib_mr_pool*, align 8
  %4 = alloca %struct.rds_ib_mr*, align 8
  %5 = alloca i32, align 4
  store %struct.rds_ib_mr_pool* %0, %struct.rds_ib_mr_pool** %3, align 8
  store %struct.rds_ib_mr* null, %struct.rds_ib_mr** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %1, %61
  %7 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %8 = call %struct.rds_ib_mr* @rds_ib_reuse_mr(%struct.rds_ib_mr_pool* %7)
  store %struct.rds_ib_mr* %8, %struct.rds_ib_mr** %4, align 8
  %9 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %4, align 8
  %10 = icmp ne %struct.rds_ib_mr* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %4, align 8
  store %struct.rds_ib_mr* %12, %struct.rds_ib_mr** %2, align 8
  br label %63

13:                                               ; preds = %6
  %14 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %15 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %14, i32 0, i32 2
  %16 = call i64 @atomic_inc_return(i32* %15)
  %17 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sle i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %62

22:                                               ; preds = %13
  %23 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %24 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %23, i32 0, i32 2
  %25 = call i32 @atomic_dec(i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %31 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RDS_IB_MR_8K_POOL, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @s_ib_rdma_mr_8k_pool_depleted, align 4
  %37 = call i32 @rds_ib_stats_inc(i32 %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @s_ib_rdma_mr_1m_pool_depleted, align 4
  %40 = call i32 @rds_ib_stats_inc(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %62

42:                                               ; preds = %22
  %43 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %44 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @RDS_IB_MR_8K_POOL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @s_ib_rdma_mr_8k_pool_wait, align 4
  %50 = call i32 @rds_ib_stats_inc(i32 %49)
  br label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @s_ib_rdma_mr_1m_pool_wait, align 4
  %53 = call i32 @rds_ib_stats_inc(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  %56 = call i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool* %55, i32 0, %struct.rds_ib_mr** %4)
  %57 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %4, align 8
  %58 = icmp ne %struct.rds_ib_mr* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %4, align 8
  store %struct.rds_ib_mr* %60, %struct.rds_ib_mr** %2, align 8
  br label %63

61:                                               ; preds = %54
  br label %6

62:                                               ; preds = %41, %21
  store %struct.rds_ib_mr* null, %struct.rds_ib_mr** %2, align 8
  br label %63

63:                                               ; preds = %62, %59, %11
  %64 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %2, align 8
  ret %struct.rds_ib_mr* %64
}

declare dso_local %struct.rds_ib_mr* @rds_ib_reuse_mr(%struct.rds_ib_mr_pool*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @rds_ib_stats_inc(i32) #1

declare dso_local i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool*, i32, %struct.rds_ib_mr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
