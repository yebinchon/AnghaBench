; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___test_set_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___test_set_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.inode*, i32 }
%struct.inode = type { i32 }
%struct.backing_dev_info = type { i32 }

@xas = common dso_local global i32 0, align 4
@PAGECACHE_TAG_WRITEBACK = common dso_local global i32 0, align 4
@WB_WRITEBACK = common dso_local global i32 0, align 4
@PAGECACHE_TAG_DIRTY = common dso_local global i32 0, align 4
@PAGECACHE_TAG_TOWRITE = common dso_local global i32 0, align 4
@NR_WRITEBACK = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__test_set_page_writeback(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call %struct.address_space* @page_mapping(%struct.page* %11)
  store %struct.address_space* %12, %struct.address_space** %5, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @lock_page_memcg(%struct.page* %13)
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = icmp ne %struct.address_space* %15, null
  br i1 %16, label %17, label %84

17:                                               ; preds = %2
  %18 = load %struct.address_space*, %struct.address_space** %5, align 8
  %19 = call i64 @mapping_use_writeback_tags(%struct.address_space* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %17
  %22 = load i32, i32* @xas, align 4
  %23 = load %struct.address_space*, %struct.address_space** %5, align 8
  %24 = getelementptr inbounds %struct.address_space, %struct.address_space* %23, i32 0, i32 1
  %25 = load %struct.page*, %struct.page** %3, align 8
  %26 = call i32 @page_index(%struct.page* %25)
  %27 = call i32 @XA_STATE(i32 %22, i32* %24, i32 %26)
  %28 = load %struct.address_space*, %struct.address_space** %5, align 8
  %29 = getelementptr inbounds %struct.address_space, %struct.address_space* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %7, align 8
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.backing_dev_info* @inode_to_bdi(%struct.inode* %31)
  store %struct.backing_dev_info* %32, %struct.backing_dev_info** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @xas_lock_irqsave(i32* @xas, i64 %33)
  %35 = call i32 @xas_load(i32* @xas)
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @TestSetPageWriteback(%struct.page* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %21
  %41 = load %struct.address_space*, %struct.address_space** %5, align 8
  %42 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %43 = call i32 @mapping_tagged(%struct.address_space* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @PAGECACHE_TAG_WRITEBACK, align 4
  %45 = call i32 @xas_set_mark(i32* @xas, i32 %44)
  %46 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %47 = call i64 @bdi_cap_account_writeback(%struct.backing_dev_info* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = call i32 @inode_to_wb(%struct.inode* %50)
  %52 = load i32, i32* @WB_WRITEBACK, align 4
  %53 = call i32 @inc_wb_stat(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %40
  %55 = load %struct.address_space*, %struct.address_space** %5, align 8
  %56 = getelementptr inbounds %struct.address_space, %struct.address_space* %55, i32 0, i32 0
  %57 = load %struct.inode*, %struct.inode** %56, align 8
  %58 = icmp ne %struct.inode* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.address_space*, %struct.address_space** %5, align 8
  %64 = getelementptr inbounds %struct.address_space, %struct.address_space* %63, i32 0, i32 0
  %65 = load %struct.inode*, %struct.inode** %64, align 8
  %66 = call i32 @sb_mark_inode_writeback(%struct.inode* %65)
  br label %67

67:                                               ; preds = %62, %59, %54
  br label %68

68:                                               ; preds = %67, %21
  %69 = load %struct.page*, %struct.page** %3, align 8
  %70 = call i32 @PageDirty(%struct.page* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @PAGECACHE_TAG_DIRTY, align 4
  %74 = call i32 @xas_clear_mark(i32* @xas, i32 %73)
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @PAGECACHE_TAG_TOWRITE, align 4
  %80 = call i32 @xas_clear_mark(i32* @xas, i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @xas_unlock_irqrestore(i32* @xas, i64 %82)
  br label %87

84:                                               ; preds = %17, %2
  %85 = load %struct.page*, %struct.page** %3, align 8
  %86 = call i32 @TestSetPageWriteback(%struct.page* %85)
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %87
  %91 = load %struct.page*, %struct.page** %3, align 8
  %92 = load i32, i32* @NR_WRITEBACK, align 4
  %93 = call i32 @inc_lruvec_page_state(%struct.page* %91, i32 %92)
  %94 = load %struct.page*, %struct.page** %3, align 8
  %95 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %96 = call i32 @inc_zone_page_state(%struct.page* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %87
  %98 = load %struct.page*, %struct.page** %3, align 8
  %99 = call i32 @unlock_page_memcg(%struct.page* %98)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local i64 @mapping_use_writeback_tags(%struct.address_space*) #1

declare dso_local i32 @XA_STATE(i32, i32*, i32) #1

declare dso_local i32 @page_index(%struct.page*) #1

declare dso_local %struct.backing_dev_info* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @xas_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xas_load(i32*) #1

declare dso_local i32 @TestSetPageWriteback(%struct.page*) #1

declare dso_local i32 @mapping_tagged(%struct.address_space*, i32) #1

declare dso_local i32 @xas_set_mark(i32*, i32) #1

declare dso_local i64 @bdi_cap_account_writeback(%struct.backing_dev_info*) #1

declare dso_local i32 @inc_wb_stat(i32, i32) #1

declare dso_local i32 @inode_to_wb(%struct.inode*) #1

declare dso_local i32 @sb_mark_inode_writeback(%struct.inode*) #1

declare dso_local i32 @PageDirty(%struct.page*) #1

declare dso_local i32 @xas_clear_mark(i32*, i32) #1

declare dso_local i32 @xas_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inc_lruvec_page_state(%struct.page*, i32) #1

declare dso_local i32 @inc_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
