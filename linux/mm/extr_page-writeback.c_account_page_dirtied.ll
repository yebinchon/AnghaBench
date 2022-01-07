; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_dirtied.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_dirtied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bdi_writeback = type { i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4
@NR_DIRTIED = common dso_local global i32 0, align 4
@WB_RECLAIMABLE = common dso_local global i32 0, align 4
@WB_DIRTIED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@bdp_ratelimits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_page_dirtied(%struct.page* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.bdi_writeback*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %7 = load %struct.address_space*, %struct.address_space** %4, align 8
  %8 = getelementptr inbounds %struct.address_space, %struct.address_space* %7, i32 0, i32 0
  %9 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %9, %struct.inode** %5, align 8
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = load %struct.address_space*, %struct.address_space** %4, align 8
  %12 = call i32 @trace_writeback_dirty_page(%struct.page* %10, %struct.address_space* %11)
  %13 = load %struct.address_space*, %struct.address_space** %4, align 8
  %14 = call i64 @mapping_cap_account_dirty(%struct.address_space* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @inode_attach_wb(%struct.inode* %17, %struct.page* %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call %struct.bdi_writeback* @inode_to_wb(%struct.inode* %20)
  store %struct.bdi_writeback* %21, %struct.bdi_writeback** %6, align 8
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = load i32, i32* @NR_FILE_DIRTY, align 4
  %24 = call i32 @__inc_lruvec_page_state(%struct.page* %22, i32 %23)
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %27 = call i32 @__inc_zone_page_state(%struct.page* %25, i32 %26)
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = load i32, i32* @NR_DIRTIED, align 4
  %30 = call i32 @__inc_node_page_state(%struct.page* %28, i32 %29)
  %31 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %32 = load i32, i32* @WB_RECLAIMABLE, align 4
  %33 = call i32 @inc_wb_stat(%struct.bdi_writeback* %31, i32 %32)
  %34 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %35 = load i32, i32* @WB_DIRTIED, align 4
  %36 = call i32 @inc_wb_stat(%struct.bdi_writeback* %34, i32 %35)
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @task_io_account_write(i32 %37)
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @bdp_ratelimits, align 4
  %44 = call i32 @this_cpu_inc(i32 %43)
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %47 = call i32 @mem_cgroup_track_foreign_dirty(%struct.page* %45, %struct.bdi_writeback* %46)
  br label %48

48:                                               ; preds = %16, %2
  ret void
}

declare dso_local i32 @trace_writeback_dirty_page(%struct.page*, %struct.address_space*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i32 @inode_attach_wb(%struct.inode*, %struct.page*) #1

declare dso_local %struct.bdi_writeback* @inode_to_wb(%struct.inode*) #1

declare dso_local i32 @__inc_lruvec_page_state(%struct.page*, i32) #1

declare dso_local i32 @__inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @__inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @inc_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @task_io_account_write(i32) #1

declare dso_local i32 @this_cpu_inc(i32) #1

declare dso_local i32 @mem_cgroup_track_foreign_dirty(%struct.page*, %struct.bdi_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
