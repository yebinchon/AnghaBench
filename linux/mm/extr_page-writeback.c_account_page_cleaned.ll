; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_cleaned.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_cleaned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }
%struct.bdi_writeback = type { i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4
@WB_RECLAIMABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_page_cleaned(%struct.page* %0, %struct.address_space* %1, %struct.bdi_writeback* %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.bdi_writeback*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.address_space* %1, %struct.address_space** %5, align 8
  store %struct.bdi_writeback* %2, %struct.bdi_writeback** %6, align 8
  %7 = load %struct.address_space*, %struct.address_space** %5, align 8
  %8 = call i64 @mapping_cap_account_dirty(%struct.address_space* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = load i32, i32* @NR_FILE_DIRTY, align 4
  %13 = call i32 @dec_lruvec_page_state(%struct.page* %11, i32 %12)
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %16 = call i32 @dec_zone_page_state(%struct.page* %14, i32 %15)
  %17 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %18 = load i32, i32* @WB_RECLAIMABLE, align 4
  %19 = call i32 @dec_wb_stat(%struct.bdi_writeback* %17, i32 %18)
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @task_io_account_cancelled_write(i32 %20)
  br label %22

22:                                               ; preds = %10, %3
  ret void
}

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

declare dso_local i32 @dec_lruvec_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @task_io_account_cancelled_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
