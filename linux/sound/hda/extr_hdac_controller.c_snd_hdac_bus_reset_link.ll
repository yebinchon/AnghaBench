; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_reset_link.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_reset_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i64, i32 }

@STATESTS = common dso_local global i32 0, align 4
@STATESTS_INT_MASK = common dso_local global i32 0, align 4
@GCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"controller not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"codec_mask = 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_reset_link(%struct.hdac_bus* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %20

9:                                                ; preds = %2
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %11 = load i32, i32* @STATESTS, align 4
  %12 = load i32, i32* @STATESTS_INT_MASK, align 4
  %13 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %10, i32 %11, i32 %12)
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %15 = call i32 @snd_hdac_bus_enter_link_reset(%struct.hdac_bus* %14)
  %16 = call i32 @usleep_range(i32 500, i32 1000)
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %18 = call i32 @snd_hdac_bus_exit_link_reset(%struct.hdac_bus* %17)
  %19 = call i32 @usleep_range(i32 1000, i32 1200)
  br label %20

20:                                               ; preds = %9, %8
  %21 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %22 = load i32, i32* @GCTL, align 4
  %23 = call i32 @snd_hdac_chip_readb(%struct.hdac_bus* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %27 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i32, i8*, ...) @dev_dbg(i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %20
  %33 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %34 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %39 = load i32, i32* @STATESTS, align 4
  %40 = call i64 @snd_hdac_chip_readw(%struct.hdac_bus* %38, i32 %39)
  %41 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %42 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %44 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %47 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i32, i8*, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %37, %32
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @snd_hdac_chip_writew(%struct.hdac_bus*, i32, i32) #1

declare dso_local i32 @snd_hdac_bus_enter_link_reset(%struct.hdac_bus*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @snd_hdac_bus_exit_link_reset(%struct.hdac_bus*) #1

declare dso_local i32 @snd_hdac_chip_readb(%struct.hdac_bus*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
