; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_call_ra_chain.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_input.c_ip_call_ra_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.ip_ra_chain = type { %struct.sock*, i32 }
%struct.sock = type { i64 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@IP_DEFRAG_CALL_RA_CHAIN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_call_ra_chain(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_ra_chain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.net* @dev_net(%struct.net_device* %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load %struct.net*, %struct.net** %8, align 8
  %21 = getelementptr inbounds %struct.net, %struct.net* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.ip_ra_chain* @rcu_dereference(i32 %23)
  store %struct.ip_ra_chain* %24, %struct.ip_ra_chain** %4, align 8
  br label %25

25:                                               ; preds = %84, %1
  %26 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %27 = icmp ne %struct.ip_ra_chain* %26, null
  br i1 %27, label %28, label %89

28:                                               ; preds = %25
  %29 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %30 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  store %struct.sock* %31, %struct.sock** %9, align 8
  %32 = load %struct.sock*, %struct.sock** %9, align 8
  %33 = icmp ne %struct.sock* %32, null
  br i1 %33, label %34, label %83

34:                                               ; preds = %28
  %35 = load %struct.sock*, %struct.sock** %9, align 8
  %36 = call %struct.TYPE_7__* @inet_sk(%struct.sock* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.sock*, %struct.sock** %9, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %46, %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %55)
  %57 = call i64 @ip_is_fragment(%struct.TYPE_6__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = load i32, i32* @IP_DEFRAG_CALL_RA_CHAIN, align 4
  %63 = call i64 @ip_defrag(%struct.net* %60, %struct.sk_buff* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %97

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %54
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = icmp ne %struct.sock* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %72 = load i32, i32* @GFP_ATOMIC, align 4
  %73 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %71, i32 %72)
  store %struct.sk_buff* %73, %struct.sk_buff** %10, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %6, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call i32 @raw_rcv(%struct.sock* %77, %struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %67
  %82 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %82, %struct.sock** %6, align 8
  br label %83

83:                                               ; preds = %81, %46, %34, %28
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.ip_ra_chain*, %struct.ip_ra_chain** %4, align 8
  %86 = getelementptr inbounds %struct.ip_ra_chain, %struct.ip_ra_chain* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call %struct.ip_ra_chain* @rcu_dereference(i32 %87)
  store %struct.ip_ra_chain* %88, %struct.ip_ra_chain** %4, align 8
  br label %25

89:                                               ; preds = %25
  %90 = load %struct.sock*, %struct.sock** %6, align 8
  %91 = icmp ne %struct.sock* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.sock*, %struct.sock** %6, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %95 = call i32 @raw_rcv(%struct.sock* %93, %struct.sk_buff* %94)
  store i32 1, i32* %2, align 4
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %92, %65
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip_ra_chain* @rcu_dereference(i32) #1

declare dso_local %struct.TYPE_7__* @inet_sk(%struct.sock*) #1

declare dso_local i64 @ip_is_fragment(%struct.TYPE_6__*) #1

declare dso_local i64 @ip_defrag(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @raw_rcv(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
