; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_udp.c_nf_conntrack_udp_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_udp.c_nf_conntrack_udp_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPS_SEEN_REPLY_BIT = common dso_local global i32 0, align 4
@UDP_CT_UNREPLIED = common dso_local global i64 0, align 8
@UDP_CT_REPLIED = common dso_local global i64 0, align 8
@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@IPCT_ASSURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_udp_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.nf_hook_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_hook_state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nf_hook_state* %4, %struct.nf_hook_state** %11, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %17 = call i64 @udp_error(%struct.sk_buff* %14, i32 %15, %struct.nf_hook_state* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @NF_ACCEPT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %99

22:                                               ; preds = %5
  %23 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %24 = call i32* @nf_ct_timeout_lookup(%struct.nf_conn* %23)
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %29 = call i32 @nf_ct_net(%struct.nf_conn* %28)
  %30 = call i32* @udp_get_timeouts(i32 %29)
  store i32* %30, i32** %12, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %33 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @HZ, align 4
  %37 = mul nsw i32 2, %36
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @jiffies, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  br label %45

45:                                               ; preds = %35, %31
  %46 = load i32, i32* @IPS_SEEN_REPLY_BIT, align 4
  %47 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 0
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %88

51:                                               ; preds = %45
  %52 = load i32*, i32** %12, align 8
  %53 = load i64, i64* @UDP_CT_UNREPLIED, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* @jiffies, align 8
  %58 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %59 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @time_after(i64 %57, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %51
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* @UDP_CT_REPLIED, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %13, align 8
  br label %71

71:                                               ; preds = %65, %51
  %72 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %72, i32 %73, %struct.sk_buff* %74, i32 %76)
  %78 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %79 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %80 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %79, i32 0, i32 0
  %81 = call i32 @test_and_set_bit(i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* @IPCT_ASSURED, align 4
  %85 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %86 = call i32 @nf_conntrack_event_cache(i32 %84, %struct.nf_conn* %85)
  br label %87

87:                                               ; preds = %83, %71
  br label %97

88:                                               ; preds = %45
  %89 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i64, i64* @UDP_CT_UNREPLIED, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %89, i32 %90, %struct.sk_buff* %91, i32 %95)
  br label %97

97:                                               ; preds = %88, %87
  %98 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %19
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i64 @udp_error(%struct.sk_buff*, i32, %struct.nf_hook_state*) #1

declare dso_local i32* @nf_ct_timeout_lookup(%struct.nf_conn*) #1

declare dso_local i32* @udp_get_timeouts(i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
