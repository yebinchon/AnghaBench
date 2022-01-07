; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_may_umount_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_may_umount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.mount = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @may_umount_tree(%struct.vfsmount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %9 = call %struct.mount* @real_mount(%struct.vfsmount* %8)
  store %struct.mount* %9, %struct.mount** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %11 = icmp ne %struct.vfsmount* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = call i32 (...) @lock_mount_hash()
  %16 = load %struct.mount*, %struct.mount** %4, align 8
  store %struct.mount* %16, %struct.mount** %7, align 8
  br label %17

17:                                               ; preds = %29, %1
  %18 = load %struct.mount*, %struct.mount** %7, align 8
  %19 = icmp ne %struct.mount* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %17
  %21 = load %struct.mount*, %struct.mount** %7, align 8
  %22 = call i64 @mnt_get_count(%struct.mount* %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load %struct.mount*, %struct.mount** %7, align 8
  %31 = load %struct.mount*, %struct.mount** %4, align 8
  %32 = call %struct.mount* @next_mnt(%struct.mount* %30, %struct.mount* %31)
  store %struct.mount* %32, %struct.mount** %7, align 8
  br label %17

33:                                               ; preds = %17
  %34 = call i32 (...) @unlock_mount_hash()
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i64 @mnt_get_count(%struct.mount*) #1

declare dso_local %struct.mount* @next_mnt(%struct.mount*, %struct.mount*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
