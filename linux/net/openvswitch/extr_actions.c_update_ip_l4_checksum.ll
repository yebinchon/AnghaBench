; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_update_ip_l4_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_update_ip_l4_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.iphdr = type { i32, i64 }
%struct.udphdr = type { i64 }
%struct.TYPE_2__ = type { i64 }

@IP_OFFSET = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@CSUM_MANGLED_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.iphdr*, i32, i32)* @update_ip_l4_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ip_l4_checksum(%struct.sk_buff* %0, %struct.iphdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.udphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.iphdr* %1, %struct.iphdr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @skb_transport_offset(%struct.sk_buff* %14)
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IP_OFFSET, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %92

25:                                               ; preds = %4
  %26 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %27 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPPROTO_TCP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = icmp uge i64 %33, 4
  %35 = zext i1 %34 to i32
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @inet_proto_csum_replace4(i64* %41, %struct.sk_buff* %42, i32 %43, i32 %44, i32 1)
  br label %46

46:                                               ; preds = %38, %31
  br label %92

47:                                               ; preds = %25
  %48 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %49 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPPROTO_UDP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, 8
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = call %struct.udphdr* @udp_hdr(%struct.sk_buff* %61)
  store %struct.udphdr* %62, %struct.udphdr** %10, align 8
  %63 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %64 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67, %60
  %74 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %75 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %74, i32 0, i32 0
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @inet_proto_csum_replace4(i64* %75, %struct.sk_buff* %76, i32 %77, i32 %78, i32 1)
  %80 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %81 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = load i64, i64* @CSUM_MANGLED_0, align 8
  %86 = load %struct.udphdr*, %struct.udphdr** %10, align 8
  %87 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %73
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %53
  br label %91

91:                                               ; preds = %90, %47
  br label %92

92:                                               ; preds = %24, %91, %46
  ret void
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @inet_proto_csum_replace4(i64*, %struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @tcp_hdr(%struct.sk_buff*) #1

declare dso_local %struct.udphdr* @udp_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
