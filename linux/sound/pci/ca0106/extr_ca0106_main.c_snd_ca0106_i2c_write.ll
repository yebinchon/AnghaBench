; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ca0106/extr_ca0106_main.c_snd_ca0106_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ca0106 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"i2c_write: invalid values.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_D1 = common dso_local global i32 0, align 4
@I2C_A_ADC_LAST = common dso_local global i32 0, align 4
@I2C_A_ADC_START = common dso_local global i32 0, align 4
@I2C_A_ADC_ADD = common dso_local global i32 0, align 4
@I2C_A = common dso_local global i32 0, align 4
@I2C_A_ADC_ABORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Writing to ADC failed!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_ca0106_i2c_write(%struct.snd_ca0106* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_ca0106*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.snd_ca0106* %0, %struct.snd_ca0106** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 127
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 511
  br i1 %16, label %17, label %26

17:                                               ; preds = %14, %3
  %18 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %19 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 25
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %33 = load i32, i32* @I2C_D1, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %32, i32 %33, i32 0, i32 %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %74, %26
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 10
  br i1 %38, label %39, label %77

39:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @I2C_A_ADC_LAST, align 4
  %42 = load i32, i32* @I2C_A_ADC_START, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @I2C_A_ADC_ADD, align 4
  %45 = or i32 %43, %44
  %46 = or i32 %40, %45
  store i32 %46, i32* %8, align 4
  %47 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %48 = load i32, i32* @I2C_A, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @snd_ca0106_ptr_write(%struct.snd_ca0106* %47, i32 %48, i32 0, i32 %49)
  br label %51

51:                                               ; preds = %39, %66
  %52 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %53 = load i32, i32* @I2C_A, align 4
  %54 = call i32 @snd_ca0106_ptr_read(%struct.snd_ca0106* %52, i32 %53, i32 0)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @I2C_A_ADC_START, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 1000
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  br label %51

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @I2C_A_ADC_ABORT, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %77

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %36

77:                                               ; preds = %72, %36
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load %struct.snd_ca0106*, %struct.snd_ca0106** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ca0106, %struct.snd_ca0106* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %90

89:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %80, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_ca0106_ptr_write(%struct.snd_ca0106*, i32, i32, i32) #1

declare dso_local i32 @snd_ca0106_ptr_read(%struct.snd_ca0106*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
