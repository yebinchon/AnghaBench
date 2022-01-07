; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_bpf_run.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_bpf_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_psock = type { i32* }
%struct.bpf_prog = type { i32 }
%struct.sk_buff = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_psock*, %struct.bpf_prog*, %struct.sk_buff*)* @sk_psock_bpf_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_psock_bpf_run(%struct.sk_psock* %0, %struct.bpf_prog* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_psock*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_psock* %0, %struct.sk_psock** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.sk_psock*, %struct.sk_psock** %4, align 8
  %9 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = call i32 @bpf_compute_data_end_sk_skb(%struct.sk_buff* %13)
  %15 = call i32 (...) @preempt_disable()
  %16 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i32 @BPF_PROG_RUN(%struct.bpf_prog* %16, %struct.sk_buff* %17)
  store i32 %18, i32* %7, align 4
  %19 = call i32 (...) @preempt_enable()
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @bpf_compute_data_end_sk_skb(%struct.sk_buff*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @BPF_PROG_RUN(%struct.bpf_prog*, %struct.sk_buff*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
