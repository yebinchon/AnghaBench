; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_udp_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_offload.c_udp_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64 }
%struct.udphdr = type { i64, i32, i32, i32 }
%struct.sock = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.sock*, %struct.sk_buff*, i32)*, i64 }
%struct.TYPE_4__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@udp6_lib_lookup_skb = common dso_local global i32 0, align 4
@udp4_lib_lookup_skb = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@SKB_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@SKB_GSO_TUNNEL_REMCSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_gro_complete(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = call i32 @htons(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = inttoptr i64 %23 to %struct.udphdr*
  store %struct.udphdr* %24, %struct.udphdr** %8, align 8
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %29 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @udp6_lib_lookup_skb, align 4
  %33 = load i32, i32* @udp4_lib_lookup_skb, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %36 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %39 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.sock* @INDIRECT_CALL_INET(i32 %31, i32 %32, i32 %33, %struct.sk_buff* %34, i32 %37, i32 %40)
  store %struct.sock* %41, %struct.sock** %10, align 8
  %42 = load %struct.sock*, %struct.sock** %10, align 8
  %43 = icmp ne %struct.sock* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %3
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %45)
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @udp_gro_complete_segment(%struct.sk_buff* %51)
  store i32 %52, i32* %9, align 4
  br label %90

53:                                               ; preds = %44, %3
  %54 = load %struct.sock*, %struct.sock** %10, align 8
  %55 = icmp ne %struct.sock* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %53
  %57 = load %struct.sock*, %struct.sock** %10, align 8
  %58 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %57)
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.sock*, %struct.sk_buff*, i32)*, i32 (%struct.sock*, %struct.sk_buff*, i32)** %59, align 8
  %61 = icmp ne i32 (%struct.sock*, %struct.sk_buff*, i32)* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %56
  %63 = load %struct.udphdr*, %struct.udphdr** %8, align 8
  %64 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @SKB_GSO_UDP_TUNNEL_CSUM, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @SKB_GSO_UDP_TUNNEL, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %73)
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.sock*, %struct.sock** %10, align 8
  %79 = call %struct.TYPE_3__* @udp_sk(%struct.sock* %78)
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32 (%struct.sock*, %struct.sk_buff*, i32)*, i32 (%struct.sock*, %struct.sk_buff*, i32)** %80, align 8
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 24
  %87 = trunc i64 %86 to i32
  %88 = call i32 %81(%struct.sock* %82, %struct.sk_buff* %83, i32 %87)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %71, %56, %53
  br label %90

90:                                               ; preds = %89, %50
  %91 = call i32 (...) @rcu_read_unlock()
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32, i32* @SKB_GSO_TUNNEL_REMCSUM, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %96, %90
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @INDIRECT_CALL_INET(i32, i32, i32, %struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @udp_gro_complete_segment(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
