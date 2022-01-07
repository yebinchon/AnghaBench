; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_iface_enable.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_bat_v_elp.c_batadv_v_elp_iface_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_hard_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.batadv_elp_packet = type { i32, i32 }

@batadv_v_elp_iface_enable.tvlv_padding = internal constant i64 4, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@BATADV_ELP_HLEN = common dso_local global i64 0, align 8
@BATADV_ELP = common dso_local global i32 0, align 4
@BATADV_COMPAT_VERSION = common dso_local global i32 0, align 4
@BATADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@BATADV_WARNING_DEFAULT = common dso_local global i32 0, align 4
@batadv_v_elp_periodic_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_v_elp_iface_enable(%struct.batadv_hard_iface* %0) #0 {
  %2 = alloca %struct.batadv_hard_iface*, align 8
  %3 = alloca %struct.batadv_elp_packet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.batadv_hard_iface* %0, %struct.batadv_hard_iface** %2, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* @ETH_HLEN, align 8
  %11 = load i64, i64* @NET_IP_ALIGN, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* @BATADV_ELP_HLEN, align 8
  %14 = add i64 %12, %13
  %15 = add i64 %14, 4
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @dev_alloc_skb(i64 %16)
  %18 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %19 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %17, i32* %20, align 4
  %21 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %22 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %89

27:                                               ; preds = %1
  %28 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %29 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* @ETH_HLEN, align 8
  %33 = load i64, i64* @NET_IP_ALIGN, align 8
  %34 = add i64 %32, %33
  %35 = call i32 @skb_reserve(i32 %31, i64 %34)
  %36 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %37 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @BATADV_ELP_HLEN, align 8
  %41 = add i64 %40, 4
  %42 = call i8* @skb_put_zero(i32 %39, i64 %41)
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = bitcast i8* %43 to %struct.batadv_elp_packet*
  store %struct.batadv_elp_packet* %44, %struct.batadv_elp_packet** %3, align 8
  %45 = load i32, i32* @BATADV_ELP, align 4
  %46 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %3, align 8
  %47 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @BATADV_COMPAT_VERSION, align 4
  %49 = load %struct.batadv_elp_packet*, %struct.batadv_elp_packet** %3, align 8
  %50 = getelementptr inbounds %struct.batadv_elp_packet, %struct.batadv_elp_packet* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = call i32 @get_random_bytes(i32* %5, i32 4)
  %52 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %53 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @atomic_set(i32* %54, i32 %55)
  %57 = load i32, i32* @BATADV_FULL_DUPLEX, align 4
  %58 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %59 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @BATADV_WARNING_DEFAULT, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %66 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %71 = call i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %27
  %74 = load i32, i32* @BATADV_FULL_DUPLEX, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %77 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, %75
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %73, %27
  %82 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %83 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* @batadv_v_elp_periodic_work, align 4
  %86 = call i32 @INIT_DELAYED_WORK(i32* %84, i32 %85)
  %87 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %2, align 8
  %88 = call i32 @batadv_v_elp_start_timer(%struct.batadv_hard_iface* %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %81, %26
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(i32, i64) #1

declare dso_local i8* @skb_put_zero(i32, i64) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @batadv_is_wifi_hardif(%struct.batadv_hard_iface*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @batadv_v_elp_start_timer(%struct.batadv_hard_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
