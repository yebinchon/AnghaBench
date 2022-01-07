; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_uac1_feature_unit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_uac1_feature_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i32 }
%struct.uac_feature_unit_descriptor = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.usb_desc_validator*)* @validate_uac1_feature_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_uac1_feature_unit(i8* %0, %struct.usb_desc_validator* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.usb_desc_validator*, align 8
  %6 = alloca %struct.uac_feature_unit_descriptor*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.usb_desc_validator* %1, %struct.usb_desc_validator** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uac_feature_unit_descriptor*
  store %struct.uac_feature_unit_descriptor* %8, %struct.uac_feature_unit_descriptor** %6, align 8
  %9 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %6, align 8
  %10 = getelementptr inbounds %struct.uac_feature_unit_descriptor, %struct.uac_feature_unit_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 8
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %6, align 8
  %16 = getelementptr inbounds %struct.uac_feature_unit_descriptor, %struct.uac_feature_unit_descriptor* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %33

20:                                               ; preds = %14
  %21 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %6, align 8
  %22 = getelementptr inbounds %struct.uac_feature_unit_descriptor, %struct.uac_feature_unit_descriptor* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.uac_feature_unit_descriptor*, %struct.uac_feature_unit_descriptor** %6, align 8
  %26 = getelementptr inbounds %struct.uac_feature_unit_descriptor, %struct.uac_feature_unit_descriptor* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 8, %28
  %30 = add i64 %29, 1
  %31 = icmp uge i64 %24, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %20, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
