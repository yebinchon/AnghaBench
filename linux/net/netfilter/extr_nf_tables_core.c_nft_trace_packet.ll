; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_core.c_nft_trace_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_core.c_nft_trace_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_traceinfo = type { %struct.nft_rule* }
%struct.nft_chain = type { i32 }
%struct.nft_rule = type { i32 }

@nft_trace_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_traceinfo*, %struct.nft_chain*, %struct.nft_rule*, i32)* @nft_trace_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_trace_packet(%struct.nft_traceinfo* %0, %struct.nft_chain* %1, %struct.nft_rule* %2, i32 %3) #0 {
  %5 = alloca %struct.nft_traceinfo*, align 8
  %6 = alloca %struct.nft_chain*, align 8
  %7 = alloca %struct.nft_rule*, align 8
  %8 = alloca i32, align 4
  store %struct.nft_traceinfo* %0, %struct.nft_traceinfo** %5, align 8
  store %struct.nft_chain* %1, %struct.nft_chain** %6, align 8
  store %struct.nft_rule* %2, %struct.nft_rule** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = call i64 @static_branch_unlikely(i32* @nft_trace_enabled)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load %struct.nft_rule*, %struct.nft_rule** %7, align 8
  %13 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %14 = getelementptr inbounds %struct.nft_traceinfo, %struct.nft_traceinfo* %13, i32 0, i32 0
  store %struct.nft_rule* %12, %struct.nft_rule** %14, align 8
  %15 = load %struct.nft_traceinfo*, %struct.nft_traceinfo** %5, align 8
  %16 = load %struct.nft_chain*, %struct.nft_chain** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @__nft_trace_packet(%struct.nft_traceinfo* %15, %struct.nft_chain* %16, i32 %17)
  br label %19

19:                                               ; preds = %11, %4
  ret void
}

declare dso_local i64 @static_branch_unlikely(i32*) #1

declare dso_local i32 @__nft_trace_packet(%struct.nft_traceinfo*, %struct.nft_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
