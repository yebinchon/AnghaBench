; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_init_labels.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_init_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i64 }
%struct.sw_flow_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ovs_key_ct_labels = type { i32* }
%struct.nf_conn_labels = type { i64 }

@ENOSPC = common dso_local global i32 0, align 4
@OVS_CT_LABELS_LEN_32 = common dso_local global i32 0, align 4
@IPCT_LABEL = common dso_local global i32 0, align 4
@OVS_CT_LABELS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nf_conn*, %struct.sw_flow_key*, %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels*)* @ovs_ct_init_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_ct_init_labels(%struct.nf_conn* %0, %struct.sw_flow_key* %1, %struct.ovs_key_ct_labels* %2, %struct.ovs_key_ct_labels* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca %struct.sw_flow_key*, align 8
  %8 = alloca %struct.ovs_key_ct_labels*, align 8
  %9 = alloca %struct.ovs_key_ct_labels*, align 8
  %10 = alloca %struct.nf_conn_labels*, align 8
  %11 = alloca %struct.nf_conn_labels*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store %struct.sw_flow_key* %1, %struct.sw_flow_key** %7, align 8
  store %struct.ovs_key_ct_labels* %2, %struct.ovs_key_ct_labels** %8, align 8
  store %struct.ovs_key_ct_labels* %3, %struct.ovs_key_ct_labels** %9, align 8
  %15 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %9, align 8
  %16 = call i32 @labels_nonzero(%struct.ovs_key_ct_labels* %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %18 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %23 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.nf_conn_labels* @nf_ct_labels_find(i64 %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %21
  %28 = phi %struct.nf_conn_labels* [ %25, %21 ], [ null, %26 ]
  store %struct.nf_conn_labels* %28, %struct.nf_conn_labels** %11, align 8
  %29 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %11, align 8
  %30 = icmp ne %struct.nf_conn_labels* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %114

35:                                               ; preds = %31, %27
  %36 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %37 = call %struct.nf_conn_labels* @ovs_ct_get_conn_labels(%struct.nf_conn* %36)
  store %struct.nf_conn_labels* %37, %struct.nf_conn_labels** %10, align 8
  %38 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %39 = icmp ne %struct.nf_conn_labels* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %114

43:                                               ; preds = %35
  %44 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %11, align 8
  %45 = icmp ne %struct.nf_conn_labels* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %48 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %11, align 8
  %49 = bitcast %struct.nf_conn_labels* %47 to i8*
  %50 = bitcast %struct.nf_conn_labels* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 %50, i64 8, i1 false)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %56 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %98, %54
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @OVS_CT_LABELS_LEN_32, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %101

63:                                               ; preds = %59
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %9, align 8
  %70 = getelementptr inbounds %struct.ovs_key_ct_labels, %struct.ovs_key_ct_labels* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %68, %76
  %78 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %8, align 8
  %79 = getelementptr inbounds %struct.ovs_key_ct_labels, %struct.ovs_key_ct_labels* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %9, align 8
  %86 = getelementptr inbounds %struct.ovs_key_ct_labels, %struct.ovs_key_ct_labels* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %84, %91
  %93 = or i32 %77, %92
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  br label %98

98:                                               ; preds = %63
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %59

101:                                              ; preds = %59
  br label %102

102:                                              ; preds = %101, %51
  %103 = load i32, i32* @IPCT_LABEL, align 4
  %104 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %105 = call i32 @nf_conntrack_event_cache(i32 %103, %struct.nf_conn* %104)
  %106 = load %struct.sw_flow_key*, %struct.sw_flow_key** %7, align 8
  %107 = getelementptr inbounds %struct.sw_flow_key, %struct.sw_flow_key* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %10, align 8
  %110 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* @OVS_CT_LABELS_LEN, align 4
  %113 = call i32 @memcpy(i32* %108, i64 %111, i32 %112)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %102, %40, %34
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @labels_nonzero(%struct.ovs_key_ct_labels*) #1

declare dso_local %struct.nf_conn_labels* @nf_ct_labels_find(i64) #1

declare dso_local %struct.nf_conn_labels* @ovs_ct_get_conn_labels(%struct.nf_conn*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @nf_conntrack_event_cache(i32, %struct.nf_conn*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
