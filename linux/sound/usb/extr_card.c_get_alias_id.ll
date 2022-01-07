; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_card.c_get_alias_id.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_card.c_get_alias_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@quirk_alias = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%x:%x\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"device (%04x:%04x): applying quirk alias %04x:%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32*)* @get_alias_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alias_id(%struct.usb_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %51, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** @quirk_alias, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %9
  %15 = load i32*, i32** @quirk_alias, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load i32*, i32** @quirk_alias, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sscanf(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %7, i32* %8)
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %21, %14
  br label %51

35:                                               ; preds = %29
  %36 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @USB_ID_VENDOR(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @USB_ID_PRODUCT(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @USB_ID_VENDOR(i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @USB_ID_PRODUCT(i32 %46)
  %48 = call i32 @dev_info(i32* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %43, i32 %45, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  store i32 1, i32* %3, align 4
  br label %55

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %9

54:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %35
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @USB_ID_VENDOR(i32) #1

declare dso_local i32 @USB_ID_PRODUCT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
