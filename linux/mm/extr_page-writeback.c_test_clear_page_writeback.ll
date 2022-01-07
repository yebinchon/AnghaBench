; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_test_clear_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_test_clear_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.mem_cgroup = type { i32 }
%struct.lruvec = type { i32 }
%struct.backing_dev_info = type { i32 }
%struct.bdi_writeback = type { i32 }

@PAGECACHE_TAG_WRITEBACK = common dso_local global i32 0, align 4
@WB_WRITEBACK = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4
@NR_WRITTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_clear_page_writeback(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca %struct.lruvec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bdi_writeback*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call %struct.address_space* @page_mapping(%struct.page* %11)
  store %struct.address_space* %12, %struct.address_space** %3, align 8
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call %struct.mem_cgroup* @lock_page_memcg(%struct.page* %13)
  store %struct.mem_cgroup* %14, %struct.mem_cgroup** %4, align 8
  %15 = load %struct.page*, %struct.page** %2, align 8
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = call i32 @page_pgdat(%struct.page* %16)
  %18 = call %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page* %15, i32 %17)
  store %struct.lruvec* %18, %struct.lruvec** %5, align 8
  %19 = load %struct.address_space*, %struct.address_space** %3, align 8
  %20 = icmp ne %struct.address_space* %19, null
  br i1 %20, label %21, label %78

21:                                               ; preds = %1
  %22 = load %struct.address_space*, %struct.address_space** %3, align 8
  %23 = call i64 @mapping_use_writeback_tags(%struct.address_space* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load %struct.address_space*, %struct.address_space** %3, align 8
  %27 = getelementptr inbounds %struct.address_space, %struct.address_space* %26, i32 0, i32 1
  %28 = load %struct.inode*, %struct.inode** %27, align 8
  store %struct.inode* %28, %struct.inode** %7, align 8
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call %struct.backing_dev_info* @inode_to_bdi(%struct.inode* %29)
  store %struct.backing_dev_info* %30, %struct.backing_dev_info** %8, align 8
  %31 = load %struct.address_space*, %struct.address_space** %3, align 8
  %32 = getelementptr inbounds %struct.address_space, %struct.address_space* %31, i32 0, i32 0
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @xa_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = call i32 @TestClearPageWriteback(%struct.page* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %25
  %40 = load %struct.address_space*, %struct.address_space** %3, align 8
  %41 = getelementptr inbounds %struct.address_space, %struct.address_space* %40, i32 0, i32 0
  %42 = load %struct.page*, %struct.page** %2, align 8
  %43 = call i32 @page_index(%struct.page* %42)
  %44 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %45 = call i32 @__xa_clear_mark(i32* %41, i32 %43, i32 %44)
  %46 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %47 = call i64 @bdi_cap_account_writeback(%struct.backing_dev_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call %struct.bdi_writeback* @inode_to_wb(%struct.inode* %50)
  store %struct.bdi_writeback* %51, %struct.bdi_writeback** %10, align 8
  %52 = load %struct.bdi_writeback*, %struct.bdi_writeback** %10, align 8
  %53 = load i32, i32* @WB_WRITEBACK, align 4
  %54 = call i32 @dec_wb_stat(%struct.bdi_writeback* %52, i32 %53)
  %55 = load %struct.bdi_writeback*, %struct.bdi_writeback** %10, align 8
  %56 = call i32 @__wb_writeout_inc(%struct.bdi_writeback* %55)
  br label %57

57:                                               ; preds = %49, %39
  br label %58

58:                                               ; preds = %57, %25
  %59 = load %struct.address_space*, %struct.address_space** %3, align 8
  %60 = getelementptr inbounds %struct.address_space, %struct.address_space* %59, i32 0, i32 1
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = icmp ne %struct.inode* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.address_space*, %struct.address_space** %3, align 8
  %65 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %66 = call i32 @mapping_tagged(%struct.address_space* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load %struct.address_space*, %struct.address_space** %3, align 8
  %70 = getelementptr inbounds %struct.address_space, %struct.address_space* %69, i32 0, i32 1
  %71 = load %struct.inode*, %struct.inode** %70, align 8
  %72 = call i32 @sb_clear_inode_writeback(%struct.inode* %71)
  br label %73

73:                                               ; preds = %68, %63, %58
  %74 = load %struct.address_space*, %struct.address_space** %3, align 8
  %75 = getelementptr inbounds %struct.address_space, %struct.address_space* %74, i32 0, i32 0
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @xa_unlock_irqrestore(i32* %75, i64 %76)
  br label %81

78:                                               ; preds = %21, %1
  %79 = load %struct.page*, %struct.page** %2, align 8
  %80 = call i32 @TestClearPageWriteback(%struct.page* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.lruvec*, %struct.lruvec** %5, align 8
  %86 = load i32, i32* @NR_WRITEBACK, align 4
  %87 = call i32 @dec_lruvec_state(%struct.lruvec* %85, i32 %86)
  %88 = load %struct.page*, %struct.page** %2, align 8
  %89 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %90 = call i32 @dec_zone_page_state(%struct.page* %88, i32 %89)
  %91 = load %struct.page*, %struct.page** %2, align 8
  %92 = load i32, i32* @NR_WRITTEN, align 4
  %93 = call i32 @inc_node_page_state(%struct.page* %91, i32 %92)
  br label %94

94:                                               ; preds = %84, %81
  %95 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %96 = call i32 @__unlock_page_memcg(%struct.mem_cgroup* %95)
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local %struct.mem_cgroup* @lock_page_memcg(%struct.page*) #1

declare dso_local %struct.lruvec* @mem_cgroup_page_lruvec(%struct.page*, i32) #1

declare dso_local i32 @page_pgdat(%struct.page*) #1

declare dso_local i64 @mapping_use_writeback_tags(%struct.address_space*) #1

declare dso_local %struct.backing_dev_info* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @xa_lock_irqsave(i32*, i64) #1

declare dso_local i32 @TestClearPageWriteback(%struct.page*) #1

declare dso_local i32 @__xa_clear_mark(i32*, i32, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local i64 @bdi_cap_account_writeback(%struct.backing_dev_info*) #1

declare dso_local %struct.bdi_writeback* @inode_to_wb(%struct.inode*) #1

declare dso_local i32 @dec_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @__wb_writeout_inc(%struct.bdi_writeback*) #1

declare dso_local i32 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @sb_clear_inode_writeback(%struct.inode*) #1

declare dso_local i32 @xa_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dec_lruvec_state(%struct.lruvec*, i32) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @inc_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @__unlock_page_memcg(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
