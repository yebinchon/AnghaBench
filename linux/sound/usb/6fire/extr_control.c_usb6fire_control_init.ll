; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sfire_chip = type { %struct.control_runtime*, %struct.TYPE_5__*, i32, %struct.comm_runtime* }
%struct.control_runtime = type { i32, i32, i32 (%struct.control_runtime*)*, %struct.sfire_chip* }
%struct.TYPE_5__ = type { i32 }
%struct.comm_runtime = type { i32 (%struct.comm_runtime*, i64, i32, i32)* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb6fire_control_set_rate = common dso_local global i32 0, align 4
@usb6fire_control_set_channels = common dso_local global i32 0, align 4
@init_data = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Master Playback Volume\00", align 1
@vol_elements = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot add control.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Master Playback Switch\00", align 1
@mute_elements = common dso_local global i32 0, align 4
@elements = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb6fire_control_init(%struct.sfire_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfire_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.control_runtime*, align 8
  %7 = alloca %struct.comm_runtime*, align 8
  store %struct.sfire_chip* %0, %struct.sfire_chip** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.control_runtime* @kzalloc(i32 24, i32 %8)
  store %struct.control_runtime* %9, %struct.control_runtime** %6, align 8
  %10 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %11 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %10, i32 0, i32 3
  %12 = load %struct.comm_runtime*, %struct.comm_runtime** %11, align 8
  store %struct.comm_runtime* %12, %struct.comm_runtime** %7, align 8
  %13 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %14 = icmp ne %struct.control_runtime* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %150

18:                                               ; preds = %1
  %19 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %20 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %21 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %20, i32 0, i32 3
  store %struct.sfire_chip* %19, %struct.sfire_chip** %21, align 8
  %22 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %23 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %22, i32 0, i32 2
  store i32 (%struct.control_runtime*)* @usb6fire_control_streaming_update, i32 (%struct.control_runtime*)** %23, align 8
  %24 = load i32, i32* @usb6fire_control_set_rate, align 4
  %25 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %26 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @usb6fire_control_set_channels, align 4
  %28 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %29 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %38, %18
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_data, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %30
  %39 = load %struct.comm_runtime*, %struct.comm_runtime** %7, align 8
  %40 = getelementptr inbounds %struct.comm_runtime, %struct.comm_runtime* %39, i32 0, i32 0
  %41 = load i32 (%struct.comm_runtime*, i64, i32, i32)*, i32 (%struct.comm_runtime*, i64, i32, i32)** %40, align 8
  %42 = load %struct.comm_runtime*, %struct.comm_runtime** %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_data, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_data, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @init_data, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 %41(%struct.comm_runtime* %42, i64 %48, i32 %54, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %66 = call i32 @usb6fire_control_opt_coax_update(%struct.control_runtime* %65)
  %67 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %68 = call i32 @usb6fire_control_line_phono_update(%struct.control_runtime* %67)
  %69 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %70 = call i32 @usb6fire_control_output_vol_update(%struct.control_runtime* %69)
  %71 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %72 = call i32 @usb6fire_control_output_mute_update(%struct.control_runtime* %71)
  %73 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %74 = call i32 @usb6fire_control_input_vol_update(%struct.control_runtime* %73)
  %75 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %76 = call i32 @usb6fire_control_streaming_update(%struct.control_runtime* %75)
  %77 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %78 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %79 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @vol_elements, align 4
  %82 = call i32 @usb6fire_control_add_virtual(%struct.control_runtime* %77, i32 %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %64
  %86 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %87 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %91 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %92 = call i32 @kfree(%struct.control_runtime* %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %150

94:                                               ; preds = %64
  %95 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %96 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %97 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @mute_elements, align 4
  %100 = call i32 @usb6fire_control_add_virtual(%struct.control_runtime* %95, i32 %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %94
  %104 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %105 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %104, i32 0, i32 1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %110 = call i32 @kfree(%struct.control_runtime* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %150

112:                                              ; preds = %94
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %143, %112
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** @elements, align 8
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %146

121:                                              ; preds = %113
  %122 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %123 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @elements, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %130 = call i32 @snd_ctl_new1(%struct.TYPE_6__* %128, %struct.control_runtime* %129)
  %131 = call i32 @snd_ctl_add(i32 %124, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %121
  %135 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %136 = call i32 @kfree(%struct.control_runtime* %135)
  %137 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %138 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = call i32 @dev_err(i32* %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %150

143:                                              ; preds = %121
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %113

146:                                              ; preds = %113
  %147 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %148 = load %struct.sfire_chip*, %struct.sfire_chip** %3, align 8
  %149 = getelementptr inbounds %struct.sfire_chip, %struct.sfire_chip* %148, i32 0, i32 0
  store %struct.control_runtime* %147, %struct.control_runtime** %149, align 8
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %146, %134, %103, %85, %15
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.control_runtime* @kzalloc(i32, i32) #1

declare dso_local i32 @usb6fire_control_streaming_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_opt_coax_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_line_phono_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_output_vol_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_output_mute_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_input_vol_update(%struct.control_runtime*) #1

declare dso_local i32 @usb6fire_control_add_virtual(%struct.control_runtime*, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(%struct.control_runtime*) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.TYPE_6__*, %struct.control_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
