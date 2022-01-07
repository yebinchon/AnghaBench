; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_unalias.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_unalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.rw_semaphore }
%struct.rw_semaphore = type { i32 }
%struct.TYPE_4__ = type { %struct.mutex }
%struct.mutex = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.dentry*)* @__d_unalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__d_unalias(%struct.inode* %0, %struct.dentry* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.mutex*, align 8
  %8 = alloca %struct.rw_semaphore*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  store %struct.mutex* null, %struct.mutex** %7, align 8
  store %struct.rw_semaphore* null, %struct.rw_semaphore** %8, align 8
  %10 = load i32, i32* @ESTALE, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = load %struct.dentry*, %struct.dentry** %5, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp eq %struct.TYPE_5__* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %48

20:                                               ; preds = %3
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @mutex_trylock(%struct.mutex* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %52

28:                                               ; preds = %20
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.mutex* %32, %struct.mutex** %7, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call i32 @inode_trylock_shared(%struct.TYPE_6__* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %52

41:                                               ; preds = %28
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store %struct.rw_semaphore* %47, %struct.rw_semaphore** %8, align 8
  br label %48

48:                                               ; preds = %41, %19
  %49 = load %struct.dentry*, %struct.dentry** %6, align 8
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = call i32 @__d_move(%struct.dentry* %49, %struct.dentry* %50, i32 0)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %48, %40, %27
  %53 = load %struct.rw_semaphore*, %struct.rw_semaphore** %8, align 8
  %54 = icmp ne %struct.rw_semaphore* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.rw_semaphore*, %struct.rw_semaphore** %8, align 8
  %57 = call i32 @up_read(%struct.rw_semaphore* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.mutex*, %struct.mutex** %7, align 8
  %60 = icmp ne %struct.mutex* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.mutex*, %struct.mutex** %7, align 8
  %63 = call i32 @mutex_unlock(%struct.mutex* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_trylock(%struct.mutex*) #1

declare dso_local i32 @inode_trylock_shared(%struct.TYPE_6__*) #1

declare dso_local i32 @__d_move(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @up_read(%struct.rw_semaphore*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
