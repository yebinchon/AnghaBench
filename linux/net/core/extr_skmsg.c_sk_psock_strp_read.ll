; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_strp_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_psock_strp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sk_psock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog = type { i32 }

@__SK_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strparser*, %struct.sk_buff*)* @sk_psock_strp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sk_psock_strp_read(%struct.strparser* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.strparser*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_psock*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca i32, align 4
  store %struct.strparser* %0, %struct.strparser** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.strparser*, %struct.strparser** %3, align 8
  %9 = call %struct.sk_psock* @sk_psock_from_strp(%struct.strparser* %8)
  store %struct.sk_psock* %9, %struct.sk_psock** %5, align 8
  %10 = load i32, i32* @__SK_DROP, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %13 = getelementptr inbounds %struct.sk_psock, %struct.sk_psock* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bpf_prog* @READ_ONCE(i32 %15)
  store %struct.bpf_prog* %16, %struct.bpf_prog** %6, align 8
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %18 = call i64 @likely(%struct.bpf_prog* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_orphan(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @tcp_skb_bpf_redirect_clear(%struct.sk_buff* %23)
  %25 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @sk_psock_bpf_run(%struct.sk_psock* %25, %struct.bpf_prog* %26, %struct.sk_buff* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @tcp_skb_bpf_redirect_fetch(%struct.sk_buff* %30)
  %32 = call i32 @sk_psock_map_verd(i32 %29, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %20, %2
  %34 = call i32 (...) @rcu_read_unlock()
  %35 = load %struct.sk_psock*, %struct.sk_psock** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @sk_psock_verdict_apply(%struct.sk_psock* %35, %struct.sk_buff* %36, i32 %37)
  ret void
}

declare dso_local %struct.sk_psock* @sk_psock_from_strp(%struct.strparser*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i64 @likely(%struct.bpf_prog*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @tcp_skb_bpf_redirect_clear(%struct.sk_buff*) #1

declare dso_local i32 @sk_psock_bpf_run(%struct.sk_psock*, %struct.bpf_prog*, %struct.sk_buff*) #1

declare dso_local i32 @sk_psock_map_verd(i32, i32) #1

declare dso_local i32 @tcp_skb_bpf_redirect_fetch(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @sk_psock_verdict_apply(%struct.sk_psock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
