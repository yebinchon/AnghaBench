; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_send_command_bank.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/caiaq/extr_device.c_snd_usb_caiaq_send_command_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_caiaqdev = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@EIO = common dso_local global i32 0, align 4
@EP1_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_usb_caiaq_send_command_bank(%struct.snd_usb_caiaqdev* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_usb_caiaqdev*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_device*, align 8
  store %struct.snd_usb_caiaqdev* %0, %struct.snd_usb_caiaqdev** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %15 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %13, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %19 = icmp ne %struct.usb_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %66

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @EP1_BUFSIZE, align 4
  %26 = sub nsw i32 %25, 2
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EP1_BUFSIZE, align 4
  %30 = sub nsw i32 %29, 2
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i8*, i8** %10, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %39 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 2
  %42 = ptrtoint i8* %41 to i32
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @memcpy(i32 %42, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %34, %31
  %47 = load i8, i8* %8, align 1
  %48 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %49 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  store i8 %47, i8* %51, align 1
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %54 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %52, i8* %56, align 1
  %57 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %59 = call i32 @usb_sndbulkpipe(%struct.usb_device* %58, i32 1)
  %60 = load %struct.snd_usb_caiaqdev*, %struct.snd_usb_caiaqdev** %7, align 8
  %61 = getelementptr inbounds %struct.snd_usb_caiaqdev, %struct.snd_usb_caiaqdev* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 2
  %65 = call i32 @usb_bulk_msg(%struct.usb_device* %57, i32 %59, i8* %62, i32 %64, i32* %12, i32 200)
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %46, %20
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
