; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_hwdep.c_snd_hwdep_dev_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device = type { %struct.snd_hwdep* }
%struct.snd_hwdep = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@ENXIO = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_device*)* @snd_hwdep_dev_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hwdep_dev_disconnect(%struct.snd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_device*, align 8
  %4 = alloca %struct.snd_hwdep*, align 8
  store %struct.snd_device* %0, %struct.snd_device** %3, align 8
  %5 = load %struct.snd_device*, %struct.snd_device** %3, align 8
  %6 = getelementptr inbounds %struct.snd_device, %struct.snd_device* %5, i32 0, i32 0
  %7 = load %struct.snd_hwdep*, %struct.snd_hwdep** %6, align 8
  store %struct.snd_hwdep* %7, %struct.snd_hwdep** %4, align 8
  %8 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %9 = icmp ne %struct.snd_hwdep* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @snd_BUG_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  %18 = call i32 @mutex_lock(i32* @register_mutex)
  %19 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %20 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %23 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.snd_hwdep* @snd_hwdep_search(i32 %21, i32 %24)
  %26 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %27 = icmp ne %struct.snd_hwdep* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %17
  %29 = call i32 @mutex_unlock(i32* @register_mutex)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %49

32:                                               ; preds = %17
  %33 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %34 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %37 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %36, i32 0, i32 7
  %38 = call i32 @wake_up(i32* %37)
  %39 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %40 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %39, i32 0, i32 2
  %41 = call i32 @snd_unregister_device(i32* %40)
  %42 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %43 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %42, i32 0, i32 1
  %44 = call i32 @list_del_init(i32* %43)
  %45 = load %struct.snd_hwdep*, %struct.snd_hwdep** %4, align 8
  %46 = getelementptr inbounds %struct.snd_hwdep, %struct.snd_hwdep* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = call i32 @mutex_unlock(i32* @register_mutex)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %32, %28, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_hwdep* @snd_hwdep_search(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_unregister_device(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
