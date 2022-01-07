; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_audio.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/atmel/extr_atmel_ssc_dai.c_atmel_ssc_set_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.ssc_device* }
%struct.ssc_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Unable to parent ASoC SSC DAI on SSC: %ld\0A\00", align 1
@ssc_info = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_ssc_set_audio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssc_device*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ssc_device* @ssc_request(i32 %6)
  store %struct.ssc_device* %7, %struct.ssc_device** %4, align 8
  %8 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.ssc_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.ssc_device* %12)
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.ssc_device* %15)
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ssc_info, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.ssc_device* %18, %struct.ssc_device** %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load %struct.ssc_device*, %struct.ssc_device** %4, align 8
  %26 = getelementptr inbounds %struct.ssc_device, %struct.ssc_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call i32 @asoc_ssc_init(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %24, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.ssc_device* @ssc_request(i32) #1

declare dso_local i64 @IS_ERR(%struct.ssc_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.ssc_device*) #1

declare dso_local i32 @asoc_ssc_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
