; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_add_to_dying_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_core.c_nf_ct_add_to_dying_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ct_pcpu = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @nf_ct_add_to_dying_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_ct_add_to_dying_list(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.ct_pcpu*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %4 = call i32 (...) @smp_processor_id()
  %5 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %6 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %8 = call %struct.TYPE_6__* @nf_ct_net(%struct.nf_conn* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.ct_pcpu* @per_cpu_ptr(i32 %11, i32 %14)
  store %struct.ct_pcpu* %15, %struct.ct_pcpu** %3, align 8
  %16 = load %struct.ct_pcpu*, %struct.ct_pcpu** %3, align 8
  %17 = getelementptr inbounds %struct.ct_pcpu, %struct.ct_pcpu* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.ct_pcpu*, %struct.ct_pcpu** %3, align 8
  %26 = getelementptr inbounds %struct.ct_pcpu, %struct.ct_pcpu* %25, i32 0, i32 1
  %27 = call i32 @hlist_nulls_add_head(i32* %24, i32* %26)
  %28 = load %struct.ct_pcpu*, %struct.ct_pcpu** %3, align 8
  %29 = getelementptr inbounds %struct.ct_pcpu, %struct.ct_pcpu* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.ct_pcpu* @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_nulls_add_head(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
