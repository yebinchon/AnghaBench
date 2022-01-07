; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_register_system.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_snd_timer_register_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer = type { i32, %struct.snd_timer_system_private*, i32, i32 }
%struct.snd_timer_system_private = type { i32, %struct.snd_timer* }

@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1
@SNDRV_TIMER_GLOBAL_SYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"system timer\00", align 1
@snd_timer_system = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_timer_s_function = common dso_local global i32 0, align 4
@snd_timer_free_system = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @snd_timer_register_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_timer_register_system() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.snd_timer*, align 8
  %3 = alloca %struct.snd_timer_system_private*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SNDRV_TIMER_GLOBAL_SYSTEM, align 4
  %6 = call i32 @snd_timer_global_new(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5, %struct.snd_timer** %2)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %1, align 4
  br label %44

11:                                               ; preds = %0
  %12 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %13 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @snd_timer_system, align 4
  %17 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %18 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.snd_timer_system_private* @kzalloc(i32 16, i32 %19)
  store %struct.snd_timer_system_private* %20, %struct.snd_timer_system_private** %3, align 8
  %21 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %22 = icmp eq %struct.snd_timer_system_private* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %11
  %24 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %25 = call i32 @snd_timer_free(%struct.snd_timer* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %1, align 4
  br label %44

28:                                               ; preds = %11
  %29 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %30 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %31 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %30, i32 0, i32 1
  store %struct.snd_timer* %29, %struct.snd_timer** %31, align 8
  %32 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %33 = getelementptr inbounds %struct.snd_timer_system_private, %struct.snd_timer_system_private* %32, i32 0, i32 0
  %34 = load i32, i32* @snd_timer_s_function, align 4
  %35 = call i32 @timer_setup(i32* %33, i32 %34, i32 0)
  %36 = load %struct.snd_timer_system_private*, %struct.snd_timer_system_private** %3, align 8
  %37 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %38 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %37, i32 0, i32 1
  store %struct.snd_timer_system_private* %36, %struct.snd_timer_system_private** %38, align 8
  %39 = load i32, i32* @snd_timer_free_system, align 4
  %40 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %41 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.snd_timer*, %struct.snd_timer** %2, align 8
  %43 = call i32 @snd_timer_global_register(%struct.snd_timer* %42)
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %28, %23, %9
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @snd_timer_global_new(i8*, i32, %struct.snd_timer**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local %struct.snd_timer_system_private* @kzalloc(i32, i32) #1

declare dso_local i32 @snd_timer_free(%struct.snd_timer*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @snd_timer_global_register(%struct.snd_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
