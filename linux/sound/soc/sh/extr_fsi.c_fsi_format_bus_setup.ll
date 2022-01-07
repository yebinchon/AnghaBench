; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_format_bus_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/extr_fsi.c_fsi_format_bus_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_priv = type { i32 }
%struct.fsi_stream = type { i32 }
%struct.device = type { i32 }
%struct.fsi_master = type { i32 }

@CR_BWS_24 = common dso_local global i32 0, align 4
@VDMD_FRONT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"24bit bus / package in front\0A\00", align 1
@CR_BWS_16 = common dso_local global i32 0, align 4
@VDMD_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"16bit bus / stream mode\0A\00", align 1
@VDMD_BACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"24bit bus / package in back\0A\00", align 1
@OUT_DMAC = common dso_local global i32 0, align 4
@IN_DMAC = common dso_local global i32 0, align 4
@DO_FMT = common dso_local global i32 0, align 4
@DI_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsi_priv*, %struct.fsi_stream*, i32, %struct.device*)* @fsi_format_bus_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsi_format_bus_setup(%struct.fsi_priv* %0, %struct.fsi_stream* %1, i32 %2, %struct.device* %3) #0 {
  %5 = alloca %struct.fsi_priv*, align 8
  %6 = alloca %struct.fsi_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.fsi_master*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fsi_priv* %0, %struct.fsi_priv** %5, align 8
  store %struct.fsi_stream* %1, %struct.fsi_stream** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.device* %3, %struct.device** %8, align 8
  %13 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %14 = call %struct.fsi_master* @fsi_get_master(%struct.fsi_priv* %13)
  store %struct.fsi_master* %14, %struct.fsi_master** %9, align 8
  %15 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %16 = load %struct.fsi_stream*, %struct.fsi_stream** %6, align 8
  %17 = call i32 @fsi_stream_is_play(%struct.fsi_priv* %15, %struct.fsi_stream* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %19 = getelementptr inbounds %struct.fsi_priv, %struct.fsi_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.fsi_master*, %struct.fsi_master** %9, align 8
  %22 = call i32 @fsi_version(%struct.fsi_master* %21)
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %68

24:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %45 [
    i32 128, label %26
    i32 130, label %35
    i32 129, label %44
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @CR_BWS_24, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @VDMD_FRONT, align 4
  %31 = load i32, i32* %12, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %12, align 4
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %54

35:                                               ; preds = %24
  %36 = load i32, i32* @CR_BWS_16, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @VDMD_STREAM, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = call i32 @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %54

44:                                               ; preds = %24
  br label %45

45:                                               ; preds = %24, %44
  %46 = load i32, i32* @CR_BWS_24, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* @VDMD_BACK, align 4
  %50 = load i32, i32* %12, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %12, align 4
  %52 = load %struct.device*, %struct.device** %8, align 8
  %53 = call i32 @dev_dbg(%struct.device* %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %45, %35, %26
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %59 = load i32, i32* @OUT_DMAC, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @fsi_reg_write(%struct.fsi_priv* %58, i32 %59, i32 %60)
  br label %67

62:                                               ; preds = %54
  %63 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %64 = load i32, i32* @IN_DMAC, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @fsi_reg_write(%struct.fsi_priv* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %57
  br label %68

68:                                               ; preds = %67, %4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %73 = load i32, i32* @DO_FMT, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @fsi_reg_write(%struct.fsi_priv* %72, i32 %73, i32 %74)
  br label %81

76:                                               ; preds = %68
  %77 = load %struct.fsi_priv*, %struct.fsi_priv** %5, align 8
  %78 = load i32, i32* @DI_FMT, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @fsi_reg_write(%struct.fsi_priv* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  ret void
}

declare dso_local %struct.fsi_master* @fsi_get_master(%struct.fsi_priv*) #1

declare dso_local i32 @fsi_stream_is_play(%struct.fsi_priv*, %struct.fsi_stream*) #1

declare dso_local i32 @fsi_version(%struct.fsi_master*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @fsi_reg_write(%struct.fsi_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
