; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_fddi.c_fddi_type_trans.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_fddi.c_fddi_type_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device*, i64 }
%struct.net_device = type { i32, i32, i32 }
%struct.fddihdr = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@FDDI_K_8022_HLEN = common dso_local global i64 0, align 8
@ETH_P_802_2 = common dso_local global i32 0, align 4
@FDDI_K_SNAP_HLEN = common dso_local global i64 0, align 8
@FDDI_K_ALEN = common dso_local global i32 0, align 4
@PACKET_BROADCAST = common dso_local global i32 0, align 4
@PACKET_MULTICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fddi_type_trans(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fddihdr*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.fddihdr*
  store %struct.fddihdr* %10, %struct.fddihdr** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  store %struct.net_device* %11, %struct.net_device** %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @skb_reset_mac_header(%struct.sk_buff* %14)
  %16 = load %struct.fddihdr*, %struct.fddihdr** %5, align 8
  %17 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 224
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load i64, i64* @FDDI_K_8022_HLEN, align 8
  %25 = sub nsw i64 %24, 3
  %26 = call i32 @skb_pull(%struct.sk_buff* %23, i64 %25)
  %27 = load i32, i32* @ETH_P_802_2, align 4
  %28 = call i32 @htons(i32 %27)
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load i64, i64* @FDDI_K_SNAP_HLEN, align 8
  %32 = call i32 @skb_pull(%struct.sk_buff* %30, i64 %31)
  %33 = load %struct.fddihdr*, %struct.fddihdr** %5, align 8
  %34 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %22
  %39 = load %struct.fddihdr*, %struct.fddihdr** %5, align 8
  %40 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %38
  %46 = load %struct.fddihdr*, %struct.fddihdr** %5, align 8
  %47 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FDDI_K_ALEN, align 4
  %53 = call i64 @memcmp(i32* %48, i32 %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i32, i32* @PACKET_BROADCAST, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %45
  %60 = load i32, i32* @PACKET_MULTICAST, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  br label %87

64:                                               ; preds = %38
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @IFF_PROMISC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load %struct.fddihdr*, %struct.fddihdr** %5, align 8
  %73 = getelementptr inbounds %struct.fddihdr, %struct.fddihdr* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @FDDI_K_ALEN, align 4
  %79 = call i64 @memcmp(i32* %74, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @PACKET_OTHERHOST, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %71
  br label %86

86:                                               ; preds = %85, %64
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
