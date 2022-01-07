; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c___xfrm6_output_state_finish.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_xfrm6_output.c___xfrm6_output_state_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.xfrm_state_afinfo = type { i32 (%struct.sock.0*, %struct.sk_buff.1*)* }
%struct.sock.0 = type opaque
%struct.sk_buff.1 = type opaque

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sock*, %struct.sk_buff*)* @__xfrm6_output_state_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfrm6_output_state_finish(%struct.xfrm_state* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.xfrm_state_afinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i32, i32* @EAFNOSUPPORT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.xfrm_state_afinfo* @xfrm_state_afinfo_get_rcu(i32 %15)
  store %struct.xfrm_state_afinfo* %16, %struct.xfrm_state_afinfo** %7, align 8
  %17 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %18 = call i64 @likely(%struct.xfrm_state_afinfo* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load %struct.xfrm_state_afinfo*, %struct.xfrm_state_afinfo** %7, align 8
  %22 = getelementptr inbounds %struct.xfrm_state_afinfo, %struct.xfrm_state_afinfo* %21, i32 0, i32 0
  %23 = load i32 (%struct.sock.0*, %struct.sk_buff.1*)*, i32 (%struct.sock.0*, %struct.sk_buff.1*)** %22, align 8
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = bitcast %struct.sock* %24 to %struct.sock.0*
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = bitcast %struct.sk_buff* %26 to %struct.sk_buff.1*
  %28 = call i32 %23(%struct.sock.0* %25, %struct.sk_buff.1* %27)
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

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
