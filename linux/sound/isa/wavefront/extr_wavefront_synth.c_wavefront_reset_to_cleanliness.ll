; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_reset_to_cleanliness.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_reset_to_cleanliness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@reset_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"intr not received after h/w un-reset.\0A\00", align 1
@WFC_HARDWARE_VERSION = common dso_local global i32 0, align 4
@ramcheck_time = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"post-RAM-check interrupt not received.\0A\00", align 1
@STAT_CAN_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"no response to HW version cmd.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"board not responding correctly.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"on-board RAM test failed (bad error code).\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"on-board RAM test failed (error code: 0x%x).\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"incorrect h/w response.\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"hardware version %d.%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @wavefront_reset_to_cleanliness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_reset_to_cleanliness(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @snd_wavefront_interrupt_bits(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @outb(i32 0, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = or i32 192, %14
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @outb(i32 %15, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @reset_time, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sdiv i32 %26, 100
  %28 = call i32 @wavefront_should_cause_interrupt(%struct.TYPE_6__* %20, i32 209, i32 %23, i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %1
  %34 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %94

35:                                               ; preds = %1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = load i32, i32* @WFC_HARDWARE_VERSION, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ramcheck_time, align 4
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = call i32 @wavefront_should_cause_interrupt(%struct.TYPE_6__* %36, i32 %37, i32 %40, i32 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %35
  %50 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %94

51:                                               ; preds = %35
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = load i32, i32* @STAT_CAN_READ, align 4
  %54 = call i32 @wavefront_wait(%struct.TYPE_6__* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %94

58:                                               ; preds = %51
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = call i32 @wavefront_read(%struct.TYPE_6__* %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = icmp eq i32 %60, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %94

65:                                               ; preds = %58
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 255
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = call i32 @wavefront_read(%struct.TYPE_6__* %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = icmp eq i32 %71, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %80

76:                                               ; preds = %69
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %74
  br label %94

81:                                               ; preds = %65
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = call i32 @wavefront_read(%struct.TYPE_6__* %82)
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  %85 = icmp eq i32 %83, -1
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %94

88:                                               ; preds = %81
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %90, i32 %92)
  store i32 0, i32* %2, align 4
  br label %95

94:                                               ; preds = %86, %80, %63, %56, %49, %33
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @snd_wavefront_interrupt_bits(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @wavefront_should_cause_interrupt(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @snd_printk(i8*, ...) #1

declare dso_local i32 @wavefront_wait(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @wavefront_read(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
