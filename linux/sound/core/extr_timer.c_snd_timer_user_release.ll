; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_release.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { %struct.snd_timer_user*, %struct.snd_timer_user*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_timer_user_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_user_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.snd_timer_user*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.snd_timer_user*, %struct.snd_timer_user** %7, align 8
  %9 = icmp ne %struct.snd_timer_user* %8, null
  br i1 %9, label %10, label %42

10:                                               ; preds = %2
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load %struct.snd_timer_user*, %struct.snd_timer_user** %12, align 8
  store %struct.snd_timer_user* %13, %struct.snd_timer_user** %5, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  store %struct.snd_timer_user* null, %struct.snd_timer_user** %15, align 8
  %16 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %17 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %20 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %25 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @snd_timer_close(i64 %26)
  br label %28

28:                                               ; preds = %23, %10
  %29 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %30 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %33 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %32, i32 0, i32 1
  %34 = load %struct.snd_timer_user*, %struct.snd_timer_user** %33, align 8
  %35 = call i32 @kfree(%struct.snd_timer_user* %34)
  %36 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %37 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %36, i32 0, i32 0
  %38 = load %struct.snd_timer_user*, %struct.snd_timer_user** %37, align 8
  %39 = call i32 @kfree(%struct.snd_timer_user* %38)
  %40 = load %struct.snd_timer_user*, %struct.snd_timer_user** %5, align 8
  %41 = call i32 @kfree(%struct.snd_timer_user* %40)
  br label %42

42:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_timer_close(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_timer_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
