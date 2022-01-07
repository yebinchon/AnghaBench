; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_process_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_iv_ogm.c_batadv_iv_ogm_process_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_ogm_packet = type { i32, i32, i32 }
%struct.batadv_hard_iface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.batadv_orig_node = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.batadv_orig_ifinfo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BATADV_DIRECTLINK = common dso_local global i32 0, align 4
@BATADV_TQ_LOCAL_WINDOW_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.batadv_ogm_packet*, %struct.batadv_hard_iface*, %struct.batadv_orig_node*, i64)* @batadv_iv_ogm_process_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @batadv_iv_ogm_process_reply(%struct.batadv_ogm_packet* %0, %struct.batadv_hard_iface* %1, %struct.batadv_orig_node* %2, i64 %3) #0 {
  %5 = alloca %struct.batadv_ogm_packet*, align 8
  %6 = alloca %struct.batadv_hard_iface*, align 8
  %7 = alloca %struct.batadv_orig_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.batadv_orig_ifinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store %struct.batadv_ogm_packet* %0, %struct.batadv_ogm_packet** %5, align 8
  store %struct.batadv_hard_iface* %1, %struct.batadv_hard_iface** %6, align 8
  store %struct.batadv_orig_node* %2, %struct.batadv_orig_node** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %13 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BATADV_DIRECTLINK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  br label %73

19:                                               ; preds = %4
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %21 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %26 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @batadv_compare_eth(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  br label %73

31:                                               ; preds = %19
  %32 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %33 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %6, align 8
  %34 = call %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node* %32, %struct.batadv_hard_iface* %33)
  store %struct.batadv_orig_ifinfo* %34, %struct.batadv_orig_ifinfo** %9, align 8
  %35 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %9, align 8
  %36 = icmp ne %struct.batadv_orig_ifinfo* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %73

38:                                               ; preds = %31
  %39 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %40 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %43, 2
  store i64 %44, i64* %10, align 8
  %45 = load %struct.batadv_ogm_packet*, %struct.batadv_ogm_packet** %5, align 8
  %46 = getelementptr inbounds %struct.batadv_ogm_packet, %struct.batadv_ogm_packet* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @ntohl(i32 %47)
  %49 = load i64, i64* %10, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %9, align 8
  %52 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @batadv_set_bit(i32 %54, i64 %55)
  %57 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %9, align 8
  %58 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  store i32* %59, i32** %11, align 8
  %60 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %9, align 8
  %61 = getelementptr inbounds %struct.batadv_orig_ifinfo, %struct.batadv_orig_ifinfo* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BATADV_TQ_LOCAL_WINDOW_SIZE, align 4
  %65 = call i32 @bitmap_weight(i32 %63, i32 %64)
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %7, align 8
  %68 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  %71 = load %struct.batadv_orig_ifinfo*, %struct.batadv_orig_ifinfo** %9, align 8
  %72 = call i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo* %71)
  br label %73

73:                                               ; preds = %38, %37, %30, %18
  ret void
}

declare dso_local i32 @batadv_compare_eth(i32, i32) #1

declare dso_local %struct.batadv_orig_ifinfo* @batadv_orig_ifinfo_get(%struct.batadv_orig_node*, %struct.batadv_hard_iface*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @batadv_set_bit(i32, i64) #1

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @batadv_orig_ifinfo_put(%struct.batadv_orig_ifinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
