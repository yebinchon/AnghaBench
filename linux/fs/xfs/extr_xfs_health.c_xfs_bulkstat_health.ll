; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_bulkstat_health.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_health.c_xfs_bulkstat_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioctl_sick_map = type { i32, i32 }
%struct.xfs_inode = type { i32 }
%struct.xfs_bulkstat = type { i32, i32 }

@ino_map = common dso_local global %struct.ioctl_sick_map* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bulkstat_health(%struct.xfs_inode* %0, %struct.xfs_bulkstat* %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_bulkstat*, align 8
  %5 = alloca %struct.ioctl_sick_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store %struct.xfs_bulkstat* %1, %struct.xfs_bulkstat** %4, align 8
  %8 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %4, align 8
  %9 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %10, i32 0, i32 1
  store i32 0, i32* %11, align 4
  %12 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %13 = call i32 @xfs_inode_measure_sickness(%struct.xfs_inode* %12, i32* %6, i32* %7)
  %14 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** @ino_map, align 8
  store %struct.ioctl_sick_map* %14, %struct.ioctl_sick_map** %5, align 8
  br label %15

15:                                               ; preds = %51, %2
  %16 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %17 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %23 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %29 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %27, %20
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %38 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %44 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.ioctl_sick_map*, %struct.ioctl_sick_map** %5, align 8
  %53 = getelementptr inbounds %struct.ioctl_sick_map, %struct.ioctl_sick_map* %52, i32 1
  store %struct.ioctl_sick_map* %53, %struct.ioctl_sick_map** %5, align 8
  br label %15

54:                                               ; preds = %15
  ret void
}

declare dso_local i32 @xfs_inode_measure_sickness(%struct.xfs_inode*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
