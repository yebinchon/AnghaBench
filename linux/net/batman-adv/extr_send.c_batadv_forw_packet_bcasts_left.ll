; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_bcasts_left.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_send.c_batadv_forw_packet_bcasts_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_forw_packet = type { i32 }
%struct.batadv_hard_iface = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BATADV_NUM_BCASTS_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_forw_packet*, %struct.batadv_hard_iface*)* @batadv_forw_packet_bcasts_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_forw_packet_bcasts_left(%struct.batadv_forw_packet* %0, %struct.batadv_hard_iface* %1) #0 {
  %3 = alloca %struct.batadv_forw_packet*, align 8
  %4 = alloca %struct.batadv_hard_iface*, align 8
  %5 = alloca i32, align 4
  store %struct.batadv_forw_packet* %0, %struct.batadv_forw_packet** %3, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %4, align 8
  %6 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %7 = icmp ne %struct.batadv_hard_iface* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %4, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BATADV_NUM_BCASTS_MAX, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.batadv_forw_packet*, %struct.batadv_forw_packet** %3, align 8
  %16 = getelementptr inbounds %struct.batadv_forw_packet, %struct.batadv_forw_packet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_2__* @BATADV_SKB_CB(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %20, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local %struct.TYPE_2__* @BATADV_SKB_CB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
