; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_conn_labels.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_conntrack.c_ovs_ct_get_conn_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn_labels = type { i32 }
%struct.nf_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nf_conn_labels* (%struct.nf_conn*)* @ovs_ct_get_conn_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nf_conn_labels* @ovs_ct_get_conn_labels(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.nf_conn_labels*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %5 = call %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn* %4)
  store %struct.nf_conn_labels* %5, %struct.nf_conn_labels** %3, align 8
  %6 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %3, align 8
  %7 = icmp ne %struct.nf_conn_labels* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %10 = call i32 @nf_ct_labels_ext_add(%struct.nf_conn* %9)
  %11 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %12 = call %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn* %11)
  store %struct.nf_conn_labels* %12, %struct.nf_conn_labels** %3, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.nf_conn_labels*, %struct.nf_conn_labels** %3, align 8
  ret %struct.nf_conn_labels* %14
}

declare dso_local %struct.nf_conn_labels* @nf_ct_labels_find(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_labels_ext_add(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
