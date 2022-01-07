; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_find_upcall_portid.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport.c_ovs_vport_find_upcall_portid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vport_portids = type { i32, i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ovs_vport_find_upcall_portid(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vport_portids*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.vport*, %struct.vport** %4, align 8
  %10 = getelementptr inbounds %struct.vport, %struct.vport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vport_portids* @rcu_dereference(i32 %11)
  store %struct.vport_portids* %12, %struct.vport_portids** %6, align 8
  %13 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %14 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %19 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %46

25:                                               ; preds = %17, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i64 @skb_get_hash(%struct.sk_buff* %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %30 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %34 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @reciprocal_divide(i64 %32, i32 %35)
  %37 = mul nsw i32 %31, %36
  %38 = sext i32 %37 to i64
  %39 = sub i64 %28, %38
  store i64 %39, i64* %7, align 8
  %40 = load %struct.vport_portids*, %struct.vport_portids** %6, align 8
  %41 = getelementptr inbounds %struct.vport_portids, %struct.vport_portids* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %25, %24
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local %struct.vport_portids* @rcu_dereference(i32) #1

declare dso_local i64 @skb_get_hash(%struct.sk_buff*) #1

declare dso_local i32 @reciprocal_divide(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
