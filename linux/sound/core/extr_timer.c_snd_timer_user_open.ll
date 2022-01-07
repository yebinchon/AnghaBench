; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_user_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.snd_timer_user* }
%struct.snd_timer_user = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @snd_timer_user_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_user_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_timer_user*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @stream_open(%struct.inode* %8, %struct.file* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %47

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.snd_timer_user* @kzalloc(i32 16, i32 %16)
  store %struct.snd_timer_user* %17, %struct.snd_timer_user** %6, align 8
  %18 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %19 = icmp eq %struct.snd_timer_user* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %15
  %24 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %25 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %24, i32 0, i32 3
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %28 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %27, i32 0, i32 2
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %31 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %34 = getelementptr inbounds %struct.snd_timer_user, %struct.snd_timer_user* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %36 = call i64 @realloc_user_queue(%struct.snd_timer_user* %35, i32 128)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %23
  %39 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %40 = call i32 @kfree(%struct.snd_timer_user* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %23
  %44 = load %struct.snd_timer_user*, %struct.snd_timer_user** %6, align 8
  %45 = load %struct.file*, %struct.file** %5, align 8
  %46 = getelementptr inbounds %struct.file, %struct.file* %45, i32 0, i32 0
  store %struct.snd_timer_user* %44, %struct.snd_timer_user** %46, align 8
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %38, %20, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #1

declare dso_local %struct.snd_timer_user* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @realloc_user_queue(%struct.snd_timer_user*, i32) #1

declare dso_local i32 @kfree(%struct.snd_timer_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
