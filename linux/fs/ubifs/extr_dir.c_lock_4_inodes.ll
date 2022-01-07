; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_lock_4_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_lock_4_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@WB_MUTEX_1 = common dso_local global i32 0, align 4
@WB_MUTEX_2 = common dso_local global i32 0, align 4
@WB_MUTEX_3 = common dso_local global i32 0, align 4
@WB_MUTEX_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.inode*, %struct.inode*, %struct.inode*)* @lock_4_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lock_4_inodes(%struct.inode* %0, %struct.inode* %1, %struct.inode* %2, %struct.inode* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.inode* %3, %struct.inode** %8, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call %struct.TYPE_2__* @ubifs_inode(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @WB_MUTEX_1, align 4
  %13 = call i32 @mutex_lock_nested(i32* %11, i32 %12)
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = icmp ne %struct.inode* %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = call %struct.TYPE_2__* @ubifs_inode(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @WB_MUTEX_2, align 4
  %22 = call i32 @mutex_lock_nested(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %17, %4
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.TYPE_2__* @ubifs_inode(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @WB_MUTEX_3, align 4
  %31 = call i32 @mutex_lock_nested(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %23
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.TYPE_2__* @ubifs_inode(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @WB_MUTEX_4, align 4
  %40 = call i32 @mutex_lock_nested(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  ret void
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @ubifs_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
