; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_iface_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_iface_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_ogm_packet = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_hard_iface*)* @batadv_iv_ogm_iface_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_iface_update_mac(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.batadv_ogm_packet*, align 8
  %4 = alloca i8*, align 8
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %5 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %6 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %10 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %37

16:                                               ; preds = %1
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.batadv_ogm_packet*
  store %struct.batadv_ogm_packet* %18, %struct.batadv_ogm_packet** %3, align 8
  %19 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %3, align 8
  %20 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %23 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ether_addr_copy(i32 %21, i32 %26)
  %28 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %3, align 8
  %29 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %32 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ether_addr_copy(i32 %30, i32 %35)
  br label %37

37:                                               ; preds = %16, %15
  %38 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %39 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
