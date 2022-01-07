; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_do_xdp_generic.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_do_xdp_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xdp_buff = type { i32 }

@XDP_PASS = common dso_local global i32 0, align 4
@XDP_DROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_xdp_generic(%struct.bpf_prog* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.xdp_buff, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_prog* %0, %struct.bpf_prog** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %10 = icmp ne %struct.bpf_prog* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %14 = call i32 @netif_receive_generic_xdp(%struct.sk_buff* %12, %struct.xdp_buff* %6, %struct.bpf_prog* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XDP_PASS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %35 [
    i32 129, label %20
    i32 128, label %31
  ]

20:                                               ; preds = %18
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %26 = call i32 @xdp_do_generic_redirect(i32 %23, %struct.sk_buff* %24, %struct.xdp_buff* %6, %struct.bpf_prog* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %40

30:                                               ; preds = %20
  br label %35

31:                                               ; preds = %18
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %34 = call i32 @generic_xdp_tx(%struct.sk_buff* %32, %struct.bpf_prog* %33)
  br label %35

35:                                               ; preds = %18, %31, %30
  %36 = load i32, i32* @XDP_DROP, align 4
  store i32 %36, i32* %3, align 4
  br label %44

37:                                               ; preds = %11
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* @XDP_PASS, align 4
  store i32 %39, i32* %3, align 4
  br label %44

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  %43 = load i32, i32* @XDP_DROP, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %38, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @netif_receive_generic_xdp(%struct.sk_buff*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @xdp_do_generic_redirect(i32, %struct.sk_buff*, %struct.xdp_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @generic_xdp_tx(%struct.sk_buff*, %struct.bpf_prog*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
