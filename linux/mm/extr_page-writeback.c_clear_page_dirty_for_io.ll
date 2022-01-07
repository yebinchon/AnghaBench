; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_clear_page_dirty_for_io.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_clear_page_dirty_for_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bdi_writeback = type { i32 }
%struct.wb_lock_cookie = type { i32 }

@NR_FILE_DIRTY = common dso_local global i32 0, align 4
@NR_ZONE_WRITE_PENDING = common dso_local global i32 0, align 4
@WB_RECLAIMABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_page_dirty_for_io(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.address_space*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.bdi_writeback*, align 8
  %8 = alloca %struct.wb_lock_cookie, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %9 = load %struct.page*, %struct.page** %3, align 8
  %10 = call %struct.address_space* @page_mapping(%struct.page* %9)
  store %struct.address_space* %10, %struct.address_space** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call i32 @PageLocked(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.address_space*, %struct.address_space** %4, align 8
  %18 = icmp ne %struct.address_space* %17, null
  br i1 %18, label %19, label %54

19:                                               ; preds = %1
  %20 = load %struct.address_space*, %struct.address_space** %4, align 8
  %21 = call i64 @mapping_cap_account_dirty(%struct.address_space* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load %struct.address_space*, %struct.address_space** %4, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %6, align 8
  %27 = bitcast %struct.wb_lock_cookie* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %27, i8 0, i64 4, i1 false)
  %28 = load %struct.page*, %struct.page** %3, align 8
  %29 = call i64 @page_mkclean(%struct.page* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @set_page_dirty(%struct.page* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* %35, %struct.wb_lock_cookie* %8)
  store %struct.bdi_writeback* %36, %struct.bdi_writeback** %7, align 8
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call i32 @TestClearPageDirty(%struct.page* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load i32, i32* @NR_FILE_DIRTY, align 4
  %43 = call i32 @dec_lruvec_page_state(%struct.page* %41, i32 %42)
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = load i32, i32* @NR_ZONE_WRITE_PENDING, align 4
  %46 = call i32 @dec_zone_page_state(%struct.page* %44, i32 %45)
  %47 = load %struct.bdi_writeback*, %struct.bdi_writeback** %7, align 8
  %48 = load i32, i32* @WB_RECLAIMABLE, align 4
  %49 = call i32 @dec_wb_stat(%struct.bdi_writeback* %47, i32 %48)
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %40, %34
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = call i32 @unlocked_inode_to_wb_end(%struct.inode* %51, %struct.wb_lock_cookie* %8)
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %19, %1
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = call i32 @TestClearPageDirty(%struct.page* %55)
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageLocked(%struct.page*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @page_mkclean(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode*, %struct.wb_lock_cookie*) #1

declare dso_local i32 @TestClearPageDirty(%struct.page*) #1

declare dso_local i32 @dec_lruvec_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_zone_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @unlocked_inode_to_wb_end(%struct.inode*, %struct.wb_lock_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
