; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages_send.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_writepages_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_fill_wb_data = type { i32*, i32, %struct.inode*, %struct.fuse_writepage_args* }
%struct.inode = type { i32 }
%struct.fuse_writepage_args = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fuse_inode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_fill_wb_data*)* @fuse_writepages_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_writepages_send(%struct.fuse_fill_wb_data* %0) #0 {
  %2 = alloca %struct.fuse_fill_wb_data*, align 8
  %3 = alloca %struct.fuse_writepage_args*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.fuse_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fuse_fill_wb_data* %0, %struct.fuse_fill_wb_data** %2, align 8
  %8 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %2, align 8
  %9 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %8, i32 0, i32 3
  %10 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %9, align 8
  store %struct.fuse_writepage_args* %10, %struct.fuse_writepage_args** %3, align 8
  %11 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %2, align 8
  %12 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %11, i32 0, i32 2
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %14)
  store %struct.fuse_inode* %15, %struct.fuse_inode** %5, align 8
  %16 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %3, align 8
  %17 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %2, align 8
  %22 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fuse_file_get(i32 %23)
  %25 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %3, align 8
  %26 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %29 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.fuse_writepage_args*, %struct.fuse_writepage_args** %3, align 8
  %32 = getelementptr inbounds %struct.fuse_writepage_args, %struct.fuse_writepage_args* %31, i32 0, i32 0
  %33 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %34 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @fuse_flush_writepages(%struct.inode* %36)
  %38 = load %struct.fuse_inode*, %struct.fuse_inode** %5, align 8
  %39 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %54, %1
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.fuse_fill_wb_data*, %struct.fuse_fill_wb_data** %2, align 8
  %47 = getelementptr inbounds %struct.fuse_fill_wb_data, %struct.fuse_fill_wb_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @end_page_writeback(i32 %52)
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %41

57:                                               ; preds = %41
  ret void
}

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @fuse_file_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fuse_flush_writepages(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @end_page_writeback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
