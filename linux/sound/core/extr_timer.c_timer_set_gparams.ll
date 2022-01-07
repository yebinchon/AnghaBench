; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_timer.c_timer_set_gparams.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_timer.c_timer_set_gparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_timer_gparams = type { i32, i32, i32 }
%struct.snd_timer = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.snd_timer.0*, i32, i32)* }
%struct.snd_timer.0 = type opaque

@register_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_timer_gparams*)* @timer_set_gparams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timer_set_gparams(%struct.snd_timer_gparams* %0) #0 {
  %2 = alloca %struct.snd_timer_gparams*, align 8
  %3 = alloca %struct.snd_timer*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_timer_gparams* %0, %struct.snd_timer_gparams** %2, align 8
  %5 = call i32 @mutex_lock(i32* @register_mutex)
  %6 = load %struct.snd_timer_gparams*, %struct.snd_timer_gparams** %2, align 8
  %7 = getelementptr inbounds %struct.snd_timer_gparams, %struct.snd_timer_gparams* %6, i32 0, i32 2
  %8 = call %struct.snd_timer* @snd_timer_find(i32* %7)
  store %struct.snd_timer* %8, %struct.snd_timer** %3, align 8
  %9 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %10 = icmp ne %struct.snd_timer* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %45

14:                                               ; preds = %1
  %15 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %16 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %24 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_timer.0*, i32, i32)*, i32 (%struct.snd_timer.0*, i32, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.snd_timer.0*, i32, i32)* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %33 = getelementptr inbounds %struct.snd_timer, %struct.snd_timer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.snd_timer.0*, i32, i32)*, i32 (%struct.snd_timer.0*, i32, i32)** %34, align 8
  %36 = load %struct.snd_timer*, %struct.snd_timer** %3, align 8
  %37 = bitcast %struct.snd_timer* %36 to %struct.snd_timer.0*
  %38 = load %struct.snd_timer_gparams*, %struct.snd_timer_gparams** %2, align 8
  %39 = getelementptr inbounds %struct.snd_timer_gparams, %struct.snd_timer_gparams* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.snd_timer_gparams*, %struct.snd_timer_gparams** %2, align 8
  %42 = getelementptr inbounds %struct.snd_timer_gparams, %struct.snd_timer_gparams* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %35(%struct.snd_timer.0* %37, i32 %40, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %31, %28, %19, %11
  %46 = call i32 @mutex_unlock(i32* @register_mutex)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_timer* @snd_timer_find(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
