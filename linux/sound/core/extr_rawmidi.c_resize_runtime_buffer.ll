; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_resize_runtime_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_rawmidi.c_resize_runtime_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_rawmidi_runtime = type { i32, i8*, i32, i32 }
%struct.snd_rawmidi_params = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_params*, i32)* @resize_runtime_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_runtime_buffer(%struct.snd_rawmidi_runtime* %0, %struct.snd_rawmidi_params* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_rawmidi_runtime*, align 8
  %6 = alloca %struct.snd_rawmidi_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.snd_rawmidi_runtime* %0, %struct.snd_rawmidi_runtime** %5, align 8
  store %struct.snd_rawmidi_params* %1, %struct.snd_rawmidi_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %11 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %16 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp sgt i64 %18, 1048576
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %14
  %24 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %25 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %30 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %33 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %87

39:                                               ; preds = %28
  %40 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %41 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %44 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %39
  %48 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %49 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kvzalloc(i32 %50, i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %87

58:                                               ; preds = %47
  %59 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %59, i32 0, i32 3
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %63 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %67 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %69 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %72 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @__reset_runtime_ptrs(%struct.snd_rawmidi_runtime* %73, i32 %74)
  %76 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %77 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %76, i32 0, i32 3
  %78 = call i32 @spin_unlock_irq(i32* %77)
  %79 = load i8*, i8** %9, align 8
  %80 = call i32 @kvfree(i8* %79)
  br label %81

81:                                               ; preds = %58, %39
  %82 = load %struct.snd_rawmidi_params*, %struct.snd_rawmidi_params** %6, align 8
  %83 = getelementptr inbounds %struct.snd_rawmidi_params, %struct.snd_rawmidi_params* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_rawmidi_runtime*, %struct.snd_rawmidi_runtime** %5, align 8
  %86 = getelementptr inbounds %struct.snd_rawmidi_runtime, %struct.snd_rawmidi_runtime* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %81, %55, %36, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__reset_runtime_ptrs(%struct.snd_rawmidi_runtime*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
