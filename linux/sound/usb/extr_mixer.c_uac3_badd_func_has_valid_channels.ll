; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_uac3_badd_func_has_valid_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer.c_uac3_badd_func_has_valid_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32 }
%struct.uac3_badd_profile = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"BAAD %s: no channels?\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"BAAD %s c_chmask mismatch\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"BAAD %s p_chmask mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*, %struct.uac3_badd_profile*, i32, i32)* @uac3_badd_func_has_valid_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac3_badd_func_has_valid_channels(%struct.usb_mixer_interface* %0, %struct.uac3_badd_profile* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_mixer_interface*, align 8
  %7 = alloca %struct.uac3_badd_profile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %6, align 8
  store %struct.uac3_badd_profile* %1, %struct.uac3_badd_profile** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %11 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %16 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %27 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %30 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_audio_warn(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %5, align 4
  br label %89

33:                                               ; preds = %22, %19
  store i32 1, i32* %5, align 4
  br label %89

34:                                               ; preds = %14, %4
  %35 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %36 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %39, %34
  %43 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %44 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %49 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47, %39
  %54 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %55 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %58 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_audio_warn(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  store i32 0, i32* %5, align 4
  br label %89

61:                                               ; preds = %47, %42
  %62 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %63 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66, %61
  %70 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %71 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %76 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74, %66
  %81 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %6, align 8
  %82 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uac3_badd_profile*, %struct.uac3_badd_profile** %7, align 8
  %85 = getelementptr inbounds %struct.uac3_badd_profile, %struct.uac3_badd_profile* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @usb_audio_warn(i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  store i32 0, i32* %5, align 4
  br label %89

88:                                               ; preds = %74, %69
  store i32 1, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %80, %53, %33, %25
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @usb_audio_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
