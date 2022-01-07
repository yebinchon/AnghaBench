; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wavefront/extr_wavefront_synth.c_wavefront_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i64, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [18 x i8] c"hw reset failed.\0A\00", align 1
@ospath = common dso_local global i32 0, align 4
@WFC_NOOP = common dso_local global i32 0, align 4
@osrun_time = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"no post-OS interrupt.\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"no post-OS interrupt(2).\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"available DRAM %dk\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"MPU emulation mode not set.\0A\00", align 1
@WFC_SET_NVOICES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot set number of voices to 32.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @wavefront_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wavefront_do_reset(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [1 x i8], align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = call i64 @wavefront_reset_to_cleanliness(%struct.TYPE_10__* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %97

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %10
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load i32, i32* @ospath, align 4
  %18 = call i64 @wavefront_download_firmware(%struct.TYPE_10__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %97

21:                                               ; preds = %15
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = load i32, i32* @WFC_NOOP, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @osrun_time, align 4
  %30 = load i32, i32* @HZ, align 4
  %31 = mul nsw i32 %29, %30
  %32 = call i32 @wavefront_should_cause_interrupt(%struct.TYPE_10__* %24, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %21
  %38 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %97

39:                                               ; preds = %21
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = load i32, i32* @WFC_NOOP, align 4
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HZ, align 4
  %46 = mul nsw i32 10, %45
  %47 = call i32 @wavefront_should_cause_interrupt(%struct.TYPE_10__* %40, i32 %41, i32 %44, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %97

54:                                               ; preds = %39
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @outb(i32 192, i32 %57)
  br label %59

59:                                               ; preds = %54, %10
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i32 @wavefront_freemem(%struct.TYPE_10__* %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = icmp slt i32 %61, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %97

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 1024
  %71 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = call i64 @wavefront_write(%struct.TYPE_10__* %72, i32 240)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = call i64 @wavefront_write(%struct.TYPE_10__* %76, i32 1)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = call i64 @wavefront_read(%struct.TYPE_10__* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %79, %75, %66
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  store i64 0, i64* %85, align 8
  %86 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %97

87:                                               ; preds = %79
  %88 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  store i8 32, i8* %88, align 1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = load i32, i32* @WFC_SET_NVOICES, align 4
  %91 = getelementptr inbounds [1 x i8], [1 x i8]* %4, i64 0, i64 0
  %92 = call i64 @snd_wavefront_cmd(%struct.TYPE_10__* %89, i32 %90, i32* null, i8* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 (i8*, ...) @snd_printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %97

96:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %104

97:                                               ; preds = %94, %83, %65, %52, %37, %20, %8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @outb(i32 0, i32 %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %97, %96
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i64 @wavefront_reset_to_cleanliness(%struct.TYPE_10__*) #1

declare dso_local i32 @snd_printk(i8*, ...) #1

declare dso_local i64 @wavefront_download_firmware(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @wavefront_should_cause_interrupt(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @wavefront_freemem(%struct.TYPE_10__*) #1

declare dso_local i64 @wavefront_write(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @wavefront_read(%struct.TYPE_10__*) #1

declare dso_local i64 @snd_wavefront_cmd(%struct.TYPE_10__*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
