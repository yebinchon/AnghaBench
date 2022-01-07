; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.h_smc_wr_rx_post.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.h_smc_wr_rx_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*)* @smc_wr_rx_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_wr_rx_post(%struct.smc_link* %0) #0 {
  %2 = alloca %struct.smc_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.smc_link* %0, %struct.smc_link** %2, align 8
  %7 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %8 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %14 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @do_div(i64 %12, i32 %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %19 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %17, i64* %23, align 8
  %24 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %25 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.smc_link*, %struct.smc_link** %2, align 8
  %28 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = call i32 @ib_post_recv(i32 %26, %struct.TYPE_2__* %31, i32* null)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @ib_post_recv(i32, %struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
