; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_input.c_snd_usb_caiaq_input_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_input.c_snd_usb_caiaq_input_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_caiaq_input_dispatch(%struct.snd_usb_caiaqdev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_usb_caiaqdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %8 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp ult i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %41

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %41 [
    i32 130, label %20
    i32 129, label %27
    i32 128, label %34
  ]

20:                                               ; preds = %15
  %21 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %24, 1
  %26 = call i32 @snd_caiaq_input_read_analog(%struct.snd_usb_caiaqdev* %21, i8* %23, i32 %25)
  br label %41

27:                                               ; preds = %15
  %28 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i32, i32* %6, align 4
  %32 = sub i32 %31, 1
  %33 = call i32 @snd_caiaq_input_read_erp(%struct.snd_usb_caiaqdev* %28, i8* %30, i32 %32)
  br label %41

34:                                               ; preds = %15
  %35 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %4, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i32, i32* %6, align 4
  %39 = sub i32 %38, 1
  %40 = call i32 @snd_caiaq_input_read_io(%struct.snd_usb_caiaqdev* %35, i8* %37, i32 %39)
  br label %41

41:                                               ; preds = %14, %15, %34, %27, %20
  ret void
}

declare dso_local i32 @snd_caiaq_input_read_analog(%struct.snd_usb_caiaqdev*, i8*, i32) #1

declare dso_local i32 @snd_caiaq_input_read_erp(%struct.snd_usb_caiaqdev*, i8*, i32) #1

declare dso_local i32 @snd_caiaq_input_read_io(%struct.snd_usb_caiaqdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
