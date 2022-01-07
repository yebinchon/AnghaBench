; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, i32)* }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@inet6_offloads = common dso_local global %struct.net_offload** null, align 8
@inet_offloads = common dso_local global %struct.net_offload** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @fou_gro_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fou_gro_complete(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_offload*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_offload**, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.TYPE_5__* @fou_from_sock(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @ENOSYS, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.net_offload**, %struct.net_offload*** @inet6_offloads, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load %struct.net_offload**, %struct.net_offload*** @inet_offloads, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.net_offload** [ %24, %23 ], [ %26, %25 ]
  store %struct.net_offload** %28, %struct.net_offload*** %10, align 8
  %29 = load %struct.net_offload**, %struct.net_offload*** %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.net_offload*, %struct.net_offload** %29, i64 %30
  %32 = load %struct.net_offload*, %struct.net_offload** %31, align 8
  %33 = call %struct.net_offload* @rcu_dereference(%struct.net_offload* %32)
  store %struct.net_offload* %33, %struct.net_offload** %7, align 8
  %34 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %35 = icmp ne %struct.net_offload* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %38 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %39, align 8
  %41 = icmp ne i32 (%struct.sk_buff*, i32)* %40, null
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %27
  %44 = phi i1 [ true, %27 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %60

49:                                               ; preds = %43
  %50 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %51 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 %53(%struct.sk_buff* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @skb_set_inner_mac_header(%struct.sk_buff* %57, i32 %58)
  br label %60

60:                                               ; preds = %49, %48
  %61 = call i32 (...) @rcu_read_unlock()
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_5__* @fou_from_sock(%struct.sock*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local %struct.net_offload* @rcu_dereference(%struct.net_offload*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @skb_set_inner_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
