; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_uac2_feature_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_uac2_feature_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32 }
%struct.uac2_feature_unit_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_uac2_feature_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_uac2_feature_unit(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_desc_validator*, align 8
  %6 = alloca %struct.uac2_feature_unit_descriptor*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uac2_feature_unit_descriptor*
  store %struct.uac2_feature_unit_descriptor* %8, %struct.uac2_feature_unit_descriptor** %6, align 8
  %9 = load %struct.uac2_feature_unit_descriptor*, %struct.uac2_feature_unit_descriptor** %6, align 8
  %10 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, %struct.uac2_feature_unit_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load %struct.uac2_feature_unit_descriptor*, %struct.uac2_feature_unit_descriptor** %6, align 8
  %17 = getelementptr inbounds %struct.uac2_feature_unit_descriptor, %struct.uac2_feature_unit_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp uge i64 %19, 9
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
