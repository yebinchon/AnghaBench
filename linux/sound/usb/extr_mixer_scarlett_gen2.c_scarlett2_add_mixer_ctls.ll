; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_mixer_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_mixer_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32* }

@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@SCARLETT2_PORT_TYPE_MIX = common dso_local global i64 0, align 8
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@SCARLETT2_PORT_IN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Mix %c Input %02d Playback Volume\00", align 1
@scarlett2_mixer_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @scarlett2_add_mixer_ctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_add_mixer_ctls(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.scarlett2_mixer_data*, align 8
  %5 = alloca %struct.scarlett2_ports*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %15 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %16 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %15, i32 0, i32 0
  %17 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %16, align 8
  store %struct.scarlett2_mixer_data* %17, %struct.scarlett2_mixer_data** %4, align 8
  %18 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %19 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %21, align 8
  store %struct.scarlett2_ports* %22, %struct.scarlett2_ports** %5, align 8
  %23 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %27 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %5, align 8
  %28 = load i64, i64* @SCARLETT2_PORT_TYPE_MIX, align 8
  %29 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %27, i64 %28
  %30 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %5, align 8
  %36 = load i64, i64* @SCARLETT2_PORT_TYPE_MIX, align 8
  %37 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %35, i64 %36
  %38 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @SCARLETT2_PORT_IN, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %74, %1
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = trunc i64 %24 to i32
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 65, %54
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @snprintf(i8* %26, i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 signext %56, i32 %58)
  %60 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %60, i32* @scarlett2_mixer_ctl, i32 %61, i32 1, i8* %26, i32* null)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %78

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %48

73:                                               ; preds = %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %43

77:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %78

78:                                               ; preds = %77, %65
  %79 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8 signext, i32) #2

declare dso_local i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface*, i32*, i32, i32, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
