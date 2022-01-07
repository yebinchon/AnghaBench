; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_labels.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { i32 }
%struct.ovs_key_ct_labels = type { i32 }
%struct.nf_conn_labels = type { i32 }

@OVS_CT_LABELS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*, %struct.ovs_key_ct_labels*)* @ovs_ct_get_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ovs_ct_get_labels(%struct.nf_conn* %0, %struct.ovs_key_ct_labels* %1) #0 {
  %3 = alloca %struct.nf_conn*, align 8
  %4 = alloca %struct.ovs_key_ct_labels*, align 8
  %5 = alloca %struct.nf_conn_labels*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %3, align 8
  store %struct.ovs_key_ct_labels* %1, %struct.ovs_key_ct_labels** %4, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %7 = icmp ne %struct.nf_conn* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.nf_conn*, %struct.nf_conn** %3, align 8
  %10 = call %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn* %9)
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.nf_conn_labels* [ %10, %8 ], [ null, %11 ]
  store %struct.nf_conn_labels* %13, %struct.nf_conn_labels** %5, align 8
  %14 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %5, align 8
  %15 = icmp ne %struct.nf_conn_labels* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %4, align 8
  %18 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %5, align 8
  %19 = getelementptr inbounds %struct.nf_conn_labels, %struct.nf_conn_labels* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OVS_CT_LABELS_LEN, align 4
  %22 = call i32 @memcpy(%struct.ovs_key_ct_labels* %17, i32 %20, i32 %21)
  br label %27

23:                                               ; preds = %12
  %24 = load %struct.ovs_key_ct_labels*, %struct.ovs_key_ct_labels** %4, align 8
  %25 = load i32, i32* @OVS_CT_LABELS_LEN, align 4
  %26 = call i32 @memset(%struct.ovs_key_ct_labels* %24, i32 0, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  ret void
}

declare dso_local %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn*) #1

declare dso_local i32 @memcpy(%struct.ovs_key_ct_labels*, i32, i32) #1

declare dso_local i32 @memset(%struct.ovs_key_ct_labels*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
