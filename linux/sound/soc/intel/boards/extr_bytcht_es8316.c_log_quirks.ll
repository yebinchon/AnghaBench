; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_log_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/boards/extr_bytcht_es8316.c_log_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@quirk = common dso_local global i32 0, align 4
@BYT_CHT_ES8316_INTMIC_IN1_MAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"quirk IN1_MAP enabled\00", align 1
@BYT_CHT_ES8316_INTMIC_IN2_MAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"quirk IN2_MAP enabled\00", align 1
@BYT_CHT_ES8316_SSP0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"quirk SSP0 enabled\00", align 1
@BYT_CHT_ES8316_MONO_SPEAKER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"quirk MONO_SPEAKER enabled\0A\00", align 1
@BYT_CHT_ES8316_JD_INVERTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"quirk JD_INVERTED enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @log_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_quirks(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load i32, i32* @quirk, align 4
  %4 = call i64 @BYT_CHT_ES8316_MAP(i32 %3)
  %5 = load i64, i64* @BYT_CHT_ES8316_INTMIC_IN1_MAP, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call i32 @dev_info(%struct.device* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @quirk, align 4
  %12 = call i64 @BYT_CHT_ES8316_MAP(i32 %11)
  %13 = load i64, i64* @BYT_CHT_ES8316_INTMIC_IN2_MAP, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = call i32 @dev_info(%struct.device* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %10
  %19 = load i32, i32* @quirk, align 4
  %20 = load i32, i32* @BYT_CHT_ES8316_SSP0, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = call i32 @dev_info(%struct.device* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* @quirk, align 4
  %28 = load i32, i32* @BYT_CHT_ES8316_MONO_SPEAKER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %2, align 8
  %33 = call i32 @dev_info(%struct.device* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* @quirk, align 4
  %36 = load i32, i32* @BYT_CHT_ES8316_JD_INVERTED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.device*, %struct.device** %2, align 8
  %41 = call i32 @dev_info(%struct.device* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  ret void
}

declare dso_local i64 @BYT_CHT_ES8316_MAP(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
