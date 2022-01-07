; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_cache_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_ib_recv.c_rds_ib_recv_cache_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.rds_ib_refill_cache = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RDS_IB_RECYCLE_BATCH_COUNT = common dso_local global %struct.list_head* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*, %struct.rds_ib_refill_cache*)* @rds_ib_recv_cache_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_ib_recv_cache_put(%struct.list_head* %0, %struct.rds_ib_refill_cache* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.rds_ib_refill_cache*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.rds_ib_refill_cache* %1, %struct.rds_ib_refill_cache** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %11 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.list_head* @__this_cpu_read(i32 %14)
  store %struct.list_head* %15, %struct.list_head** %7, align 8
  %16 = load %struct.list_head*, %struct.list_head** %7, align 8
  %17 = icmp ne %struct.list_head* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load %struct.list_head*, %struct.list_head** %3, align 8
  %20 = call i32 @INIT_LIST_HEAD(%struct.list_head* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = load %struct.list_head*, %struct.list_head** %7, align 8
  %24 = call i32 @list_add_tail(%struct.list_head* %22, %struct.list_head* %23)
  br label %25

25:                                               ; preds = %21, %18
  %26 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %27 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.list_head*, %struct.list_head** %3, align 8
  %32 = call i32 @__this_cpu_write(i32 %30, %struct.list_head* %31)
  %33 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %34 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__this_cpu_inc(i32 %37)
  %39 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %40 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.list_head* @__this_cpu_read(i32 %43)
  %45 = load %struct.list_head*, %struct.list_head** @RDS_IB_RECYCLE_BATCH_COUNT, align 8
  %46 = icmp ult %struct.list_head* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %25
  br label %80

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %64, %48
  %50 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %51 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %50, i32 0, i32 1
  %52 = call %struct.list_head* @xchg(i32* %51, i32* null)
  store %struct.list_head* %52, %struct.list_head** %6, align 8
  %53 = load %struct.list_head*, %struct.list_head** %6, align 8
  %54 = icmp ne %struct.list_head* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.list_head*, %struct.list_head** %6, align 8
  %57 = load %struct.list_head*, %struct.list_head** %7, align 8
  %58 = call i32 @list_splice_entire_tail(%struct.list_head* %56, %struct.list_head* %57)
  br label %59

59:                                               ; preds = %55, %49
  %60 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %61 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %60, i32 0, i32 1
  %62 = load %struct.list_head*, %struct.list_head** %7, align 8
  %63 = call %struct.list_head* @cmpxchg(i32* %61, i32* null, %struct.list_head* %62)
  store %struct.list_head* %63, %struct.list_head** %6, align 8
  br label %64

64:                                               ; preds = %59
  %65 = load %struct.list_head*, %struct.list_head** %6, align 8
  %66 = icmp ne %struct.list_head* %65, null
  br i1 %66, label %49, label %67

67:                                               ; preds = %64
  %68 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %69 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @__this_cpu_write(i32 %72, %struct.list_head* null)
  %74 = load %struct.rds_ib_refill_cache*, %struct.rds_ib_refill_cache** %4, align 8
  %75 = getelementptr inbounds %struct.rds_ib_refill_cache, %struct.rds_ib_refill_cache* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__this_cpu_write(i32 %78, %struct.list_head* null)
  br label %80

80:                                               ; preds = %67, %47
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @local_irq_restore(i64 %81)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.list_head* @__this_cpu_read(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.list_head*) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local %struct.list_head* @xchg(i32*, i32*) #1

declare dso_local i32 @list_splice_entire_tail(%struct.list_head*, %struct.list_head*) #1

declare dso_local %struct.list_head* @cmpxchg(i32*, i32*, %struct.list_head*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
