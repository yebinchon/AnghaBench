; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_redirty.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_account_page_redirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.bdi_writeback = type { i32 }
%struct.wb_lock_cookie = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NR_DIRTIED = common dso_local global i32 0, align 4
@WB_DIRTIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @account_page_redirty(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.bdi_writeback*, align 8
  %6 = alloca %struct.wb_lock_cookie, align 4
  store %struct.page* %0, %struct.page** %2, align 8
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load %struct.address_space*, %struct.address_space** %8, align 8
  store %struct.address_space* %9, %struct.address_space** %3, align 8
  %10 = load %struct.address_space*, %struct.address_space** %3, align 8
  %11 = icmp ne %struct.address_space* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = call i64 @mapping_cap_account_dirty(%struct.address_space* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.address_space*, %struct.address_space** %3, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %4, align 8
  %20 = bitcast %struct.wb_lock_cookie* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode* %21, %struct.wb_lock_cookie* %6)
  store %struct.bdi_writeback* %22, %struct.bdi_writeback** %5, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = load i32, i32* @NR_DIRTIED, align 4
  %29 = call i32 @dec_node_page_state(%struct.page* %27, i32 %28)
  %30 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %31 = load i32, i32* @WB_DIRTIED, align 4
  %32 = call i32 @dec_wb_stat(%struct.bdi_writeback* %30, i32 %31)
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @unlocked_inode_to_wb_end(%struct.inode* %33, %struct.wb_lock_cookie* %6)
  br label %35

35:                                               ; preds = %16, %12, %1
  ret void
}

declare dso_local i64 @mapping_cap_account_dirty(%struct.address_space*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.bdi_writeback* @unlocked_inode_to_wb_begin(%struct.inode*, %struct.wb_lock_cookie*) #1

declare dso_local i32 @dec_node_page_state(%struct.page*, i32) #1

declare dso_local i32 @dec_wb_stat(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @unlocked_inode_to_wb_end(%struct.inode*, %struct.wb_lock_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
