; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_snd_rawmidi_kernel_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_rawmidi_file = type { i32 }
%struct.snd_rawmidi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@register_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_rawmidi_kernel_open(%struct.snd_card* %0, i32 %1, i32 %2, i32 %3, %struct.snd_rawmidi_file* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_rawmidi_file*, align 8
  %12 = alloca %struct.snd_rawmidi*, align 8
  %13 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.snd_rawmidi_file* %4, %struct.snd_rawmidi_file** %11, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %11, align 8
  %15 = icmp ne %struct.snd_rawmidi_file* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %74

23:                                               ; preds = %5
  %24 = call i32 @mutex_lock(i32* @register_mutex)
  %25 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.snd_rawmidi* @snd_rawmidi_search(%struct.snd_card* %25, i32 %26)
  store %struct.snd_rawmidi* %27, %struct.snd_rawmidi** %12, align 8
  %28 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %29 = icmp ne %struct.snd_rawmidi* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %13, align 4
  br label %45

33:                                               ; preds = %23
  %34 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %35 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @try_module_get(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %30
  %46 = call i32 @mutex_unlock(i32* @register_mutex)
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %74

51:                                               ; preds = %45
  %52 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %53 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.snd_rawmidi_file*, %struct.snd_rawmidi_file** %11, align 8
  %59 = call i32 @rawmidi_open_priv(%struct.snd_rawmidi* %55, i32 %56, i32 %57, %struct.snd_rawmidi_file* %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %61 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %13, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %51
  %66 = load %struct.snd_rawmidi*, %struct.snd_rawmidi** %12, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi, %struct.snd_rawmidi* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @module_put(i32 %70)
  br label %72

72:                                               ; preds = %65, %51
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %49, %20
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.snd_rawmidi* @snd_rawmidi_search(%struct.snd_card*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rawmidi_open_priv(%struct.snd_rawmidi*, i32, i32, %struct.snd_rawmidi_file*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
