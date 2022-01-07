; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_chain_to_walk.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_chain_to_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32, i64 }
%struct.scatter_walk = type { i32, %struct.scatterlist* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scatterlist*, %struct.scatter_walk*)* @chain_to_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chain_to_walk(%struct.scatterlist* %0, %struct.scatter_walk* %1) #0 {
  %3 = alloca %struct.scatterlist*, align 8
  %4 = alloca %struct.scatter_walk*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %3, align 8
  store %struct.scatter_walk* %1, %struct.scatter_walk** %4, align 8
  %7 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %8 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %7, i32 0, i32 1
  %9 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %9, %struct.scatterlist** %5, align 8
  %10 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %11 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %18 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %19 = call i32 @sg_page(%struct.scatterlist* %18)
  %20 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 %22, %24
  %26 = load %struct.scatter_walk*, %struct.scatter_walk** %4, align 8
  %27 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sg_set_page(%struct.scatterlist* %17, i32 %19, i64 %25, i32 %28)
  %30 = load %struct.scatterlist*, %struct.scatterlist** %3, align 8
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = call i32 @sg_next(%struct.scatterlist* %31)
  %33 = call i32 @scatterwalk_crypto_chain(%struct.scatterlist* %30, i32 %32, i32 2)
  ret void
}

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i64, i32) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @scatterwalk_crypto_chain(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
