; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_recv_client_ack.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_recv_client_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.synproxy_options = type { i32, i32 }
%struct.synproxy_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NF_SYNPROXY_OPT_MSS = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @synproxy_recv_client_ack(%struct.net* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, %struct.synproxy_options* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.synproxy_options*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.synproxy_net*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store %struct.synproxy_options* %3, %struct.synproxy_options** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = call %struct.synproxy_net* @synproxy_pernet(%struct.net* %14)
  store %struct.synproxy_net* %15, %struct.synproxy_net** %12, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i32 @ip_hdr(%struct.sk_buff* %16)
  %18 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %19 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohl(i32 %21)
  %23 = sub nsw i64 %22, 1
  %24 = call i32 @__cookie_v4_check(i32 %17, %struct.tcphdr* %18, i64 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load %struct.synproxy_net*, %struct.synproxy_net** %12, align 8
  %29 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @this_cpu_inc(i32 %32)
  store i32 0, i32* %6, align 4
  br label %65

34:                                               ; preds = %5
  %35 = load %struct.synproxy_net*, %struct.synproxy_net** %12, align 8
  %36 = getelementptr inbounds %struct.synproxy_net, %struct.synproxy_net* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @this_cpu_inc(i32 %39)
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.synproxy_options*, %struct.synproxy_options** %10, align 8
  %43 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @NF_SYNPROXY_OPT_MSS, align 4
  %45 = load %struct.synproxy_options*, %struct.synproxy_options** %10, align 8
  %46 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.synproxy_options*, %struct.synproxy_options** %10, align 8
  %50 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load %struct.synproxy_options*, %struct.synproxy_options** %10, align 8
  %57 = call i32 @synproxy_check_timestamp_cookie(%struct.synproxy_options* %56)
  br label %58

58:                                               ; preds = %55, %34
  %59 = load %struct.net*, %struct.net** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %62 = load %struct.synproxy_options*, %struct.synproxy_options** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @synproxy_send_server_syn(%struct.net* %59, %struct.sk_buff* %60, %struct.tcphdr* %61, %struct.synproxy_options* %62, i32 %63)
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %27
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.synproxy_net* @synproxy_pernet(%struct.net*) #1

declare dso_local i32 @__cookie_v4_check(i32, %struct.tcphdr*, i64) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @synproxy_check_timestamp_cookie(%struct.synproxy_options*) #1

declare dso_local i32 @synproxy_send_server_syn(%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.synproxy_options*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
