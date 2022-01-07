; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_xfrm4_transport_gso_segment.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_esp4_offload.c_xfrm4_transport_gso_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sk_buff* (%struct.sk_buff*, i32)* }
%struct.xfrm_offload = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@inet_offloads = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.xfrm_state*, %struct.sk_buff*, i32)* @xfrm4_transport_gso_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xfrm4_transport_gso_segment(%struct.xfrm_state* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_offload*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.xfrm_offload*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sk_buff* @ERR_PTR(i32 %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff* %13)
  store %struct.xfrm_offload* %14, %struct.xfrm_offload** %9, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load i32*, i32** @inet_offloads, align 8
  %26 = load %struct.xfrm_offload*, %struct.xfrm_offload** %9, align 8
  %27 = getelementptr inbounds %struct.xfrm_offload, %struct.xfrm_offload* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.net_offload* @rcu_dereference(i32 %30)
  store %struct.net_offload* %31, %struct.net_offload** %7, align 8
  %32 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %33 = icmp ne %struct.net_offload* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %36 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.sk_buff* (%struct.sk_buff*, i32)*, %struct.sk_buff* (%struct.sk_buff*, i32)** %37, align 8
  %39 = icmp ne %struct.sk_buff* (%struct.sk_buff*, i32)* %38, null
  br label %40

40:                                               ; preds = %34, %3
  %41 = phi i1 [ false, %3 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i64 @likely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %47 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.sk_buff* (%struct.sk_buff*, i32)*, %struct.sk_buff* (%struct.sk_buff*, i32)** %48, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.sk_buff* %49(%struct.sk_buff* %50, i32 %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %8, align 8
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %54
}

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local %struct.xfrm_offload* @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.net_offload* @rcu_dereference(i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
