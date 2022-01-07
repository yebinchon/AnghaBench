; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_init_mark.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_init_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, %struct.fsnotify_group*, i32, i32 }
%struct.fsnotify_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsnotify_init_mark(%struct.fsnotify_mark* %0, %struct.fsnotify_group* %1) #0 {
  %3 = alloca %struct.fsnotify_mark*, align 8
  %4 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %3, align 8
  store %struct.fsnotify_group* %1, %struct.fsnotify_group** %4, align 8
  %5 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %6 = call i32 @memset(%struct.fsnotify_mark* %5, i32 0, i32 24)
  %7 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %8 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %7, i32 0, i32 3
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %11 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %10, i32 0, i32 2
  %12 = call i32 @refcount_set(i32* %11, i32 1)
  %13 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %14 = call i32 @fsnotify_get_group(%struct.fsnotify_group* %13)
  %15 = load %struct.fsnotify_group*, %struct.fsnotify_group** %4, align 8
  %16 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %17 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %16, i32 0, i32 1
  store %struct.fsnotify_group* %15, %struct.fsnotify_group** %17, align 8
  %18 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %3, align 8
  %19 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @WRITE_ONCE(i32 %20, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.fsnotify_mark*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @fsnotify_get_group(%struct.fsnotify_group*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
