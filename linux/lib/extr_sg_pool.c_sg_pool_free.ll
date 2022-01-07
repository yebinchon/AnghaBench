; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sg_pool.c_sg_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_pool = type { i32 }
%struct.scatterlist = type { i32 }

@sg_pools = common dso_local global %struct.sg_pool* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, i32)* @sg_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_pool_free(%struct.scatterlist* %0, i32 %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sg_pool*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sg_pool*, %struct.sg_pool** @sg_pools, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @sg_pool_index(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.sg_pool, %struct.sg_pool* %6, i64 %9
  store %struct.sg_pool* %10, %struct.sg_pool** %5, align 8
  %11 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %12 = load %struct.sg_pool*, %struct.sg_pool** %5, align 8
  %13 = getelementptr inbounds %struct.sg_pool, %struct.sg_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mempool_free(%struct.scatterlist* %11, i32 %14)
  ret void
}

declare dso_local i32 @sg_pool_index(i32) #1

declare dso_local i32 @mempool_free(%struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
