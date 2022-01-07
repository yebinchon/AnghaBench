; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_free_mr.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_rdma.c_rds_ib_free_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_ib_mr = type { i32, %struct.rds_ib_device*, %struct.rds_ib_mr_pool* }
%struct.rds_ib_device = type { i64 }
%struct.rds_ib_mr_pool = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"RDS/IB: free_mr nents %u\0A\00", align 1
@rds_ib_mr_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_ib_free_mr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_ib_mr*, align 8
  %6 = alloca %struct.rds_ib_mr_pool*, align 8
  %7 = alloca %struct.rds_ib_device*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.rds_ib_mr*
  store %struct.rds_ib_mr* %9, %struct.rds_ib_mr** %5, align 8
  %10 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %11 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %10, i32 0, i32 2
  %12 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %11, align 8
  store %struct.rds_ib_mr_pool* %12, %struct.rds_ib_mr_pool** %6, align 8
  %13 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %14 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %13, i32 0, i32 1
  %15 = load %struct.rds_ib_device*, %struct.rds_ib_device** %14, align 8
  store %struct.rds_ib_device* %15, %struct.rds_ib_device** %7, align 8
  %16 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %17 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rdsdebug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %21 = getelementptr inbounds %struct.rds_ib_device, %struct.rds_ib_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %26 = call i32 @rds_ib_free_frmr_list(%struct.rds_ib_mr* %25)
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %29 = call i32 @rds_ib_free_fmr_list(%struct.rds_ib_mr* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.rds_ib_mr*, %struct.rds_ib_mr** %5, align 8
  %32 = getelementptr inbounds %struct.rds_ib_mr, %struct.rds_ib_mr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %35 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %34, i32 0, i32 4
  %36 = call i32 @atomic_add(i32 %33, i32* %35)
  %37 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %38 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %37, i32 0, i32 3
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %41 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %40, i32 0, i32 4
  %42 = call i32 @atomic_read(i32* %41)
  %43 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %44 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %30
  %48 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %49 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %48, i32 0, i32 3
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %52 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 5
  %55 = icmp sge i32 %50, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47, %30
  %57 = load i32, i32* @rds_ib_mr_wq, align 4
  %58 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %59 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %58, i32 0, i32 2
  %60 = call i32 @queue_delayed_work(i32 %57, i32* %59, i32 10)
  br label %61

61:                                               ; preds = %56, %47
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %61
  %65 = call i32 (...) @in_interrupt()
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @likely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %73 = call i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool* %72, i32 0, i32* null)
  br label %79

74:                                               ; preds = %64
  %75 = load i32, i32* @rds_ib_mr_wq, align 4
  %76 = load %struct.rds_ib_mr_pool*, %struct.rds_ib_mr_pool** %6, align 8
  %77 = getelementptr inbounds %struct.rds_ib_mr_pool, %struct.rds_ib_mr_pool* %76, i32 0, i32 2
  %78 = call i32 @queue_delayed_work(i32 %75, i32* %77, i32 10)
  br label %79

79:                                               ; preds = %74, %71
  br label %80

80:                                               ; preds = %79, %61
  %81 = load %struct.rds_ib_device*, %struct.rds_ib_device** %7, align 8
  %82 = call i32 @rds_ib_dev_put(%struct.rds_ib_device* %81)
  ret void
}

declare dso_local i32 @rdsdebug(i8*, i32) #1

declare dso_local i32 @rds_ib_free_frmr_list(%struct.rds_ib_mr*) #1

declare dso_local i32 @rds_ib_free_fmr_list(%struct.rds_ib_mr*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @rds_ib_flush_mr_pool(%struct.rds_ib_mr_pool*, i32, i32*) #1

declare dso_local i32 @rds_ib_dev_put(%struct.rds_ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
