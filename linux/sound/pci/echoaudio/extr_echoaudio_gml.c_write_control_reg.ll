; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_write_control_reg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_gml.c_write_control_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@GML_DIGITAL_IN_AUTO_MUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write_control_reg: 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DSP_VC_WRITE_CONTROL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32, i8)* @write_control_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_control_reg(%struct.echoaudio* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.echoaudio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store %struct.echoaudio* %0, %struct.echoaudio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %9 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %10 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @GML_DIGITAL_IN_AUTO_MUTE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %6, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load i32, i32* @GML_DIGITAL_IN_AUTO_MUTE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %17, %13
  %23 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %24 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @cpu_to_le32(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %34 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %32, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39, %22
  %44 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %45 = call i64 @wait_handshake(%struct.echoaudio* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %62

50:                                               ; preds = %43
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %53 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %57 = call i32 @clear_handshake(%struct.echoaudio* %56)
  %58 = load %struct.echoaudio*, %struct.echoaudio** %5, align 8
  %59 = load i32, i32* @DSP_VC_WRITE_CONTROL_REG, align 4
  %60 = call i32 @send_vector(%struct.echoaudio* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %50, %47
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
