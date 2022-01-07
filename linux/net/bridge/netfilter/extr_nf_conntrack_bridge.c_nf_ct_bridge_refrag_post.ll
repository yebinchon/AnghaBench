; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_refrag_post.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nf_conntrack_bridge.c_nf_ct_bridge_refrag_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.nf_bridge_frag_data = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.nf_bridge_frag_data*, %struct.sk_buff*)* @nf_ct_bridge_refrag_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_ct_bridge_refrag_post(%struct.net* %0, %struct.sock* %1, %struct.nf_bridge_frag_data* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.nf_bridge_frag_data*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.nf_bridge_frag_data* %2, %struct.nf_bridge_frag_data** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %12 = load %struct.nf_bridge_frag_data*, %struct.nf_bridge_frag_data** %8, align 8
  %13 = call i32 @nf_ct_bridge_frag_restore(%struct.sk_buff* %11, %struct.nf_bridge_frag_data* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %4
  %19 = load %struct.net*, %struct.net** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %7, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = call i32 @br_dev_queue_push_xmit(%struct.net* %19, %struct.sock* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @nf_ct_bridge_frag_restore(%struct.sk_buff*, %struct.nf_bridge_frag_data*) #1

declare dso_local i32 @br_dev_queue_push_xmit(%struct.net*, %struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
