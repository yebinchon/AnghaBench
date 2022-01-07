; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_gro_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fou.c_fou_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_offload = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sock = type { i32 }
%struct.list_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }

@inet6_offloads = common dso_local global %struct.net_offload** null, align 8
@inet_offloads = common dso_local global %struct.net_offload** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, %struct.list_head*, %struct.sk_buff*)* @fou_gro_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @fou_gro_receive(%struct.sock* %0, %struct.list_head* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_offload**, align 8
  %9 = alloca %struct.net_offload*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.TYPE_5__* @fou_from_sock(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load %struct.net_offload**, %struct.net_offload*** @inet6_offloads, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load %struct.net_offload**, %struct.net_offload*** @inet_offloads, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi %struct.net_offload** [ %28, %27 ], [ %30, %29 ]
  store %struct.net_offload** %32, %struct.net_offload*** %8, align 8
  %33 = load %struct.net_offload**, %struct.net_offload*** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.net_offload*, %struct.net_offload** %33, i64 %34
  %36 = load %struct.net_offload*, %struct.net_offload** %35, align 8
  %37 = call %struct.net_offload* @rcu_dereference(%struct.net_offload* %36)
  store %struct.net_offload* %37, %struct.net_offload** %9, align 8
  %38 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %39 = icmp ne %struct.net_offload* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %42 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40, %31
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.net_offload*, %struct.net_offload** %9, align 8
  %49 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.list_head*, %struct.list_head** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.sk_buff* @call_gro_receive(i32 %51, %struct.list_head* %52, %struct.sk_buff* %53)
  store %struct.sk_buff* %54, %struct.sk_buff** %10, align 8
  br label %55

55:                                               ; preds = %47, %46
  %56 = call i32 (...) @rcu_read_unlock()
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %57
}

declare dso_local %struct.TYPE_5__* @fou_from_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_6__* @NAPI_GRO_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_offload* @rcu_dereference(%struct.net_offload*) #1

declare dso_local %struct.sk_buff* @call_gro_receive(i32, %struct.list_head*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
