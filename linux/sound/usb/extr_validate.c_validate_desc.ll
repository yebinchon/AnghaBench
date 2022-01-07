; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_desc.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_validate.c_validate_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_desc_validator = type { i8, i32, i32 (i8*, %struct.usb_desc_validator*)*, i8 }

@USB_DT_CS_INTERFACE = common dso_local global i8 0, align 1
@UAC_VERSION_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.usb_desc_validator*)* @validate_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_desc(i8* %0, i32 %1, %struct.usb_desc_validator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_desc_validator*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.usb_desc_validator* %2, %struct.usb_desc_validator** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @USB_DT_CS_INTERFACE, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %72

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %68, %16
  %18 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %19 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %17
  %23 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %24 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %22
  %33 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %34 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @UAC_VERSION_ALL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %40 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38, %32
  %45 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %46 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %45, i32 0, i32 2
  %47 = load i32 (i8*, %struct.usb_desc_validator*)*, i32 (i8*, %struct.usb_desc_validator*)** %46, align 8
  %48 = icmp ne i32 (i8*, %struct.usb_desc_validator*)* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %51 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %50, i32 0, i32 2
  %52 = load i32 (i8*, %struct.usb_desc_validator*)*, i32 (i8*, %struct.usb_desc_validator*)** %51, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %55 = call i32 %52(i8* %53, %struct.usb_desc_validator* %54)
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %44
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %62 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %61, i32 0, i32 3
  %63 = load i8, i8* %62, align 8
  %64 = zext i8 %63 to i32
  %65 = icmp sge i32 %60, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %4, align 4
  br label %72

67:                                               ; preds = %38, %22
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.usb_desc_validator*, %struct.usb_desc_validator** %7, align 8
  %70 = getelementptr inbounds %struct.usb_desc_validator, %struct.usb_desc_validator* %69, i32 1
  store %struct.usb_desc_validator* %70, %struct.usb_desc_validator** %7, align 8
  br label %17

71:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %56, %49, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
