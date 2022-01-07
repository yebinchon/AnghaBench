; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_pin.c_pin_insert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_pin.c_pin_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_pin = type { i32, i32 }
%struct.vfsmount = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@pin_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pin_insert(%struct.fs_pin* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.fs_pin*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  store %struct.fs_pin* %0, %struct.fs_pin** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %5 = call i32 @spin_lock(i32* @pin_lock)
  %6 = load %struct.fs_pin*, %struct.fs_pin** %3, align 8
  %7 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %6, i32 0, i32 1
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @hlist_add_head(i32* %7, i32* %11)
  %13 = load %struct.fs_pin*, %struct.fs_pin** %3, align 8
  %14 = getelementptr inbounds %struct.fs_pin, %struct.fs_pin* %13, i32 0, i32 0
  %15 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %16 = call %struct.TYPE_4__* @real_mount(%struct.vfsmount* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @hlist_add_head(i32* %14, i32* %17)
  %19 = call i32 @spin_unlock(i32* @pin_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @real_mount(%struct.vfsmount*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
