; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_check_asic_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/echoaudio/extr_echoaudio_3g.c_check_asic_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@E3G_ASIC_NOT_LOADED = common dso_local global i32 0, align 4
@DSP_VC_TEST_ASIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"box_status=%x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@E3G_BOX_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*)* @check_asic_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_asic_status(%struct.echoaudio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.echoaudio*, align 8
  %4 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %3, align 8
  %5 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %6 = call i64 @wait_handshake(%struct.echoaudio* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load i32, i32* @E3G_ASIC_NOT_LOADED, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %15 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %13, i32* %17, align 4
  %18 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %19 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %21 = call i32 @clear_handshake(%struct.echoaudio* %20)
  %22 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %23 = load i32, i32* @DSP_VC_TEST_ASIC, align 4
  %24 = call i32 @send_vector(%struct.echoaudio* %22, i32 %23)
  %25 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %26 = call i64 @wait_handshake(%struct.echoaudio* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %11
  %29 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %30 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %11
  %34 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %35 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %41 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @E3G_ASIC_NOT_LOADED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %33
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %59

53:                                               ; preds = %33
  %54 = load %struct.echoaudio*, %struct.echoaudio** %3, align 8
  %55 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @E3G_BOX_TYPE_MASK, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %53, %50, %28, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
