; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_sound.c_snd_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_sound.c_snd_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_minor = type { i32, i32, i32, %struct.device*, %struct.snd_card*, i8*, %struct.file_operations* }
%struct.device = type { i32 }
%struct.snd_card = type { i32 }
%struct.file_operations = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sound_mutex = common dso_local global i32 0, align 4
@major = common dso_local global i32 0, align 4
@snd_minors = common dso_local global %struct.snd_minor** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_register_device(i32 %0, %struct.snd_card* %1, i32 %2, %struct.file_operations* %3, i8* %4, %struct.device* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.snd_card*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.snd_minor*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.snd_card* %1, %struct.snd_card** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.file_operations* %3, %struct.file_operations** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.device* %5, %struct.device** %13, align 8
  store i32 0, i32* %15, align 4
  %17 = load %struct.device*, %struct.device** %13, align 8
  %18 = icmp ne %struct.device* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @snd_BUG_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %99

26:                                               ; preds = %6
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.snd_minor* @kmalloc(i32 48, i32 %27)
  store %struct.snd_minor* %28, %struct.snd_minor** %16, align 8
  %29 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %30 = icmp eq %struct.snd_minor* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %99

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %37 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %39 = icmp ne %struct.snd_card* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ -1, %44 ]
  %47 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %48 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %51 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %53 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %54 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %53, i32 0, i32 6
  store %struct.file_operations* %52, %struct.file_operations** %54, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %57 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %59 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %60 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %59, i32 0, i32 4
  store %struct.snd_card* %58, %struct.snd_card** %60, align 8
  %61 = call i32 @mutex_lock(i32* @sound_mutex)
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.snd_card*, %struct.snd_card** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @snd_find_free_minor(i32 %62, %struct.snd_card* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %45
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %15, align 4
  br label %90

70:                                               ; preds = %45
  %71 = load %struct.device*, %struct.device** %13, align 8
  %72 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %73 = getelementptr inbounds %struct.snd_minor, %struct.snd_minor* %72, i32 0, i32 3
  store %struct.device* %71, %struct.device** %73, align 8
  %74 = load i32, i32* @major, align 4
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @MKDEV(i32 %74, i32 %75)
  %77 = load %struct.device*, %struct.device** %13, align 8
  %78 = getelementptr inbounds %struct.device, %struct.device* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load %struct.device*, %struct.device** %13, align 8
  %80 = call i32 @device_add(%struct.device* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %90

84:                                               ; preds = %70
  %85 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %86 = load %struct.snd_minor**, %struct.snd_minor*** @snd_minors, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.snd_minor*, %struct.snd_minor** %86, i64 %88
  store %struct.snd_minor* %85, %struct.snd_minor** %89, align 8
  br label %90

90:                                               ; preds = %84, %83, %68
  %91 = call i32 @mutex_unlock(i32* @sound_mutex)
  %92 = load i32, i32* %15, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load %struct.snd_minor*, %struct.snd_minor** %16, align 8
  %96 = call i32 @kfree(%struct.snd_minor* %95)
  br label %97

97:                                               ; preds = %94, %90
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %7, align 4
  br label %99

99:                                               ; preds = %97, %31, %23
  %100 = load i32, i32* %7, align 4
  ret i32 %100
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_minor* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_find_free_minor(i32, %struct.snd_card*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @device_add(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.snd_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
