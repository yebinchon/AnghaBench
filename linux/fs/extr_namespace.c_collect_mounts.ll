; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_collect_mounts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_collect_mounts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.path = type { i32, i32 }
%struct.mount = type { %struct.vfsmount }

@EINVAL = common dso_local global i32 0, align 4
@CL_COPY_ALL = common dso_local global i32 0, align 4
@CL_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @collect_mounts(%struct.path* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %5 = call i32 (...) @namespace_lock()
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @real_mount(i32 %8)
  %10 = call i32 @check_mnt(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mount* @ERR_PTR(i32 %14)
  store %struct.mount* %15, %struct.mount** %4, align 8
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.path*, %struct.path** %3, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @real_mount(i32 %19)
  %21 = load %struct.path*, %struct.path** %3, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CL_COPY_ALL, align 4
  %25 = load i32, i32* @CL_PRIVATE, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.mount* @copy_tree(i32 %20, i32 %23, i32 %26)
  store %struct.mount* %27, %struct.mount** %4, align 8
  br label %28

28:                                               ; preds = %16, %12
  %29 = call i32 (...) @namespace_unlock()
  %30 = load %struct.mount*, %struct.mount** %4, align 8
  %31 = call i64 @IS_ERR(%struct.mount* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.mount*, %struct.mount** %4, align 8
  %35 = call %struct.vfsmount* @ERR_CAST(%struct.mount* %34)
  store %struct.vfsmount* %35, %struct.vfsmount** %2, align 8
  br label %39

36:                                               ; preds = %28
  %37 = load %struct.mount*, %struct.mount** %4, align 8
  %38 = getelementptr inbounds %struct.mount, %struct.mount* %37, i32 0, i32 0
  store %struct.vfsmount* %38, %struct.vfsmount** %2, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %40
}

declare dso_local i32 @namespace_lock(...) #1

declare dso_local i32 @check_mnt(i32) #1

declare dso_local i32 @real_mount(i32) #1

declare dso_local %struct.mount* @ERR_PTR(i32) #1

declare dso_local %struct.mount* @copy_tree(i32, i32, i32) #1

declare dso_local i32 @namespace_unlock(...) #1

declare dso_local i64 @IS_ERR(%struct.mount*) #1

declare dso_local %struct.vfsmount* @ERR_CAST(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
