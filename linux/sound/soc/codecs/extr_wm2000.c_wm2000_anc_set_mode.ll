; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_anc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_wm2000.c_wm2000_anc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm2000_priv = type { i32, i64, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@ANC_ACTIVE = common dso_local global i32 0, align 4
@ANC_BYPASS = common dso_local global i32 0, align 4
@ANC_STANDBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Set mode %d (enabled %d, mute %d, active %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm2000_priv*)* @wm2000_anc_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm2000_anc_set_mode(%struct.wm2000_priv* %0) #0 {
  %2 = alloca %struct.wm2000_priv*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.wm2000_priv* %0, %struct.wm2000_priv** %2, align 8
  %5 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %6 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %5, i32 0, i32 3
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %9 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %14 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %19 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @ANC_ACTIVE, align 4
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ANC_BYPASS, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %22
  br label %29

27:                                               ; preds = %12, %1
  %28 = load i32, i32* @ANC_STANDBY, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %34 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %37 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %43 = getelementptr inbounds %struct.wm2000_priv, %struct.wm2000_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_dbg(i32* %31, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %41, i32 %44)
  %46 = load %struct.wm2000_priv*, %struct.wm2000_priv** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @wm2000_anc_transition(%struct.wm2000_priv* %46, i32 %47)
  ret i32 %48
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wm2000_anc_transition(%struct.wm2000_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
