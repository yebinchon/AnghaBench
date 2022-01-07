; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_data_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_f2fs_write_data_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }
%struct.TYPE_2__ = type { i64 }

@current = common dso_local global i64 0, align 8
@FS_CP_DATA_IO = common dso_local global i32 0, align 4
@FS_DATA_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.writeback_control*)* @f2fs_write_data_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_write_data_pages(%struct.address_space* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  store %struct.address_space* %0, %struct.address_space** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %6 = load %struct.address_space*, %struct.address_space** %3, align 8
  %7 = getelementptr inbounds %struct.address_space, %struct.address_space* %6, i32 0, i32 0
  %8 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.address_space*, %struct.address_space** %3, align 8
  %10 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @current, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @FS_CP_DATA_IO, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FS_DATA_IO, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @__f2fs_write_data_pages(%struct.address_space* %9, %struct.writeback_control* %10, i32 %22)
  ret i32 %23
}

declare dso_local i32 @__f2fs_write_data_pages(%struct.address_space*, %struct.writeback_control*, i32) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
