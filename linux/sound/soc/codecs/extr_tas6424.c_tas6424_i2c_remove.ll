; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas6424.c_tas6424_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.tas6424_data = type { i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"unable to disable supplies: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @tas6424_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas6424_i2c_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tas6424_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.tas6424_data* @dev_get_drvdata(%struct.device* %9)
  store %struct.tas6424_data* %10, %struct.tas6424_data** %5, align 8
  %11 = load %struct.tas6424_data*, %struct.tas6424_data** %5, align 8
  %12 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %11, i32 0, i32 2
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.tas6424_data*, %struct.tas6424_data** %5, align 8
  %15 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.tas6424_data*, %struct.tas6424_data** %5, align 8
  %20 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @gpiod_set_value_cansleep(i64 %21, i32 1)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.tas6424_data*, %struct.tas6424_data** %5, align 8
  %25 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = load %struct.tas6424_data*, %struct.tas6424_data** %5, align 8
  %29 = getelementptr inbounds %struct.tas6424_data, %struct.tas6424_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regulator_bulk_disable(i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %40

39:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.tas6424_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
