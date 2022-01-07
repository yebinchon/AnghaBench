; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_nat_send_or_cont.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_xmit.c_ip_vs_nat_send_or_cont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_vs_conn = type { i32, i64, i64, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NF_STOLEN = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NFCT = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.ip_vs_conn*, i32)* @ip_vs_nat_send_or_cont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_nat_send_or_cont(i32 %0, %struct.sk_buff* %1, %struct.ip_vs_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_vs_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.ip_vs_conn* %2, %struct.ip_vs_conn** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @NF_STOLEN, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %14 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IP_VS_CONN_F_NFCT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @likely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @ip_vs_notrack(%struct.sk_buff* %24)
  br label %30

26:                                               ; preds = %4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %29 = call i32 @ip_vs_update_conntrack(%struct.sk_buff* %27, %struct.ip_vs_conn* %28, i32 1)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %35 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %38 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %43 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %46 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %45, i32 0, i32 5
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 4
  %49 = call i32 @ip_vs_addr_equal(i32 %44, i32* %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %41, %33, %30
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = call i32 @ip_vs_drop_early_demux_sk(%struct.sk_buff* %52)
  br label %54

54:                                               ; preds = %51, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @skb_forward_csum(%struct.sk_buff* %58)
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %62 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %7, align 8
  %63 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @dst_output, align 4
  %73 = call i32 @NF_HOOK(i32 %60, i32 %61, i32 %66, i32* null, %struct.sk_buff* %67, i32* null, i32 %71, i32 %72)
  br label %76

74:                                               ; preds = %54
  %75 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %57
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ip_vs_notrack(%struct.sk_buff*) #1

declare dso_local i32 @ip_vs_update_conntrack(%struct.sk_buff*, %struct.ip_vs_conn*, i32) #1

declare dso_local i32 @ip_vs_addr_equal(i32, i32*, i32*) #1

declare dso_local i32 @ip_vs_drop_early_demux_sk(%struct.sk_buff*) #1

declare dso_local i32 @skb_forward_csum(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, i32, i32*, %struct.sk_buff*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
