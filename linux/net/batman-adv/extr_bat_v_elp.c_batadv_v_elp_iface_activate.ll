; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_iface_activate.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_iface_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.batadv_elp_packet = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @batadv_v_elp_iface_activate(%struct.batadv_hard_iface* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_hard_iface*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca %struct.batadv_elp_packet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %7 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %8 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %15 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.batadv_elp_packet*
  store %struct.batadv_elp_packet* %21, %struct.batadv_elp_packet** %5, align 8
  %22 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %5, align 8
  %23 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %3, align 8
  %26 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ether_addr_copy(i32 %24, i32 %29)
  br label %31

31:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
