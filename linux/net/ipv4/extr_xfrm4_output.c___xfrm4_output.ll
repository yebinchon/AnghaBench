; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_output.c___xfrm4_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_xfrm4_output.c___xfrm4_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.xfrm_state_afinfo = type { i32 (%struct.sock.0*, %struct.sk_buff.1*)* }
%struct.sock.0 = type opaque
%struct.sk_buff.1 = type opaque
%struct.TYPE_5__ = type { %struct.xfrm_state* }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IPSKB_REROUTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @__xfrm4_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm4_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_state*, align 8
  %8 = alloca %struct.xfrm_state_afinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %11 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %12, align 8
  store %struct.xfrm_state* %13, %struct.xfrm_state** %7, align 8
  %14 = load i32, i32* @EAFNOSUPPORT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %7, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32 %20)
  store %struct.xfrm_state_afinfo* %21, %struct.xfrm_state_afinfo** %8, align 8
  %22 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %8, align 8
  %23 = call i64 @likely(%struct.xfrm_state_afinfo* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %8, align 8
  %27 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %26, i32 0, i32 0
  %28 = load i32 (%struct.sock.0*, %struct.sk_buff.1*)*, i32 (%struct.sock.0*, %struct.sk_buff.1*)** %27, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = bitcast %struct.sock* %29 to %struct.sock.0*
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = bitcast %struct.sk_buff* %31 to %struct.sk_buff.1*
  %33 = call i32 %28(%struct.sock.0* %30, %struct.sk_buff.1* %32)
  store i32 %33, i32* %9, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 @kfree_skb(%struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %34, %25
  %38 = call i32 (...) @rcu_read_unlock()
  %39 = load i32, i32* %9, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32) #1

declare dso_local i64 @likely(%struct.xfrm_state_afinfo*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
