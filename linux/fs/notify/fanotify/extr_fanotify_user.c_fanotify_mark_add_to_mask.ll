; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_mark_add_to_mask.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify_user.c_fanotify_mark_add_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { i32, i32, i32, i32 }

@FAN_MARK_IGNORED_MASK = common dso_local global i32 0, align 4
@FAN_MARK_IGNORED_SURV_MODIFY = common dso_local global i32 0, align 4
@FSNOTIFY_MARK_FLAG_IGNORED_SURV_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_mark*, i32, i32)* @fanotify_mark_add_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fanotify_mark_add_to_mask(%struct.fsnotify_mark* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fsnotify_mark*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %9 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @FAN_MARK_IGNORED_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %17 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %21 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %27 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @FAN_MARK_IGNORED_SURV_MODIFY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* @FSNOTIFY_MARK_FLAG_IGNORED_SURV_MODIFY, align 4
  %36 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %37 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %40, %15
  %42 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %4, align 8
  %43 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  ret i32 %48
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
