; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_mark_remove_from_mask.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_mark_remove_from_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, i32, i32 }

@FAN_MARK_IGNORED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_mark*, i32, i32, i32*)* @fanotify_mark_remove_from_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_mark_remove_from_mask(%struct.fsnotify_mark* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.fsnotify_mark*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %11 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %10, i32 0, i32 2
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @FAN_MARK_IGNORED_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %19 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %24 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %34

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %31 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %17
  %35 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %36 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %39 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %37, %40
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %8, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %5, align 8
  %47 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %46, i32 0, i32 2
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %49, %50
  ret i32 %51
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
