; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_chain_offload_priority.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_chain_offload_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_base_chain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@USHRT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_chain_offload_priority(%struct.nft_base_chain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nft_base_chain*, align 8
  store %struct.nft_base_chain* %0, %struct.nft_base_chain** %3, align 8
  %4 = load %struct.nft_base_chain*, %struct.nft_base_chain** %3, align 8
  %5 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.nft_base_chain*, %struct.nft_base_chain** %3, align 8
  %11 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USHRT_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %9, %1
  store i32 -1, i32* %2, align 4
  br label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
