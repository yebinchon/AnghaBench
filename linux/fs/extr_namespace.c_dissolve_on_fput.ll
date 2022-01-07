; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_dissolve_on_fput.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_dissolve_on_fput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.mnt_namespace = type { i32 }
%struct.TYPE_3__ = type { %struct.mnt_namespace* }

@UMOUNT_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dissolve_on_fput(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.mnt_namespace*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  %4 = call i32 (...) @namespace_lock()
  %5 = call i32 (...) @lock_mount_hash()
  %6 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %7 = call %struct.TYPE_3__* @real_mount(%struct.vfsmount* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.mnt_namespace*, %struct.mnt_namespace** %8, align 8
  store %struct.mnt_namespace* %9, %struct.mnt_namespace** %3, align 8
  %10 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %11 = icmp ne %struct.mnt_namespace* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %14 = call i64 @is_anon_ns(%struct.mnt_namespace* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %18 = call %struct.TYPE_3__* @real_mount(%struct.vfsmount* %17)
  %19 = load i32, i32* @UMOUNT_CONNECTED, align 4
  %20 = call i32 @umount_tree(%struct.TYPE_3__* %18, i32 %19)
  br label %22

21:                                               ; preds = %12
  store %struct.mnt_namespace* null, %struct.mnt_namespace** %3, align 8
  br label %22

22:                                               ; preds = %21, %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = call i32 (...) @unlock_mount_hash()
  %25 = call i32 (...) @namespace_unlock()
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %27 = icmp ne %struct.mnt_namespace* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.mnt_namespace*, %struct.mnt_namespace** %3, align 8
  %30 = call i32 @free_mnt_ns(%struct.mnt_namespace* %29)
  br label %31

31:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @namespace_lock(...) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local %struct.TYPE_3__* @real_mount(%struct.vfsmount*) #1

declare dso_local i64 @is_anon_ns(%struct.mnt_namespace*) #1

declare dso_local i32 @umount_tree(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @namespace_unlock(...) #1

declare dso_local i32 @free_mnt_ns(%struct.mnt_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
