; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_open_detached_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_open_detached_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.file = type { i32, i32, i32, i32, %struct.file*, i32, %struct.file* }
%struct.path = type { i32* }
%struct.mnt_namespace = type { i32, i32, i32, i32, %struct.mnt_namespace*, i32, %struct.mnt_namespace* }
%struct.mount = type { i32, i32, i32, i32, %struct.mount*, i32, %struct.mount* }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@O_PATH = common dso_local global i32 0, align 4
@FMODE_NEED_UNMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file* (%struct.path*, i32)* @open_detached_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file* @open_detached_copy(%struct.path* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.file*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.user_namespace*, %struct.user_namespace** %16, align 8
  store %struct.user_namespace* %17, %struct.user_namespace** %6, align 8
  %18 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %19 = call %struct.mount* @alloc_mnt_ns(%struct.user_namespace* %18, i32 1)
  %20 = bitcast %struct.mount* %19 to %struct.mnt_namespace*
  store %struct.mnt_namespace* %20, %struct.mnt_namespace** %7, align 8
  %21 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %22 = bitcast %struct.mnt_namespace* %21 to %struct.mount*
  %23 = call i64 @IS_ERR(%struct.mount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %27 = bitcast %struct.mnt_namespace* %26 to %struct.mount*
  %28 = call %struct.mount* @ERR_CAST(%struct.mount* %27)
  %29 = bitcast %struct.mount* %28 to %struct.file*
  store %struct.file* %29, %struct.file** %3, align 8
  br label %110

30:                                               ; preds = %2
  %31 = call i32 (...) @namespace_lock()
  %32 = load %struct.path*, %struct.path** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.mount* @__do_loopback(%struct.path* %32, i32 %33)
  store %struct.mount* %34, %struct.mount** %8, align 8
  %35 = load %struct.mount*, %struct.mount** %8, align 8
  %36 = call i64 @IS_ERR(%struct.mount* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = call i32 (...) @namespace_unlock()
  %40 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %41 = bitcast %struct.mnt_namespace* %40 to %struct.mount*
  %42 = call i32 @free_mnt_ns(%struct.mount* %41)
  %43 = load %struct.mount*, %struct.mount** %8, align 8
  %44 = call %struct.mount* @ERR_CAST(%struct.mount* %43)
  %45 = bitcast %struct.mount* %44 to %struct.file*
  store %struct.file* %45, %struct.file** %3, align 8
  br label %110

46:                                               ; preds = %30
  %47 = call i32 (...) @lock_mount_hash()
  %48 = load %struct.mount*, %struct.mount** %8, align 8
  store %struct.mount* %48, %struct.mount** %9, align 8
  br label %49

49:                                               ; preds = %61, %46
  %50 = load %struct.mount*, %struct.mount** %9, align 8
  %51 = icmp ne %struct.mount* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %54 = bitcast %struct.mnt_namespace* %53 to %struct.mount*
  %55 = load %struct.mount*, %struct.mount** %9, align 8
  %56 = getelementptr inbounds %struct.mount, %struct.mount* %55, i32 0, i32 6
  store %struct.mount* %54, %struct.mount** %56, align 8
  %57 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %58 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %52
  %62 = load %struct.mount*, %struct.mount** %9, align 8
  %63 = load %struct.mount*, %struct.mount** %8, align 8
  %64 = call %struct.mount* @next_mnt(%struct.mount* %62, %struct.mount* %63)
  store %struct.mount* %64, %struct.mount** %9, align 8
  br label %49

65:                                               ; preds = %49
  %66 = load %struct.mount*, %struct.mount** %8, align 8
  %67 = bitcast %struct.mount* %66 to %struct.mnt_namespace*
  %68 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %69 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %68, i32 0, i32 4
  store %struct.mnt_namespace* %67, %struct.mnt_namespace** %69, align 8
  %70 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %71 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %70, i32 0, i32 3
  %72 = load %struct.mount*, %struct.mount** %8, align 8
  %73 = getelementptr inbounds %struct.mount, %struct.mount* %72, i32 0, i32 2
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  %75 = load %struct.mount*, %struct.mount** %8, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 1
  %77 = call i32 @mntget(i32* %76)
  %78 = call i32 (...) @unlock_mount_hash()
  %79 = call i32 (...) @namespace_unlock()
  %80 = load %struct.path*, %struct.path** %4, align 8
  %81 = getelementptr inbounds %struct.path, %struct.path* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @mntput(i32* %82)
  %84 = load %struct.mount*, %struct.mount** %8, align 8
  %85 = getelementptr inbounds %struct.mount, %struct.mount* %84, i32 0, i32 1
  %86 = load %struct.path*, %struct.path** %4, align 8
  %87 = getelementptr inbounds %struct.path, %struct.path* %86, i32 0, i32 0
  store i32* %85, i32** %87, align 8
  %88 = load %struct.path*, %struct.path** %4, align 8
  %89 = load i32, i32* @O_PATH, align 4
  %90 = call i32 (...) @current_cred()
  %91 = call %struct.mount* @dentry_open(%struct.path* %88, i32 %89, i32 %90)
  %92 = bitcast %struct.mount* %91 to %struct.file*
  store %struct.file* %92, %struct.file** %10, align 8
  %93 = load %struct.file*, %struct.file** %10, align 8
  %94 = bitcast %struct.file* %93 to %struct.mount*
  %95 = call i64 @IS_ERR(%struct.mount* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %65
  %98 = load %struct.path*, %struct.path** %4, align 8
  %99 = getelementptr inbounds %struct.path, %struct.path* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @dissolve_on_fput(i32* %100)
  br label %108

102:                                              ; preds = %65
  %103 = load i32, i32* @FMODE_NEED_UNMOUNT, align 4
  %104 = load %struct.file*, %struct.file** %10, align 8
  %105 = getelementptr inbounds %struct.file, %struct.file* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %109, %struct.file** %3, align 8
  br label %110

110:                                              ; preds = %108, %38, %25
  %111 = load %struct.file*, %struct.file** %3, align 8
  ret %struct.file* %111
}

declare dso_local %struct.mount* @alloc_mnt_ns(%struct.user_namespace*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mount*) #1

declare dso_local %struct.mount* @ERR_CAST(%struct.mount*) #1

declare dso_local i32 @namespace_lock(...) #1

declare dso_local %struct.mount* @__do_loopback(%struct.path*, i32) #1

declare dso_local i32 @namespace_unlock(...) #1

declare dso_local i32 @free_mnt_ns(%struct.mount*) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local %struct.mount* @next_mnt(%struct.mount*, %struct.mount*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mntget(i32*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @mntput(i32*) #1

declare dso_local %struct.mount* @dentry_open(%struct.path*, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @dissolve_on_fput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
