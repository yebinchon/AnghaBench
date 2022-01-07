; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_clone_private_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_clone_private_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32, i32 }
%struct.mount = type { %struct.vfsmount }

@EINVAL = common dso_local global i32 0, align 4
@CL_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @clone_private_mount(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.mount* @real_mount(i32 %8)
  store %struct.mount* %9, %struct.mount** %4, align 8
  %10 = load %struct.mount*, %struct.mount** %4, align 8
  %11 = call i64 @IS_MNT_UNBINDABLE(%struct.mount* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.vfsmount* @ERR_PTR(i32 %15)
  store %struct.vfsmount* %16, %struct.vfsmount** %2, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = load %struct.path*, %struct.path** %3, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CL_PRIVATE, align 4
  %23 = call %struct.mount* @clone_mnt(%struct.mount* %18, i32 %21, i32 %22)
  store %struct.mount* %23, %struct.mount** %5, align 8
  %24 = load %struct.mount*, %struct.mount** %5, align 8
  %25 = call i64 @IS_ERR(%struct.mount* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load %struct.mount*, %struct.mount** %5, align 8
  %29 = call %struct.vfsmount* @ERR_CAST(%struct.mount* %28)
  store %struct.vfsmount* %29, %struct.vfsmount** %2, align 8
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.mount*, %struct.mount** %5, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 0
  store %struct.vfsmount* %32, %struct.vfsmount** %2, align 8
  br label %33

33:                                               ; preds = %30, %27, %13
  %34 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %34
}

declare dso_local %struct.mount* @real_mount(i32) #1

declare dso_local i64 @IS_MNT_UNBINDABLE(%struct.mount*) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.mount* @clone_mnt(%struct.mount*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mount*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
