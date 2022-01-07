; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_get_upcall_portids.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_get_upcall_portids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vport_portids = type { i32, i32* }

@OVS_DP_F_VPORT_PIDS = common dso_local global i32 0, align 4
@OVS_VPORT_ATTR_UPCALL_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovs_vport_get_upcall_portids(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vport_portids*, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.vport*, %struct.vport** %4, align 8
  %8 = getelementptr inbounds %struct.vport, %struct.vport* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.vport_portids* @rcu_dereference_ovsl(i32 %9)
  store %struct.vport_portids* %10, %struct.vport_portids** %6, align 8
  %11 = load %struct.vport*, %struct.vport** %4, align 8
  %12 = getelementptr inbounds %struct.vport, %struct.vport* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OVS_DP_F_VPORT_PIDS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load i32, i32* @OVS_VPORT_ATTR_UPCALL_PID, align 4
  %22 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %23 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %29 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = call i32 @nla_put(%struct.sk_buff* %20, i32 %21, i32 %27, i8* %31)
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @OVS_VPORT_ATTR_UPCALL_PID, align 4
  %36 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %37 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nla_put_u32(%struct.sk_buff* %34, i32 %35, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.vport_portids* @rcu_dereference_ovsl(i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i8*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
