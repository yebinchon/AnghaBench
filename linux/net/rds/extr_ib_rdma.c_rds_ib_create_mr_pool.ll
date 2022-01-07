; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_create_mr_pool.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_create_mr_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr_pool = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.rds_ib_device = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rds_ib_mr_pool_flush_worker = common dso_local global i32 0, align 4
@RDS_IB_MR_1M_POOL = common dso_local global i32 0, align 4
@RDS_MR_1M_MSG_SIZE = common dso_local global i32 0, align 4
@RDS_MR_8K_MSG_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_ib_mr_pool* @rds_ib_create_mr_pool(%struct.rds_ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.rds_ib_mr_pool*, align 8
  %4 = alloca %struct.rds_ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rds_ib_mr_pool*, align 8
  store %struct.rds_ib_device* %0, %struct.rds_ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.rds_ib_mr_pool* @kzalloc(i32 60, i32 %7)
  store %struct.rds_ib_mr_pool* %8, %struct.rds_ib_mr_pool** %6, align 8
  %9 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %10 = icmp ne %struct.rds_ib_mr_pool* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.rds_ib_mr_pool* @ERR_PTR(i32 %13)
  store %struct.rds_ib_mr_pool* %14, %struct.rds_ib_mr_pool** %3, align 8
  br label %101

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %18 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %20 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %19, i32 0, i32 12
  %21 = call i32 @init_llist_head(i32* %20)
  %22 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %23 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %22, i32 0, i32 11
  %24 = call i32 @init_llist_head(i32* %23)
  %25 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %26 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %25, i32 0, i32 10
  %27 = call i32 @init_llist_head(i32* %26)
  %28 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %29 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %28, i32 0, i32 9
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %32 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %31, i32 0, i32 8
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %35 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %34, i32 0, i32 7
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %38 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %37, i32 0, i32 6
  %39 = load i32, i32* @rds_ib_mr_pool_flush_worker, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RDS_IB_MR_1M_POOL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %15
  %45 = load i32, i32* @RDS_MR_1M_MSG_SIZE, align 4
  %46 = add nsw i32 %45, 1
  %47 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %48 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %51 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %54 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %66

55:                                               ; preds = %15
  %56 = load i32, i32* @RDS_MR_8K_MSG_SIZE, align 4
  %57 = add nsw i32 %56, 1
  %58 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %59 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %62 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %65 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %55, %44
  %67 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %68 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %71 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %69, %73
  %75 = sdiv i32 %74, 4
  %76 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %77 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %79 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %82 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* @PAGE_SHIFT, align 4
  %85 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %86 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %85, i32 0, i32 5
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %89 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %90, 3
  %92 = sdiv i32 %91, 4
  %93 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %94 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.rds_ib_device*, %struct.rds_ib_device** %4, align 8
  %96 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %99 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  store %struct.rds_ib_mr_pool* %100, %struct.rds_ib_mr_pool** %3, align 8
  br label %101

101:                                              ; preds = %66, %11
  %102 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %3, align 8
  ret %struct.rds_ib_mr_pool* %102
}

declare dso_local %struct.rds_ib_mr_pool* @kzalloc(i32, i32) #1

declare dso_local %struct.rds_ib_mr_pool* @ERR_PTR(i32) #1

declare dso_local i32 @init_llist_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
