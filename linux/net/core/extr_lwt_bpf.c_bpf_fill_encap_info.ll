; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_fill_encap_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_fill_encap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lwtunnel_state = type { i32 }
%struct.bpf_lwt = type { i32, i32, i32 }

@LWT_BPF_IN = common dso_local global i32 0, align 4
@LWT_BPF_OUT = common dso_local global i32 0, align 4
@LWT_BPF_XMIT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.lwtunnel_state*)* @bpf_fill_encap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_encap_info(%struct.sk_buff* %0, %struct.lwtunnel_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lwtunnel_state*, align 8
  %6 = alloca %struct.bpf_lwt*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.lwtunnel_state* %1, %struct.lwtunnel_state** %5, align 8
  %7 = load %struct.lwtunnel_state*, %struct.lwtunnel_state** %5, align 8
  %8 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state* %7)
  store %struct.bpf_lwt* %8, %struct.bpf_lwt** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @LWT_BPF_IN, align 4
  %11 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %12 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %11, i32 0, i32 2
  %13 = call i64 @bpf_fill_lwt_prog(%struct.sk_buff* %9, i32 %10, i32* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load i32, i32* @LWT_BPF_OUT, align 4
  %18 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %18, i32 0, i32 1
  %20 = call i64 @bpf_fill_lwt_prog(%struct.sk_buff* %16, i32 %17, i32* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @LWT_BPF_XMIT, align 4
  %25 = load %struct.bpf_lwt*, %struct.bpf_lwt** %6, align 8
  %26 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %25, i32 0, i32 0
  %27 = call i64 @bpf_fill_lwt_prog(%struct.sk_buff* %23, i32 %24, i32* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %15, %2
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(%struct.lwtunnel_state*) #1

declare dso_local i64 @bpf_fill_lwt_prog(%struct.sk_buff*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
