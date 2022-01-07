; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_aif_set_master.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tscs454.c_aif_set_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }

@R_I2SP1CTL = common dso_local global i32 0, align 4
@R_I2SP2CTL = common dso_local global i32 0, align 4
@R_I2SP3CTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Unknown DAI %d (%d)\0A\00", align 1
@FM_I2SPCTL_PORTMS = common dso_local global i32 0, align 4
@FV_PORTMS_MASTER = common dso_local global i32 0, align 4
@FV_PORTMS_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to set DAI %d to %s (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, i32, i32)* @aif_set_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aif_set_master(%struct.snd_soc_component* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @R_I2SP1CTL, align 4
  store i32 %14, i32* %8, align 4
  br label %29

15:                                               ; preds = %3
  %16 = load i32, i32* @R_I2SP2CTL, align 4
  store i32 %16, i32* %8, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32, i32* @R_I2SP3CTL, align 4
  store i32 %18, i32* %8, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %23 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %59

29:                                               ; preds = %17, %15, %13
  %30 = load i32, i32* @FM_I2SPCTL_PORTMS, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @FV_PORTMS_MASTER, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @FV_PORTMS_SLAVE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  %39 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @snd_soc_component_update_bits(%struct.snd_soc_component* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %37
  %47 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %48 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %50, i8* %54, i32 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %46, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @snd_soc_component_update_bits(%struct.snd_soc_component*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
