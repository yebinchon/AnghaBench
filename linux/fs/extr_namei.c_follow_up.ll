; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32*, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.mount = type { i32, i32, %struct.mount* }

@mount_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @follow_up(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %7 = load %struct.path*, %struct.path** %3, align 8
  %8 = getelementptr inbounds %struct.path, %struct.path* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = call %struct.mount* @real_mount(i32* %9)
  store %struct.mount* %10, %struct.mount** %4, align 8
  %11 = call i32 @read_seqlock_excl(i32* @mount_lock)
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 2
  %14 = load %struct.mount*, %struct.mount** %13, align 8
  store %struct.mount* %14, %struct.mount** %5, align 8
  %15 = load %struct.mount*, %struct.mount** %5, align 8
  %16 = load %struct.mount*, %struct.mount** %4, align 8
  %17 = icmp eq %struct.mount* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  store i32 0, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.mount*, %struct.mount** %5, align 8
  %22 = getelementptr inbounds %struct.mount, %struct.mount* %21, i32 0, i32 0
  %23 = call i32 @mntget(i32* %22)
  %24 = load %struct.mount*, %struct.mount** %4, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.dentry* @dget(i32 %26)
  store %struct.dentry* %27, %struct.dentry** %6, align 8
  %28 = call i32 @read_sequnlock_excl(i32* @mount_lock)
  %29 = load %struct.path*, %struct.path** %3, align 8
  %30 = getelementptr inbounds %struct.path, %struct.path* %29, i32 0, i32 1
  %31 = load %struct.dentry*, %struct.dentry** %30, align 8
  %32 = call i32 @dput(%struct.dentry* %31)
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = load %struct.path*, %struct.path** %3, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 1
  store %struct.dentry* %33, %struct.dentry** %35, align 8
  %36 = load %struct.path*, %struct.path** %3, align 8
  %37 = getelementptr inbounds %struct.path, %struct.path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @mntput(i32* %38)
  %40 = load %struct.mount*, %struct.mount** %5, align 8
  %41 = getelementptr inbounds %struct.mount, %struct.mount* %40, i32 0, i32 0
  %42 = load %struct.path*, %struct.path** %3, align 8
  %43 = getelementptr inbounds %struct.path, %struct.path* %42, i32 0, i32 0
  store i32* %41, i32** %43, align 8
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %20, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.mount* @real_mount(i32*) #1

declare dso_local i32 @read_seqlock_excl(i32*) #1

declare dso_local i32 @read_sequnlock_excl(i32*) #1

declare dso_local i32 @mntget(i32*) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @mntput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
