; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_mixer_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_mixer_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32 }
%struct.uac_mixer_unit_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_mixer_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_mixer_unit(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_desc_validator*, align 8
  %6 = alloca %struct.uac_mixer_unit_descriptor*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.uac_mixer_unit_descriptor*
  store %struct.uac_mixer_unit_descriptor* %9, %struct.uac_mixer_unit_descriptor** %6, align 8
  %10 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %6, align 8
  %11 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %6, align 8
  %23 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = add i64 8, %25
  store i64 %26, i64* %7, align 8
  %27 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %5, align 8
  %28 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %31 [
    i32 130, label %30
    i32 129, label %36
    i32 128, label %41
  ]

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %21, %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 3
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %44

36:                                               ; preds = %21
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %37, 5
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 2
  store i64 %40, i64* %7, align 8
  br label %44

41:                                               ; preds = %21
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 2
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %41, %36, %31
  %45 = load %struct.uac_mixer_unit_descriptor*, %struct.uac_mixer_unit_descriptor** %6, align 8
  %46 = getelementptr inbounds %struct.uac_mixer_unit_descriptor, %struct.uac_mixer_unit_descriptor* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %7, align 8
  %50 = icmp uge i64 %48, %49
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
