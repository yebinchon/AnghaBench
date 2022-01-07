; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_helper.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_helper = type { i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* }
%struct.nf_conn = type opaque
%struct.nf_conn_help = type { i32 }
%struct.nf_conn.0 = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IP_CT_RELATED_REPLY = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"proto header not found\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"helper invoked on non-IP family!\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@IPS_SEQ_ADJUST_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ovs_ct_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_ct_helper(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conntrack_helper*, align 8
  %7 = alloca %struct.nf_conn_help*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn.0*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call %struct.nf_conn.0* @nf_ct_get(%struct.sk_buff* %15, i32* %8)
  store %struct.nf_conn.0* %16, %struct.nf_conn.0** %10, align 8
  %17 = load %struct.nf_conn.0*, %struct.nf_conn.0** %10, align 8
  %18 = icmp ne %struct.nf_conn.0* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @IP_CT_RELATED_REPLY, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %19
  %26 = load %struct.nf_conn.0*, %struct.nf_conn.0** %10, align 8
  %27 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn.0* %26)
  store %struct.nf_conn_help* %27, %struct.nf_conn_help** %7, align 8
  %28 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %29 = icmp ne %struct.nf_conn_help* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %25
  %33 = load %struct.nf_conn_help*, %struct.nf_conn_help** %7, align 8
  %34 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.nf_conntrack_helper* @rcu_dereference(i32 %35)
  store %struct.nf_conntrack_helper* %36, %struct.nf_conntrack_helper** %6, align 8
  %37 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %38 = icmp ne %struct.nf_conntrack_helper* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %40, i32* %3, align 4
  br label %100

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  switch i32 %42, label %65 [
    i32 129, label %43
    i32 128, label %46
  ]

43:                                               ; preds = %41
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call i32 @ip_hdrlen(%struct.sk_buff* %44)
  store i32 %45, i32* %9, align 4
  br label %68

46:                                               ; preds = %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %12, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %51, i32 4, i32* %12, i32* %13)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @htons(i32 -8)
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %46
  %61 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %62, i32* %3, align 4
  br label %100

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %9, align 4
  br label %68

65:                                               ; preds = %41
  %66 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @NF_DROP, align 4
  store i32 %67, i32* %3, align 4
  br label %100

68:                                               ; preds = %63, %43
  %69 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %6, align 8
  %70 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %69, i32 0, i32 0
  %71 = load i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)*, i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)** %70, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.nf_conn.0*, %struct.nf_conn.0** %10, align 8
  %75 = bitcast %struct.nf_conn.0* %74 to %struct.nf_conn*
  %76 = load i32, i32* %8, align 4
  %77 = call i32 %71(%struct.sk_buff* %72, i32 %73, %struct.nf_conn* %75, i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @NF_ACCEPT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %68
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %3, align 4
  br label %100

83:                                               ; preds = %68
  %84 = load i32, i32* @IPS_SEQ_ADJUST_BIT, align 4
  %85 = load %struct.nf_conn.0*, %struct.nf_conn.0** %10, align 8
  %86 = getelementptr inbounds %struct.nf_conn.0, %struct.nf_conn.0* %85, i32 0, i32 0
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.nf_conn.0*, %struct.nf_conn.0** %10, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @nf_ct_seq_adjust(%struct.sk_buff* %90, %struct.nf_conn.0* %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @NF_DROP, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %89, %83
  %99 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %96, %81, %65, %60, %39, %30, %23
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.nf_conn.0* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn.0*) #1

declare dso_local %struct.nf_conntrack_helper* @rcu_dereference(i32) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i32*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nf_ct_seq_adjust(%struct.sk_buff*, %struct.nf_conn.0*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
