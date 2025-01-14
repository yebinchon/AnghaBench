; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_inode_io_list_move_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_inode_io_list_move_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bdi_writeback = type { %struct.list_head, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.bdi_writeback*, %struct.list_head*)* @inode_io_list_move_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inode_io_list_move_locked(%struct.inode* %0, %struct.bdi_writeback* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.bdi_writeback*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.bdi_writeback* %1, %struct.bdi_writeback** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  %8 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %9 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %8, i32 0, i32 1
  %10 = call i32 @assert_spin_locked(i32* %9)
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.list_head*, %struct.list_head** %7, align 8
  %14 = call i32 @list_move(i32* %12, %struct.list_head* %13)
  %15 = load %struct.list_head*, %struct.list_head** %7, align 8
  %16 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %17 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %16, i32 0, i32 0
  %18 = icmp ne %struct.list_head* %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %21 = call i32 @wb_io_lists_populated(%struct.bdi_writeback* %20)
  store i32 %21, i32* %4, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load %struct.bdi_writeback*, %struct.bdi_writeback** %6, align 8
  %24 = call i32 @wb_io_lists_depopulated(%struct.bdi_writeback* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @wb_io_lists_populated(%struct.bdi_writeback*) #1

declare dso_local i32 @wb_io_lists_depopulated(%struct.bdi_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
