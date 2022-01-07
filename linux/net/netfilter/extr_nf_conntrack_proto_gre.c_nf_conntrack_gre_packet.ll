; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_conntrack_gre_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_proto_gre.c_nf_conntrack_gre_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_hook_state = type { i64 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@GRE_CT_REPLIED = common dso_local global i64 0, align 8
@GRE_CT_UNREPLIED = common dso_local global i64 0, align 8
@IPS_SEEN_REPLY = common dso_local global i32 0, align 4
@IPS_ASSURED_BIT = common dso_local global i32 0, align 4
@IPCT_ASSURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_conntrack_gre_packet(%struct.nf_conn* %0, %struct.sk_buff* %1, i32 %2, i32 %3, %struct.nf_hook_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conn*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_hook_state*, align 8
  %12 = alloca i32*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nf_hook_state* %4, %struct.nf_hook_state** %11, align 8
  %13 = load %struct.nf_hook_state*, %struct.nf_hook_state** %11, align 8
  %14 = getelementptr inbounds %struct.nf_hook_state, %struct.nf_hook_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NFPROTO_IPV4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @NF_ACCEPT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %90

21:                                               ; preds = %5
  %22 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %23 = call i32 @nf_ct_is_confirmed(%struct.nf_conn* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %27 = call i32* @nf_ct_timeout_lookup(%struct.nf_conn* %26)
  store i32* %27, i32** %12, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %32 = call i32 @nf_ct_net(%struct.nf_conn* %31)
  %33 = call i32* @gre_get_timeouts(i32 %32)
  store i32* %33, i32** %12, align 8
  br label %34

34:                                               ; preds = %30, %25
  %35 = load i32*, i32** %12, align 8
  %36 = load i64, i64* @GRE_CT_REPLIED, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %40 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i64, i64* @GRE_CT_UNREPLIED, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %48 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %34, %21
  %52 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %53 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IPS_SEEN_REPLY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %51
  %59 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %63 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %59, i32 %60, %struct.sk_buff* %61, i32 %66)
  %68 = load i32, i32* @IPS_ASSURED_BIT, align 4
  %69 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %70 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %69, i32 0, i32 0
  %71 = call i32 @test_and_set_bit(i32 %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %58
  %74 = load i32, i32* @IPCT_ASSURED, align 4
  %75 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %76 = call i32 @nf_conntrack_event_cache(i32 %74, %struct.nf_conn* %75)
  br label %77

77:                                               ; preds = %73, %58
  br label %88

78:                                               ; preds = %51
  %79 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = load %struct.nf_conn*, %struct.nf_conn** %7, align 8
  %83 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @nf_ct_refresh_acct(%struct.nf_conn* %79, i32 %80, %struct.sk_buff* %81, i32 %86)
  br label %88

88:                                               ; preds = %78, %77
  %89 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %88, %18
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32* @nf_ct_timeout_lookup(%struct.nf_conn*) #1

declare dso_local i32* @gre_get_timeouts(i32) #1

declare dso_local i32 @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_refresh_acct(%struct.nf_conn*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
