; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_als300 = type { %struct.TYPE_4__*, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.snd_als300_substream_data* }
%struct.snd_als300_substream_data = type { i32 }

@ALS300_IRQ_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_PLAYBACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"IRQ_PLAYBACK\0A\00", align 1
@IRQ_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"IRQ_CAPTURE\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_als300_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_als300*, align 8
  %8 = alloca %struct.snd_als300_substream_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_als300*
  store %struct.snd_als300* %10, %struct.snd_als300** %7, align 8
  %11 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %12 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ALS300_IRQ_STATUS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %24 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ALS300_IRQ_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IRQ_PLAYBACK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %61

33:                                               ; preds = %21
  %34 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %35 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %33
  %39 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %40 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %45 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %49, align 8
  store %struct.snd_als300_substream_data* %50, %struct.snd_als300_substream_data** %8, align 8
  %51 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %8, align 8
  %52 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %56 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %57)
  %59 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %43, %38, %33
  br label %61

61:                                               ; preds = %60, %21
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @IRQ_CAPTURE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %68 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %73 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %71
  %77 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %78 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %82, align 8
  store %struct.snd_als300_substream_data* %83, %struct.snd_als300_substream_data** %8, align 8
  %84 = load %struct.snd_als300_substream_data*, %struct.snd_als300_substream_data** %8, align 8
  %85 = getelementptr inbounds %struct.snd_als300_substream_data, %struct.snd_als300_substream_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.snd_als300*, %struct.snd_als300** %7, align 8
  %89 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_4__* %90)
  %92 = call i32 @snd_als300_dbgplay(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %93

93:                                               ; preds = %76, %71, %66
  br label %94

94:                                               ; preds = %93, %61
  %95 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %19
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_als300_dbgplay(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
