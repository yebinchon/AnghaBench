; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_idr_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_user.c_inotify_idr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_inode_mark = type { i32 }
%struct.fsnotify_group = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inotify_inode_mark* (%struct.fsnotify_group*, i32)* @inotify_idr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inotify_inode_mark* @inotify_idr_find(%struct.fsnotify_group* %0, i32 %1) #0 {
  %3 = alloca %struct.fsnotify_group*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inotify_inode_mark*, align 8
  %6 = alloca i32*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %8 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.inotify_inode_mark* @inotify_idr_find_locked(%struct.fsnotify_group* %12, i32 %13)
  store %struct.inotify_inode_mark* %14, %struct.inotify_inode_mark** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load %struct.inotify_inode_mark*, %struct.inotify_inode_mark** %5, align 8
  ret %struct.inotify_inode_mark* %17
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inotify_inode_mark* @inotify_idr_find_locked(%struct.fsnotify_group*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
