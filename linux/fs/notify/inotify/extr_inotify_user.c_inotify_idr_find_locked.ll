; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_idr_find_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_idr_find_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_inode_mark = type { %struct.fsnotify_mark }
%struct.fsnotify_mark = type { i32 }
%struct.fsnotify_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.idr }
%struct.idr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inotify_inode_mark* (%struct.fsnotify_group*, i32)* @inotify_idr_find_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inotify_inode_mark* @inotify_idr_find_locked(%struct.fsnotify_group* %0, i32 %1) #0 {
  %3 = alloca %struct.fsnotify_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.idr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inotify_inode_mark*, align 8
  %8 = alloca %struct.fsnotify_mark*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %10 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store %struct.idr* %11, %struct.idr** %5, align 8
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %13 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @assert_spin_locked(i32* %15)
  %17 = load %struct.idr*, %struct.idr** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.inotify_inode_mark* @idr_find(%struct.idr* %17, i32 %18)
  store %struct.inotify_inode_mark* %19, %struct.inotify_inode_mark** %7, align 8
  %20 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %7, align 8
  %21 = icmp ne %struct.inotify_inode_mark* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %7, align 8
  %24 = getelementptr inbounds %struct.inotify_inode_mark, %struct.inotify_inode_mark* %23, i32 0, i32 0
  store %struct.fsnotify_mark* %24, %struct.fsnotify_mark** %8, align 8
  %25 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %8, align 8
  %26 = call i32 @fsnotify_get_mark(%struct.fsnotify_mark* %25)
  %27 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %8, align 8
  %28 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %27, i32 0, i32 0
  %29 = call i32 @refcount_read(i32* %28)
  %30 = icmp slt i32 %29, 2
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  br label %33

33:                                               ; preds = %22, %2
  %34 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %7, align 8
  ret %struct.inotify_inode_mark* %34
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local %struct.inotify_inode_mark* @idr_find(%struct.idr*, i32) #1

declare dso_local i32 @fsnotify_get_mark(%struct.fsnotify_mark*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
