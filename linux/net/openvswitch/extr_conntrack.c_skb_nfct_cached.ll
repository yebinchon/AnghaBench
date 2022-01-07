; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_skb_nfct_cached.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_skb_nfct_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sw_flow_key = type { i32 }
%struct.ovs_conntrack_info = type { i64, i64, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32, i32 }
%struct.nf_conn_help = type { i32 }
%struct.nf_conn_timeout = type { i32 }

@NF_CT_EXT_HELPER = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*)* @skb_nfct_cached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skb_nfct_cached(%struct.net* %0, %struct.sw_flow_key* %1, %struct.ovs_conntrack_info* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_conntrack_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn_help*, align 8
  %14 = alloca %struct.nf_conn_timeout*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_conntrack_info* %2, %struct.ovs_conntrack_info** %8, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %9, align 8
  store i32 1, i32* %12, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %16 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %15, i32* %10)
  store %struct.nf_conn* %16, %struct.nf_conn** %11, align 8
  %17 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %18 = icmp ne %struct.nf_conn* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load %struct.net*, %struct.net** %6, align 8
  %21 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %22 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call %struct.nf_conn* @ovs_ct_executed(%struct.net* %20, %struct.sw_flow_key* %21, %struct.ovs_conntrack_info* %22, %struct.sk_buff* %23, i32* %12)
  store %struct.nf_conn* %24, %struct.nf_conn** %11, align 8
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %27 = icmp ne %struct.nf_conn* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %29, i32* %10)
  br label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %117

32:                                               ; preds = %28
  %33 = load %struct.net*, %struct.net** %6, align 8
  %34 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %35 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %34, i32 0, i32 1
  %36 = call i32 @read_pnet(i32* %35)
  %37 = call i32 @net_eq(%struct.net* %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %117

40:                                               ; preds = %32
  %41 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %42 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %45 = call i32 @nf_ct_zone(%struct.nf_conn* %44)
  %46 = call i32 @nf_ct_zone_equal_any(i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %117

49:                                               ; preds = %40
  %50 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %51 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %56 = load i32, i32* @NF_CT_EXT_HELPER, align 4
  %57 = call %struct.nf_conn_help* @nf_ct_ext_find(%struct.nf_conn* %55, i32 %56)
  store %struct.nf_conn_help* %57, %struct.nf_conn_help** %13, align 8
  %58 = load %struct.nf_conn_help*, %struct.nf_conn_help** %13, align 8
  %59 = icmp ne %struct.nf_conn_help* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  %61 = load %struct.nf_conn_help*, %struct.nf_conn_help** %13, align 8
  %62 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @rcu_access_pointer(i32 %63)
  %65 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %66 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %117

70:                                               ; preds = %60, %54
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %73 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %71
  %77 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %78 = call %struct.nf_conn_timeout* @nf_ct_timeout_find(%struct.nf_conn* %77)
  store %struct.nf_conn_timeout* %78, %struct.nf_conn_timeout** %14, align 8
  %79 = load %struct.nf_conn_timeout*, %struct.nf_conn_timeout** %14, align 8
  %80 = icmp ne %struct.nf_conn_timeout* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %83 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.nf_conn_timeout*, %struct.nf_conn_timeout** %14, align 8
  %86 = getelementptr inbounds %struct.nf_conn_timeout, %struct.nf_conn_timeout* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @rcu_dereference(i32 %87)
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81, %76
  store i32 0, i32* %5, align 4
  br label %117

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.ovs_conntrack_info*, %struct.ovs_conntrack_info** %8, align 8
  %94 = getelementptr inbounds %struct.ovs_conntrack_info, %struct.ovs_conntrack_info* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = call i64 @CTINFO2DIR(i32 %98)
  %100 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %115

102:                                              ; preds = %97
  %103 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %104 = call i64 @nf_ct_is_confirmed(%struct.nf_conn* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %108 = call i32 @nf_ct_delete(%struct.nf_conn* %107, i32 0, i32 0)
  br label %109

109:                                              ; preds = %106, %102
  %110 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %111 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %110, i32 0, i32 0
  %112 = call i32 @nf_conntrack_put(i32* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = call i32 @nf_ct_set(%struct.sk_buff* %113, i32* null, i32 0)
  store i32 0, i32* %5, align 4
  br label %117

115:                                              ; preds = %97, %92
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %109, %90, %69, %48, %39, %31
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn* @ovs_ct_executed(%struct.net*, %struct.sw_flow_key*, %struct.ovs_conntrack_info*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @read_pnet(i32*) #1

declare dso_local i32 @nf_ct_zone_equal_any(i32, i32) #1

declare dso_local i32 @nf_ct_zone(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn_help* @nf_ct_ext_find(%struct.nf_conn*, i32) #1

declare dso_local i64 @rcu_access_pointer(i32) #1

declare dso_local %struct.nf_conn_timeout* @nf_ct_timeout_find(%struct.nf_conn*) #1

declare dso_local i64 @rcu_dereference(i32) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i64 @nf_ct_is_confirmed(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_delete(%struct.nf_conn*, i32, i32) #1

declare dso_local i32 @nf_conntrack_put(i32*) #1

declare dso_local i32 @nf_ct_set(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
