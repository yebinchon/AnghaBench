; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nf_trace_fill_rule_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_trace.c_nf_trace_fill_rule_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_traceinfo = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@NFT_TRACETYPE_RETURN = common dso_local global i64 0, align 8
@NFT_CONTINUE = common dso_local global i64 0, align 8
@NFTA_TRACE_RULE_HANDLE = common dso_local global i32 0, align 4
@NFTA_TRACE_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_traceinfo*)* @nf_trace_fill_rule_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_trace_fill_rule_info(%struct.sk_buff* %0, %struct.nft_traceinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_traceinfo*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_traceinfo* %1, %struct.nft_traceinfo** %5, align 8
  %6 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %7 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %13 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NFT_TRACETYPE_RETURN, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %19 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NFT_CONTINUE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %37

26:                                               ; preds = %17, %11
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @NFTA_TRACE_RULE_HANDLE, align 4
  %29 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %30 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = load i32, i32* @NFTA_TRACE_PAD, align 4
  %36 = call i32 @nla_put_be64(%struct.sk_buff* %27, i32 %28, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %26, %25, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
