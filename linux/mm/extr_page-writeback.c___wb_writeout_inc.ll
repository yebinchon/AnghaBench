; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_writeout_inc.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___wb_writeout_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wb_domain = type { i32 }
%struct.bdi_writeback = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@WB_WRITTEN = common dso_local global i32 0, align 4
@global_wb_domain = common dso_local global %struct.wb_domain zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bdi_writeback*)* @__wb_writeout_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__wb_writeout_inc(%struct.bdi_writeback* %0) #0 {
  %2 = alloca %struct.bdi_writeback*, align 8
  %3 = alloca %struct.wb_domain*, align 8
  store %struct.bdi_writeback* %0, %struct.bdi_writeback** %2, align 8
  %4 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %5 = load i32, i32* @WB_WRITTEN, align 4
  %6 = call i32 @inc_wb_stat(%struct.bdi_writeback* %4, i32 %5)
  %7 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %8 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %7, i32 0, i32 1
  %9 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %10 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wb_domain_writeout_inc(%struct.wb_domain* @global_wb_domain, i32* %8, i32 %13)
  %15 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %16 = call %struct.wb_domain* @mem_cgroup_wb_domain(%struct.bdi_writeback* %15)
  store %struct.wb_domain* %16, %struct.wb_domain** %3, align 8
  %17 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %18 = icmp ne %struct.wb_domain* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.wb_domain*, %struct.wb_domain** %3, align 8
  %21 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %22 = call i32* @wb_memcg_completions(%struct.bdi_writeback* %21)
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %2, align 8
  %24 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wb_domain_writeout_inc(%struct.wb_domain* %20, i32* %22, i32 %27)
  br label %29

29:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @inc_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @wb_domain_writeout_inc(%struct.wb_domain*, i32*, i32) #1

declare dso_local %struct.wb_domain* @mem_cgroup_wb_domain(%struct.bdi_writeback*) #1

declare dso_local i32* @wb_memcg_completions(%struct.bdi_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
