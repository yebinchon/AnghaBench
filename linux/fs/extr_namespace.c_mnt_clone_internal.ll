; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_clone_internal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mnt_clone_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32, i32 }
%struct.mount = type { %struct.vfsmount }

@CL_PRIVATE = common dso_local global i32 0, align 4
@MNT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @mnt_clone_internal(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %5 = load %struct.path*, %struct.path** %3, align 8
  %6 = getelementptr inbounds %struct.path, %struct.path* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @real_mount(i32 %7)
  %9 = load %struct.path*, %struct.path** %3, align 8
  %10 = getelementptr inbounds %struct.path, %struct.path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @CL_PRIVATE, align 4
  %13 = call %struct.mount* @clone_mnt(i32 %8, i32 %11, i32 %12)
  store %struct.mount* %13, %struct.mount** %4, align 8
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = call i64 @IS_ERR(%struct.mount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = call %struct.vfsmount* @ERR_CAST(%struct.mount* %18)
  store %struct.vfsmount* %19, %struct.vfsmount** %2, align 8
  br label %29

20:                                               ; preds = %1
  %21 = load i32, i32* @MNT_INTERNAL, align 4
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = getelementptr inbounds %struct.mount, %struct.mount* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.mount*, %struct.mount** %4, align 8
  %28 = getelementptr inbounds %struct.mount, %struct.mount* %27, i32 0, i32 0
  store %struct.vfsmount* %28, %struct.vfsmount** %2, align 8
  br label %29

29:                                               ; preds = %20, %17
  %30 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %30
}

declare dso_local %struct.mount* @clone_mnt(i32, i32, i32) #1

declare dso_local i32 @real_mount(i32) #1

declare dso_local i64 @IS_ERR(%struct.mount*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
