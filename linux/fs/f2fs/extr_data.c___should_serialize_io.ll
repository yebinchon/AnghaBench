; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___should_serialize_io.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c___should_serialize_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.writeback_control = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@WB_SYNC_ALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.writeback_control*)* @__should_serialize_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__should_serialize_io(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %6 = load %struct.inode*, %struct.inode** %4, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @S_ISREG(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call i64 @IS_NOQUOTA(%struct.inode* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %42

17:                                               ; preds = %12
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call %struct.TYPE_4__* @F2FS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

24:                                               ; preds = %17
  %25 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %26 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WB_SYNC_ALL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %42

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = call i64 @get_dirty_pages(%struct.inode* %32)
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @F2FS_I_SB(%struct.inode* %34)
  %36 = call %struct.TYPE_3__* @SM_I(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %30, %23, %16, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @IS_NOQUOTA(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @get_dirty_pages(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @SM_I(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
