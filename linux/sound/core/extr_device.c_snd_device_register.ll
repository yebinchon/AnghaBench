; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_device.c_snd_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_device.c_snd_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_device_register(%struct.snd_card* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_device*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %8 = icmp ne %struct.snd_card* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @snd_BUG_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %13
  %22 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.snd_device* @look_for_dev(%struct.snd_card* %22, i8* %23)
  store %struct.snd_device* %24, %struct.snd_device** %6, align 8
  %25 = load %struct.snd_device*, %struct.snd_device** %6, align 8
  %26 = icmp ne %struct.snd_device* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load %struct.snd_device*, %struct.snd_device** %6, align 8
  %29 = call i32 @__snd_device_register(%struct.snd_device* %28)
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %21
  %31 = call i32 (...) @snd_BUG()
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %27, %18
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local %struct.snd_device* @look_for_dev(%struct.snd_card*, i8*) #1

declare dso_local i32 @__snd_device_register(%struct.snd_device*) #1

declare dso_local i32 @snd_BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
