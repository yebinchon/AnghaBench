; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_ct_synproxy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_dump_ct_synproxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_conn_synproxy = type { i32, i32, i32 }
%struct.nlattr = type { i32 }

@CTA_SYNPROXY = common dso_local global i32 0, align 4
@CTA_SYNPROXY_ISN = common dso_local global i32 0, align 4
@CTA_SYNPROXY_ITS = common dso_local global i32 0, align 4
@CTA_SYNPROXY_TSOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*)* @ctnetlink_dump_ct_synproxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_dump_ct_synproxy(%struct.sk_buff* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conn_synproxy*, align 8
  %7 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %9 = call %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn* %8)
  store %struct.nf_conn_synproxy* %9, %struct.nf_conn_synproxy** %6, align 8
  %10 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %11 = icmp ne %struct.nf_conn_synproxy* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @CTA_SYNPROXY, align 4
  %16 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %14, i32 %15)
  store %struct.nlattr* %16, %struct.nlattr** %7, align 8
  %17 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %52

20:                                               ; preds = %13
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @CTA_SYNPROXY_ISN, align 4
  %23 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %24 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = call i64 @nla_put_be32(%struct.sk_buff* %21, i32 %22, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @CTA_SYNPROXY_ITS, align 4
  %32 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %33 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @htonl(i32 %34)
  %36 = call i64 @nla_put_be32(%struct.sk_buff* %30, i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @CTA_SYNPROXY_TSOFF, align 4
  %41 = load %struct.nf_conn_synproxy*, %struct.nf_conn_synproxy** %6, align 8
  %42 = getelementptr inbounds %struct.nf_conn_synproxy, %struct.nf_conn_synproxy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htonl(i32 %43)
  %45 = call i64 @nla_put_be32(%struct.sk_buff* %39, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29, %20
  br label %52

48:                                               ; preds = %38
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %51 = call i32 @nla_nest_end(%struct.sk_buff* %49, %struct.nlattr* %50)
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %47, %19
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %48, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nf_conn_synproxy* @nfct_synproxy(%struct.nf_conn*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
