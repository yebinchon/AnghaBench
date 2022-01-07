; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_write_inode_now.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs-writeback.c_write_inode_now.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64, i32, i32, i32 }

@LONG_MAX = common dso_local global i64 0, align 8
@LLONG_MAX = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@WB_SYNC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_inode_now(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.writeback_control, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 0
  %7 = load i64, i64* @LONG_MAX, align 8
  store i64 %7, i64* %6, align 8
  %8 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 1
  %9 = load i32, i32* @LLONG_MAX, align 4
  store i32 %9, i32* %8, align 8
  %10 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 3
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @WB_SYNC_ALL, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @WB_SYNC_NONE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %11, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mapping_cap_writeback_dirty(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %5, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = call i32 (...) @might_sleep()
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @writeback_single_inode(%struct.inode* %29, %struct.writeback_control* %5)
  ret i32 %30
}

declare dso_local i32 @mapping_cap_writeback_dirty(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @writeback_single_inode(%struct.inode*, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
