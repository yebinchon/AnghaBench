; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_lock_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_lock_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@I_MUTEX_CHILD = common dso_local global i32 0, align 4
@I_MUTEX_PARENT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @lock_rename(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = icmp eq %struct.dentry* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @I_MUTEX_PARENT, align 4
  %15 = call i32 @inode_lock_nested(i32 %13, i32 %14)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %68

16:                                               ; preds = %2
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call %struct.dentry* @d_ancestor(%struct.dentry* %22, %struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %6, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @I_MUTEX_PARENT, align 4
  %32 = call i32 @inode_lock_nested(i32 %30, i32 %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I_MUTEX_CHILD, align 4
  %37 = call i32 @inode_lock_nested(i32 %35, i32 %36)
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %38, %struct.dentry** %3, align 8
  br label %68

39:                                               ; preds = %16
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = load %struct.dentry*, %struct.dentry** %5, align 8
  %42 = call %struct.dentry* @d_ancestor(%struct.dentry* %40, %struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %6, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = icmp ne %struct.dentry* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.dentry*, %struct.dentry** %4, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @I_MUTEX_PARENT, align 4
  %50 = call i32 @inode_lock_nested(i32 %48, i32 %49)
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I_MUTEX_CHILD, align 4
  %55 = call i32 @inode_lock_nested(i32 %53, i32 %54)
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %56, %struct.dentry** %3, align 8
  br label %68

57:                                               ; preds = %39
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I_MUTEX_PARENT, align 4
  %62 = call i32 @inode_lock_nested(i32 %60, i32 %61)
  %63 = load %struct.dentry*, %struct.dentry** %5, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @I_MUTEX_PARENT2, align 4
  %67 = call i32 @inode_lock_nested(i32 %65, i32 %66)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %68

68:                                               ; preds = %57, %45, %27, %10
  %69 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %69
}

declare dso_local i32 @inode_lock_nested(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @d_ancestor(%struct.dentry*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
