; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_fc_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_fc_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.fs_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @fc_mount(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = call i32 @vfs_get_tree(%struct.fs_context* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1
  %10 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %11 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = call i32 @up_write(i32* %15)
  %17 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %18 = call %struct.vfsmount* @vfs_create_mount(%struct.fs_context* %17)
  store %struct.vfsmount* %18, %struct.vfsmount** %2, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.vfsmount* @ERR_PTR(i32 %20)
  store %struct.vfsmount* %21, %struct.vfsmount** %2, align 8
  br label %22

22:                                               ; preds = %19, %9
  %23 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %23
}

declare dso_local i32 @vfs_get_tree(%struct.fs_context*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.vfsmount* @vfs_create_mount(%struct.fs_context*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
