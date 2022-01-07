; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_output_mute_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/6fire/extr_control.c_usb6fire_control_output_mute_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.control_runtime = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Invalid channel in volume control.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @usb6fire_control_output_mute_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_control_output_mute_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.control_runtime*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.control_runtime* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.control_runtime* %11, %struct.control_runtime** %6, align 8
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %16 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 4
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %22 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %84

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = shl i32 3, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %35 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %30
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %46, %30
  %50 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %51 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, 2
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %58, %49
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %66 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %70 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %76 = call i32 @usb6fire_control_output_mute_update(%struct.control_runtime* %75)
  br label %77

77:                                               ; preds = %74, %61
  %78 = load %struct.control_runtime*, %struct.control_runtime** %6, align 8
  %79 = getelementptr inbounds %struct.control_runtime, %struct.control_runtime* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %80, %81
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %20
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.control_runtime* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb6fire_control_output_mute_update(%struct.control_runtime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
