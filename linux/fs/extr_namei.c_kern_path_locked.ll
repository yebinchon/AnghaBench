; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_kern_path_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_kern_path_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type opaque
%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.filename = type { i32 }
%struct.qstr = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I_MUTEX_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @kern_path_locked(i8* %0, %struct.path* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.filename*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.qstr, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %10 = load i32, i32* @AT_FDCWD, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @getname_kernel(i8* %11)
  %13 = load %struct.path*, %struct.path** %5, align 8
  %14 = call %struct.filename* @filename_parentat(i32 %10, i32 %12, i32 0, %struct.path* %13, %struct.qstr* %8, i32* %9)
  store %struct.filename* %14, %struct.filename** %6, align 8
  %15 = load %struct.filename*, %struct.filename** %6, align 8
  %16 = call i64 @IS_ERR(%struct.filename* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.filename*, %struct.filename** %6, align 8
  %20 = call %struct.filename* @ERR_CAST(%struct.filename* %19)
  %21 = bitcast %struct.filename* %20 to %struct.dentry*
  store %struct.dentry* %21, %struct.dentry** %3, align 8
  br label %68

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LAST_NORM, align 4
  %25 = icmp ne i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.path*, %struct.path** %5, align 8
  %31 = call i32 @path_put(%struct.path* %30)
  %32 = load %struct.filename*, %struct.filename** %6, align 8
  %33 = call i32 @putname(%struct.filename* %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.filename* @ERR_PTR(i32 %35)
  %37 = bitcast %struct.filename* %36 to %struct.dentry*
  store %struct.dentry* %37, %struct.dentry** %3, align 8
  br label %68

38:                                               ; preds = %22
  %39 = load %struct.path*, %struct.path** %5, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @I_MUTEX_PARENT, align 4
  %45 = call i32 @inode_lock_nested(i32 %43, i32 %44)
  %46 = load %struct.path*, %struct.path** %5, align 8
  %47 = getelementptr inbounds %struct.path, %struct.path* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call %struct.filename* @__lookup_hash(%struct.qstr* %8, %struct.TYPE_2__* %48, i32 0)
  %50 = bitcast %struct.filename* %49 to %struct.dentry*
  store %struct.dentry* %50, %struct.dentry** %7, align 8
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = bitcast %struct.dentry* %51 to %struct.filename*
  %53 = call i64 @IS_ERR(%struct.filename* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %38
  %56 = load %struct.path*, %struct.path** %5, align 8
  %57 = getelementptr inbounds %struct.path, %struct.path* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @inode_unlock(i32 %60)
  %62 = load %struct.path*, %struct.path** %5, align 8
  %63 = call i32 @path_put(%struct.path* %62)
  br label %64

64:                                               ; preds = %55, %38
  %65 = load %struct.filename*, %struct.filename** %6, align 8
  %66 = call i32 @putname(%struct.filename* %65)
  %67 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %67, %struct.dentry** %3, align 8
  br label %68

68:                                               ; preds = %64, %29, %18
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %69
}

declare dso_local %struct.filename* @filename_parentat(i32, i32, i32, %struct.path*, %struct.qstr*, i32*) #1

declare dso_local i32 @getname_kernel(i8*) #1

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local %struct.filename* @ERR_CAST(%struct.filename*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @putname(%struct.filename*) #1

declare dso_local %struct.filename* @ERR_PTR(i32) #1

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local %struct.filename* @__lookup_hash(%struct.qstr*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
