; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_create_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_vfs_create_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fs_context = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.mount = type { %struct.vfsmount, i32, %struct.mount*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SB_KERNMOUNT = common dso_local global i32 0, align 4
@MNT_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vfsmount* @vfs_create_mount(%struct.fs_context* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.vfsmount* @ERR_PTR(i32 %11)
  store %struct.vfsmount* %12, %struct.vfsmount** %2, align 8
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = inttoptr i64 %16 to i8*
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i8* [ %19, %18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %20 ]
  %23 = call %struct.mount* @alloc_vfsmnt(i8* %22)
  store %struct.mount* %23, %struct.mount** %4, align 8
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = icmp ne %struct.mount* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.vfsmount* @ERR_PTR(i32 %28)
  store %struct.vfsmount* %29, %struct.vfsmount** %2, align 8
  br label %86

30:                                               ; preds = %21
  %31 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %32 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SB_KERNMOUNT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @MNT_INTERNAL, align 4
  %39 = load %struct.mount*, %struct.mount** %4, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %44 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = call i32 @atomic_inc(i32* %48)
  %50 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %51 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.mount*, %struct.mount** %4, align 8
  %56 = getelementptr inbounds %struct.mount, %struct.mount* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %56, i32 0, i32 0
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %57, align 8
  %58 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %59 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = call i32 @dget(%struct.TYPE_4__* %60)
  %62 = load %struct.mount*, %struct.mount** %4, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %63, i32 0, i32 1
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mount*, %struct.mount** %4, align 8
  %66 = getelementptr inbounds %struct.mount, %struct.mount* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mount*, %struct.mount** %4, align 8
  %70 = getelementptr inbounds %struct.mount, %struct.mount* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mount*, %struct.mount** %4, align 8
  %72 = load %struct.mount*, %struct.mount** %4, align 8
  %73 = getelementptr inbounds %struct.mount, %struct.mount* %72, i32 0, i32 2
  store %struct.mount* %71, %struct.mount** %73, align 8
  %74 = call i32 (...) @lock_mount_hash()
  %75 = load %struct.mount*, %struct.mount** %4, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 1
  %77 = load %struct.mount*, %struct.mount** %4, align 8
  %78 = getelementptr inbounds %struct.mount, %struct.mount* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = call i32 @list_add_tail(i32* %76, i32* %81)
  %83 = call i32 (...) @unlock_mount_hash()
  %84 = load %struct.mount*, %struct.mount** %4, align 8
  %85 = getelementptr inbounds %struct.mount, %struct.mount* %84, i32 0, i32 0
  store %struct.vfsmount* %85, %struct.vfsmount** %2, align 8
  br label %86

86:                                               ; preds = %42, %26, %9
  %87 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  ret %struct.vfsmount* %87
}

declare dso_local %struct.vfsmount* @ERR_PTR(i32) #1

declare dso_local %struct.mount* @alloc_vfsmnt(i8*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dget(%struct.TYPE_4__*) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
