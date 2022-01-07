; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_add_vfsmount_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_add_vfsmount_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_group = type { i32 }
%struct.vfsmount = type { i32 }
%struct.TYPE_2__ = type { i32 }

@FSNOTIFY_OBJ_TYPE_VFSMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_group*, %struct.vfsmount*, i32, i32, i32*)* @fanotify_add_vfsmount_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_add_vfsmount_mark(%struct.fsnotify_group* %0, %struct.vfsmount* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.fsnotify_group*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.fsnotify_group* %0, %struct.fsnotify_group** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.fsnotify_group*, %struct.fsnotify_group** %6, align 8
  %12 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %13 = call %struct.TYPE_2__* @real_mount(%struct.vfsmount* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @FSNOTIFY_OBJ_TYPE_VFSMOUNT, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @fanotify_add_mark(%struct.fsnotify_group* %11, i32* %14, i32 %15, i32 %16, i32 %17, i32* %18)
  ret i32 %19
}

declare dso_local i32 @fanotify_add_mark(%struct.fsnotify_group*, i32*, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_2__* @real_mount(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
