; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_finish.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepage_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_writepage_args = type { i32, %struct.inode*, %struct.TYPE_2__ }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.fuse_args_pages }
%struct.fuse_args_pages = type { i32, i32* }
%struct.fuse_inode = type { i32 }
%struct.backing_dev_info = type { i32 }

@WB_WRITEBACK = common dso_local global i32 0, align 4
@NR_WRITEBACK_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.fuse_writepage_args*)* @fuse_writepage_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_writepage_finish(%struct.fuse_conn* %0, %struct.fuse_writepage_args* %1) #0 {
  %3 = alloca %struct.fuse_conn*, align 8
  %4 = alloca %struct.fuse_writepage_args*, align 8
  %5 = alloca %struct.fuse_args_pages*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_inode*, align 8
  %8 = alloca %struct.backing_dev_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %3, align 8
  store %struct.fuse_writepage_args* %1, %struct.fuse_writepage_args** %4, align 8
  %10 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %11 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fuse_args_pages* %12, %struct.fuse_args_pages** %5, align 8
  %13 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %14 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %16)
  store %struct.fuse_inode* %17, %struct.fuse_inode** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.backing_dev_info* @inode_to_bdi(%struct.inode* %18)
  store %struct.backing_dev_info* %19, %struct.backing_dev_info** %8, align 8
  %20 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %4, align 8
  %21 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %5, align 8
  %26 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %23
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %30, i32 0, i32 0
  %32 = load i32, i32* @WB_WRITEBACK, align 4
  %33 = call i32 @dec_wb_stat(i32* %31, i32 %32)
  %34 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %5, align 8
  %35 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NR_WRITEBACK_TEMP, align 4
  %42 = call i32 @dec_node_page_state(i32 %40, i32 %41)
  %43 = load %struct.backing_dev_info*, %struct.backing_dev_info** %8, align 8
  %44 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %43, i32 0, i32 0
  %45 = call i32 @wb_writeout_inc(i32* %44)
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load %struct.fuse_inode*, %struct.fuse_inode** %7, align 8
  %51 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %50, i32 0, i32 0
  %52 = call i32 @wake_up(i32* %51)
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local %struct.backing_dev_info* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @dec_wb_stat(i32*, i32) #1

declare dso_local i32 @dec_node_page_state(i32, i32) #1

declare dso_local i32 @wb_writeout_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
