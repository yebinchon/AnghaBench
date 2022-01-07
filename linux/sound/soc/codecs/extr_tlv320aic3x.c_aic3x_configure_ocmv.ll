; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_configure_ocmv.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic3x.c_aic3x_configure_ocmv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.aic3x_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"ai3x-ocmv\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Too high supply voltage(s) AVDD: %d, DVDD: %d\0A\00", align 1
@HPOUT_SC_OCMV_1_8V = common dso_local global i32 0, align 4
@HPOUT_SC_OCMV_1_65V = common dso_local global i32 0, align 4
@HPOUT_SC_OCMV_1_5V = common dso_local global i32 0, align 4
@HPOUT_SC_OCMV_1_35V = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Invalid supply voltage(s) AVDD: %d, DVDD: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @aic3x_configure_ocmv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic3x_configure_ocmv(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.aic3x_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %3, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = call %struct.aic3x_priv* @i2c_get_clientdata(%struct.i2c_client* %12)
  store %struct.aic3x_priv* %13, %struct.aic3x_priv** %4, align 8
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %1
  %17 = load %struct.device_node*, %struct.device_node** %3, align 8
  %18 = call i32 @of_property_read_u32(%struct.device_node* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %5)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %26 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %104

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %16, %1
  %29 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %30 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @regulator_get_voltage(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %37 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regulator_get_voltage(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 3600000
  br i1 %44, label %48, label %45

45:                                               ; preds = %28
  %46 = load i32, i32* %6, align 4
  %47 = icmp sgt i32 %46, 1950000
  br i1 %47, label %48, label %54

48:                                               ; preds = %45, %28
  %49 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_warn(%struct.TYPE_4__* %50, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %104

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 3600000
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 1950000
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i32, i32* @HPOUT_SC_OCMV_1_8V, align 4
  %62 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %63 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %103

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 3300000
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 1800000
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* @HPOUT_SC_OCMV_1_65V, align 4
  %72 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %73 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %102

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, 3000000
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = icmp sgt i32 %78, 1650000
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @HPOUT_SC_OCMV_1_5V, align 4
  %82 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %83 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %101

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %7, align 4
  %86 = icmp sge i32 %85, 2700000
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %88, 1525000
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* @HPOUT_SC_OCMV_1_35V, align 4
  %92 = load %struct.aic3x_priv*, %struct.aic3x_priv** %4, align 8
  %93 = getelementptr inbounds %struct.aic3x_priv, %struct.aic3x_priv* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %100

94:                                               ; preds = %87, %84
  %95 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @dev_warn(%struct.TYPE_4__* %96, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %94, %90
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %101, %70
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %23, %103, %48
  ret void
}

declare dso_local %struct.aic3x_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
