; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fhandle.c_get_vfsmount_from_fd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fhandle.c_get_vfsmount_from_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.fs_struct* }
%struct.fs_struct = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vfsmount = type { i32 }
%struct.fd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (i32)* @get_vfsmount_from_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @get_vfsmount_from_fd(i32 %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.fs_struct*, align 8
  %6 = alloca %struct.fd, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @AT_FDCWD, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.fs_struct*, %struct.fs_struct** %12, align 8
  store %struct.fs_struct* %13, %struct.fs_struct** %5, align 8
  %14 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %15 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %18 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vfsmount* @mntget(i32 %20)
  store %struct.vfsmount* %21, %struct.vfsmount** %4, align 8
  %22 = load %struct.fs_struct*, %struct.fs_struct** %5, align 8
  %23 = getelementptr inbounds %struct.fs_struct, %struct.fs_struct* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %46

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = call %struct.TYPE_7__* @fdget(i32 %26)
  %28 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %28, align 8
  %29 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EBADF, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.vfsmount* @ERR_PTR(i32 %34)
  store %struct.vfsmount* %35, %struct.vfsmount** %2, align 8
  br label %48

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.vfsmount* @mntget(i32 %41)
  store %struct.vfsmount* %42, %struct.vfsmount** %4, align 8
  %43 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = call i32 @fdput(%struct.TYPE_7__* %44)
  br label %46

46:                                               ; preds = %36, %10
  %47 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %47, %struct.vfsmount** %2, align 8
  br label %48

48:                                               ; preds = %46, %32
  %49 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %49
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.vfsmount* @mntget(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @fdget(i32) #1

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local i32 @fdput(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
