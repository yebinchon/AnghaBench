; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nft_trace_have_verdict_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nft_trace_have_verdict_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_traceinfo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_traceinfo*)* @nft_trace_have_verdict_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_trace_have_verdict_chain(%struct.nft_traceinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nft_traceinfo*, align 8
  store %struct.nft_traceinfo* %0, %struct.nft_traceinfo** %3, align 8
  %4 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %3, align 8
  %5 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %1, %1
  br label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

9:                                                ; preds = %7
  %10 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %3, align 8
  %11 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 130, label %15
    i32 131, label %15
  ]

15:                                               ; preds = %9, %9
  br label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

17:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16, %8
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
