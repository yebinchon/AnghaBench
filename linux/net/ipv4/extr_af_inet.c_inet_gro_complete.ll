; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_gro_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_gro_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i64 }
%struct.iphdr = type { i32, i32, i32 }
%struct.net_offload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@inet_offloads = common dso_local global i32* null, align 8
@tcp4_gro_complete = common dso_local global i32 0, align 4
@udp4_gro_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_gro_complete(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca %struct.net_offload*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 %12, %14
  %16 = call i32 @htons(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = inttoptr i64 %22 to %struct.iphdr*
  store %struct.iphdr* %23, %struct.iphdr** %6, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @ENOSYS, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load i32, i32* @ETH_P_IP, align 4
  %36 = call i32 @cpu_to_be16(i32 %35)
  %37 = call i32 @skb_set_inner_protocol(%struct.sk_buff* %34, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @skb_set_inner_network_header(%struct.sk_buff* %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %2
  %42 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 2
  %44 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %45 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @csum_replace2(i32* %43, i32 %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %51 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = call i32 (...) @rcu_read_lock()
  %53 = load i32*, i32** @inet_offloads, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.net_offload* @rcu_dereference(i32 %57)
  store %struct.net_offload* %58, %struct.net_offload** %7, align 8
  %59 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %60 = icmp ne %struct.net_offload* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %41
  %62 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %63 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %61, %41
  %69 = phi i1 [ true, %41 ], [ %67, %61 ]
  %70 = zext i1 %69 to i32
  %71 = call i64 @WARN_ON(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %87

74:                                               ; preds = %68
  %75 = load %struct.net_offload*, %struct.net_offload** %7, align 8
  %76 = getelementptr inbounds %struct.net_offload, %struct.net_offload* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @tcp4_gro_complete, align 4
  %80 = load i32, i32* @udp4_gro_complete, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 12
  %85 = trunc i64 %84 to i32
  %86 = call i32 @INDIRECT_CALL_2(i32 %78, i32 %79, i32 %80, %struct.sk_buff* %81, i32 %85)
  store i32 %86, i32* %9, align 4
  br label %87

87:                                               ; preds = %74, %73
  %88 = call i32 (...) @rcu_read_unlock()
  %89 = load i32, i32* %9, align 4
  ret i32 %89
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_set_inner_protocol(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_set_inner_network_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @csum_replace2(i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_offload* @rcu_dereference(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INDIRECT_CALL_2(i32, i32, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
