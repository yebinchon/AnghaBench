; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_refill_stock.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memcontrol.c_refill_stock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.memcg_stock_pcp = type { i32, %struct.mem_cgroup* }

@memcg_stock = common dso_local global i32 0, align 4
@MEMCG_CHARGE_BATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @refill_stock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_stock(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.memcg_stock_pcp*, align 8
  %6 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @local_irq_save(i64 %7)
  %9 = call %struct.memcg_stock_pcp* @this_cpu_ptr(i32* @memcg_stock)
  store %struct.memcg_stock_pcp* %9, %struct.memcg_stock_pcp** %5, align 8
  %10 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %11 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %10, i32 0, i32 1
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %11, align 8
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %14 = icmp ne %struct.mem_cgroup* %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %17 = call i32 @drain_stock(%struct.memcg_stock_pcp* %16)
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %19 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %20 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %19, i32 0, i32 1
  store %struct.mem_cgroup* %18, %struct.mem_cgroup** %20, align 8
  br label %21

21:                                               ; preds = %15, %2
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %24 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %28 = getelementptr inbounds %struct.memcg_stock_pcp, %struct.memcg_stock_pcp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @MEMCG_CHARGE_BATCH, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load %struct.memcg_stock_pcp*, %struct.memcg_stock_pcp** %5, align 8
  %35 = call i32 @drain_stock(%struct.memcg_stock_pcp* %34)
  br label %36

36:                                               ; preds = %33, %21
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @local_irq_restore(i64 %37)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.memcg_stock_pcp* @this_cpu_ptr(i32*) #1

declare dso_local i32 @drain_stock(%struct.memcg_stock_pcp*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
