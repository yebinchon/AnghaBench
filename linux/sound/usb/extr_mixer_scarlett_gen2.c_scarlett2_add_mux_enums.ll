; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_mux_enums.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_scarlett_gen2.c_scarlett2_add_mux_enums.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { %struct.scarlett2_mixer_data* }
%struct.scarlett2_mixer_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scarlett2_ports* }
%struct.scarlett2_ports = type { i32*, i8* }

@SCARLETT2_PORT_TYPE_COUNT = common dso_local global i32 0, align 4
@SCARLETT2_PORT_OUT = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c" Enum\00", align 1
@scarlett2_mux_src_enum_ctl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @scarlett2_add_mux_enums to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scarlett2_add_mux_enums(%struct.usb_mixer_interface* %0) #0 {
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
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %14 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %15 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %14, i32 0, i32 0
  %16 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %15, align 8
  store %struct.scarlett2_mixer_data* %16, %struct.scarlett2_mixer_data** %4, align 8
  %17 = load %struct.scarlett2_mixer_data*, %struct.scarlett2_mixer_data** %4, align 8
  %18 = getelementptr inbounds %struct.scarlett2_mixer_data, %struct.scarlett2_mixer_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %20, align 8
  store %struct.scarlett2_ports* %21, %struct.scarlett2_ports** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %75, %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SCARLETT2_PORT_TYPE_COUNT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %78

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %69, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %29, i64 %31
  %33 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SCARLETT2_PORT_OUT, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %28, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %27
  %40 = load i32, i32* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %10, align 8
  %43 = alloca i8, i64 %41, align 16
  store i64 %41, i64* %11, align 8
  %44 = load %struct.scarlett2_ports*, %struct.scarlett2_ports** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %44, i64 %46
  %48 = getelementptr inbounds %struct.scarlett2_ports, %struct.scarlett2_ports* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %12, align 8
  %50 = sub i64 %41, 5
  %51 = trunc i64 %50 to i32
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @snprintf(i8* %43, i32 %51, i8* %52, i32 %54)
  %56 = call i32 @strcat(i8* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @scarlett2_add_new_ctl(%struct.usb_mixer_interface* %57, i32* @scarlett2_mux_src_enum_ctl, i32 %58, i32 1, i8* %43, i32* null)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %65

64:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %65

65:                                               ; preds = %64, %62
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %13, align 4
  switch i32 %67, label %81 [
    i32 0, label %68
    i32 1, label %79
  ]

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %27

74:                                               ; preds = %27
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %22

78:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* %2, align 4
  ret i32 %80

81:                                               ; preds = %65
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

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
