; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_file_add.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_init.c_snd_card_file_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32, i64 }
%struct.file = type { i32 }
%struct.snd_monitor_file = type { i32, i32, i32*, %struct.file* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_card_file_add(%struct.snd_card* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.snd_monitor_file*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_monitor_file* @kmalloc(i32 24, i32 %7)
  store %struct.snd_monitor_file* %8, %struct.snd_monitor_file** %6, align 8
  %9 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %10 = icmp eq %struct.snd_monitor_file* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %50

14:                                               ; preds = %2
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %17 = getelementptr inbounds %struct.snd_monitor_file, %struct.snd_monitor_file* %16, i32 0, i32 3
  store %struct.file* %15, %struct.file** %17, align 8
  %18 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %19 = getelementptr inbounds %struct.snd_monitor_file, %struct.snd_monitor_file* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %21 = getelementptr inbounds %struct.snd_monitor_file, %struct.snd_monitor_file* %20, i32 0, i32 1
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %14
  %31 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %35 = call i32 @kfree(%struct.snd_monitor_file* %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %14
  %39 = load %struct.snd_monitor_file*, %struct.snd_monitor_file** %6, align 8
  %40 = getelementptr inbounds %struct.snd_monitor_file, %struct.snd_monitor_file* %39, i32 0, i32 0
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 2
  %43 = call i32 @list_add(i32* %40, i32* %42)
  %44 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %45 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %44, i32 0, i32 1
  %46 = call i32 @get_device(i32* %45)
  %47 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %48 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %38, %30, %11
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.snd_monitor_file* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_monitor_file*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @get_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
