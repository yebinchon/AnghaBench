; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_update_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c___ovs_ct_update_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow_key = type { i64, %struct.TYPE_22__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.nf_conntrack_zone = type { i32 }
%struct.nf_conn = type { %struct.TYPE_15__*, %struct.nf_conn* }
%struct.TYPE_15__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_13__, %struct.TYPE_20__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@IPPROTO_ICMP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i64 0, align 8
@NEXTHDR_ICMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sw_flow_key*, i32, %struct.nf_conntrack_zone*, %struct.nf_conn*)* @__ovs_ct_update_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ovs_ct_update_key(%struct.sw_flow_key* %0, i32 %1, %struct.nf_conntrack_zone* %2, %struct.nf_conn* %3) #0 {
  %5 = alloca %struct.sw_flow_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nf_conntrack_zone*, align 8
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.sw_flow_key* %0, %struct.sw_flow_key** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nf_conntrack_zone* %2, %struct.nf_conntrack_zone** %7, align 8
  store %struct.nf_conn* %3, %struct.nf_conn** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %12 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nf_conntrack_zone*, %struct.nf_conntrack_zone** %7, align 8
  %14 = getelementptr inbounds %struct.nf_conntrack_zone, %struct.nf_conntrack_zone* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %17 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %19 = call i32 @ovs_ct_get_mark(%struct.nf_conn* %18)
  %20 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %21 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %24 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %25 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = call i32 @ovs_ct_get_labels(%struct.nf_conn* %23, i32* %26)
  %28 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %29 = icmp ne %struct.nf_conn* %28, null
  br i1 %29, label %30, label %123

30:                                               ; preds = %4
  %31 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %32 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %31, i32 0, i32 1
  %33 = load %struct.nf_conn*, %struct.nf_conn** %32, align 8
  %34 = icmp ne %struct.nf_conn* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %37 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %36, i32 0, i32 1
  %38 = load %struct.nf_conn*, %struct.nf_conn** %37, align 8
  store %struct.nf_conn* %38, %struct.nf_conn** %8, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %41 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %45, %struct.nf_conntrack_tuple** %9, align 8
  %46 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %47 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @ETH_P_IP, align 4
  %51 = call i64 @htons(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %39
  %54 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %55 = call i64 @nf_ct_l3num(%struct.nf_conn* %54)
  %56 = load i64, i64* @NFPROTO_IPV4, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %53
  %59 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %60 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %65 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %69 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %74 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i32 %72, i32* %76, align 8
  %77 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %78 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %79 = load i32, i32* @IPPROTO_ICMP, align 4
  %80 = call i32 @__ovs_ct_update_key_orig_tp(%struct.sw_flow_key* %77, %struct.nf_conntrack_tuple* %78, i32 %79)
  br label %126

81:                                               ; preds = %53, %39
  %82 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %83 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ETH_P_IPV6, align 4
  %87 = call i64 @htons(i32 %86)
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %121

89:                                               ; preds = %81
  %90 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %91 = call i32 @sw_flow_key_is_nd(%struct.sw_flow_key* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %121, label %93

93:                                               ; preds = %89
  %94 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %95 = call i64 @nf_ct_l3num(%struct.nf_conn* %94)
  %96 = load i64, i64* @NFPROTO_IPV6, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %100 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %105 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  %108 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %109 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %114 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 8
  %117 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %118 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %9, align 8
  %119 = load i32, i32* @NEXTHDR_ICMP, align 4
  %120 = call i32 @__ovs_ct_update_key_orig_tp(%struct.sw_flow_key* %117, %struct.nf_conntrack_tuple* %118, i32 %119)
  br label %126

121:                                              ; preds = %93, %89, %81
  br label %122

122:                                              ; preds = %121
  br label %123

123:                                              ; preds = %122, %4
  %124 = load %struct.sw_flow_key*, %struct.sw_flow_key** %5, align 8
  %125 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %124, i32 0, i32 0
  store i64 0, i64* %125, align 8
  br label %126

126:                                              ; preds = %123, %98, %58
  ret void
}

declare dso_local i32 @ovs_ct_get_mark(%struct.nf_conn*) #1

declare dso_local i32 @ovs_ct_get_labels(%struct.nf_conn*, i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @nf_ct_l3num(%struct.nf_conn*) #1

declare dso_local i32 @__ovs_ct_update_key_orig_tp(%struct.sw_flow_key*, %struct.nf_conntrack_tuple*, i32) #1

declare dso_local i32 @sw_flow_key_is_nd(%struct.sw_flow_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
