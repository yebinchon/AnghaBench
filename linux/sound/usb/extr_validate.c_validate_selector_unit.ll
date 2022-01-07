; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_selector_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_selector_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32 }
%struct.uac_selector_unit_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_selector_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_selector_unit(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_desc_validator*, align 8
  %6 = alloca %struct.uac_selector_unit_descriptor*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uac_selector_unit_descriptor*
  store %struct.uac_selector_unit_descriptor* %9, %struct.uac_selector_unit_descriptor** %6, align 8
  %10 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %6, align 8
  %11 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %6, align 8
  %18 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 8, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %23 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 130, label %25
    i32 129, label %29
    i32 128, label %32
  ]

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %16, %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %7, align 8
  br label %35

29:                                               ; preds = %16
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 2
  store i64 %31, i64* %7, align 8
  br label %35

32:                                               ; preds = %16
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, 6
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %32, %29, %26
  %36 = load %struct.uac_selector_unit_descriptor*, %struct.uac_selector_unit_descriptor** %6, align 8
  %37 = getelementptr inbounds %struct.uac_selector_unit_descriptor, %struct.uac_selector_unit_descriptor* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %7, align 8
  %41 = icmp uge i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %35, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
