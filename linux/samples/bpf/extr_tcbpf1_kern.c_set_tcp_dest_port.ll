; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcbpf1_kern.c_set_tcp_dest_port.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcbpf1_kern.c_set_tcp_dest_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }

@TCP_DPORT_OFF = common dso_local global i32 0, align 4
@TCP_CSUM_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.__sk_buff*, i32)* @set_tcp_dest_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tcp_dest_port(%struct.__sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %7 = load i32, i32* @TCP_DPORT_OFF, align 4
  %8 = call i32 @load_half(%struct.__sk_buff* %6, i32 %7)
  %9 = call i32 @htons(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %11 = load i32, i32* @TCP_CSUM_OFF, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bpf_l4_csum_replace(%struct.__sk_buff* %10, i32 %11, i32 %12, i32 %13, i32 4)
  %15 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %16 = load i32, i32* @TCP_DPORT_OFF, align 4
  %17 = call i32 @bpf_skb_store_bytes(%struct.__sk_buff* %15, i32 %16, i32* %4, i32 4, i32 0)
  ret void
}

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @load_half(%struct.__sk_buff*, i32) #1

declare dso_local i32 @bpf_l4_csum_replace(%struct.__sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @bpf_skb_store_bytes(%struct.__sk_buff*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
