; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_stop_transport.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_dsp.c_stop_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@DSP_VC_STOP_TRANSFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"stop_transport: No pipes to stop!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @stop_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_transport(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %7 = call i64 @wait_handshake(%struct.echoaudio* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cpu_to_le32(i32 %13)
  %15 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %16 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %24 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %12
  %36 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %37 = call i32 @clear_handshake(%struct.echoaudio* %36)
  %38 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %39 = load i32, i32* @DSP_VC_STOP_TRANSFER, align 4
  %40 = call i32 @send_vector(%struct.echoaudio* %38, i32 %39)
  %41 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %42 = call i64 @wait_handshake(%struct.echoaudio* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %69

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %51 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %59 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %69

62:                                               ; preds = %12
  %63 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %64 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_warn(i32 %67, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %47, %44, %9
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
