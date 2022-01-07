; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___cancel_dirty_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c___cancel_dirty_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bdi_writeback = type { i32 }
%struct.wb_lock_cookie = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cancel_dirty_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.bdi_writeback*, align 8
  %6 = alloca %struct.wb_lock_cookie, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call %struct.address_space* @page_mapping(%struct.page* %7)
  store %struct.address_space* %8, %struct.address_space** %3, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = call i64 @mapping_cap_account_dirty(%struct.address_space* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = getelementptr inbounds %struct.address_space, %struct.address_space* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %4, align 8
  %16 = bitcast %struct.wb_lock_cookie* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  %17 = load %struct.page*, %struct.page** %2, align 8
  %18 = call i32 @lock_page_memcg(%struct.page* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* %19, %struct.wb_lock_cookie* %6)
  store %struct.bdi_writeback* %20, %struct.bdi_writeback** %5, align 8
  %21 = load %struct.page*, %struct.page** %2, align 8
  %22 = call i64 @TestClearPageDirty(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %12
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = load %struct.address_space*, %struct.address_space** %3, align 8
  %27 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %28 = call i32 @account_page_cleaned(%struct.page* %25, %struct.address_space* %26, %struct.bdi_writeback* %27)
  br label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = call i32 @unlocked_inode_to_wb_end(%struct.inode* %30, %struct.wb_lock_cookie* %6)
  %32 = load %struct.page*, %struct.page** %2, align 8
  %33 = call i32 @unlock_page_memcg(%struct.page* %32)
  br label %37

34:                                               ; preds = %1
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = call i32 @ClearPageDirty(%struct.page* %35)
  br label %37

37:                                               ; preds = %34, %29
  ret void
}

declare dso_local %struct.address_space* @page_mapping(%struct.page*) #1

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @lock_page_memcg(%struct.page*) #1

declare dso_local %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode*, %struct.wb_lock_cookie*) #1

declare dso_local i64 @TestClearPageDirty(%struct.page*) #1

declare dso_local i32 @account_page_cleaned(%struct.page*, %struct.address_space*, %struct.bdi_writeback*) #1

declare dso_local i32 @unlocked_inode_to_wb_end(%struct.inode*, %struct.wb_lock_cookie*) #1

declare dso_local i32 @unlock_page_memcg(%struct.page*) #1

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
