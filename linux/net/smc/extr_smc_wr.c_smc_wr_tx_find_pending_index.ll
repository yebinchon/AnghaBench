; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_find_pending_index.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_wr.c_smc_wr_tx_find_pending_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_link = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smc_link*, i64)* @smc_wr_tx_find_pending_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_wr_tx_find_pending_index(%struct.smc_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smc_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.smc_link* %0, %struct.smc_link** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %10 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %7
  %14 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %15 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %6, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %6, align 8
  br label %7

30:                                               ; preds = %7
  %31 = load %struct.smc_link*, %struct.smc_link** %4, align 8
  %32 = getelementptr inbounds %struct.smc_link, %struct.smc_link* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
