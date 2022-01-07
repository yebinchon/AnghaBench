; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_table_iterate_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_flow_table_core.c_nf_flow_table_iterate_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_flowtable = type { i32 }
%struct.net_device = type { i32 }

@nf_flow_table_do_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_flowtable*, %struct.net_device*)* @nf_flow_table_iterate_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_flow_table_iterate_cleanup(%struct.nf_flowtable* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.nf_flowtable*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.nf_flowtable* %0, %struct.nf_flowtable** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %6 = load i32, i32* @nf_flow_table_do_cleanup, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call i32 @nf_flow_table_iterate(%struct.nf_flowtable* %5, i32 %6, %struct.net_device* %7)
  %9 = load %struct.nf_flowtable*, %struct.nf_flowtable** %3, align 8
  %10 = getelementptr inbounds %struct.nf_flowtable, %struct.nf_flowtable* %9, i32 0, i32 0
  %11 = call i32 @flush_delayed_work(i32* %10)
  ret void
}

declare dso_local i32 @nf_flow_table_iterate(%struct.nf_flowtable*, i32, %struct.net_device*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
