; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_pin_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_simple_pin_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32 }
%struct.vfsmount = type { i32 }

@pin_fs_lock = common dso_local global i32 0, align 4
@SB_KERNMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_pin_fs(%struct.file_system_type* %0, %struct.vfsmount** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_system_type*, align 8
  %6 = alloca %struct.vfsmount**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %5, align 8
  store %struct.vfsmount** %1, %struct.vfsmount*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %8, align 8
  %9 = call i32 @spin_lock(i32* @pin_fs_lock)
  %10 = load %struct.vfsmount**, %struct.vfsmount*** %6, align 8
  %11 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %12 = icmp ne %struct.vfsmount* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %3
  %18 = call i32 @spin_unlock(i32* @pin_fs_lock)
  %19 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %20 = load i32, i32* @SB_KERNMOUNT, align 4
  %21 = load %struct.file_system_type*, %struct.file_system_type** %5, align 8
  %22 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type* %19, i32 %20, i32 %23, i32* null)
  store %struct.vfsmount* %24, %struct.vfsmount** %8, align 8
  %25 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %26 = call i64 @IS_ERR(%struct.vfsmount* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.vfsmount* %29)
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %17
  %32 = call i32 @spin_lock(i32* @pin_fs_lock)
  %33 = load %struct.vfsmount**, %struct.vfsmount*** %6, align 8
  %34 = load %struct.vfsmount*, %struct.vfsmount** %33, align 8
  %35 = icmp ne %struct.vfsmount* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %38 = load %struct.vfsmount**, %struct.vfsmount*** %6, align 8
  store %struct.vfsmount* %37, %struct.vfsmount** %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %3
  %41 = load %struct.vfsmount**, %struct.vfsmount*** %6, align 8
  %42 = load %struct.vfsmount*, %struct.vfsmount** %41, align 8
  %43 = call i32 @mntget(%struct.vfsmount* %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = call i32 @spin_unlock(i32* @pin_fs_lock)
  %48 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %49 = call i32 @mntput(%struct.vfsmount* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %28
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.vfsmount* @vfs_kern_mount(%struct.file_system_type*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @mntput(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
