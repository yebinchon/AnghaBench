; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_io.c_snd_emu10k1_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emu10k1 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"i2c_write: invalid values.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@P17V_I2C_1 = common dso_local global i32 0, align 4
@I2C_A_ADC_LAST = common dso_local global i32 0, align 4
@I2C_A_ADC_START = common dso_local global i32 0, align 4
@I2C_A_ADC_ADD = common dso_local global i32 0, align 4
@P17V_I2C_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"emu10k1:I2C:timeout status=0x%x\0A\00", align 1
@I2C_A_ADC_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Writing to ADC failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"status=0x%x, reg=%d, value=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_emu10k1_i2c_write(%struct.snd_emu10k1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_emu10k1* %0, %struct.snd_emu10k1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 127
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 511
  br i1 %17, label %18, label %27

18:                                               ; preds = %15, %3
  %19 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %118

27:                                               ; preds = %15
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 25
  %33 = load i32, i32* %7, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %37 = load i32, i32* @P17V_I2C_1, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %36, i32 %37, i32 0, i32 %38)
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %41 = load i32, i32* @P17V_I2C_1, align 4
  %42 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %40, i32 %41, i32 0)
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %89, %27
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @I2C_A_ADC_LAST, align 4
  %49 = load i32, i32* @I2C_A_ADC_START, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @I2C_A_ADC_ADD, align 4
  %52 = or i32 %50, %51
  %53 = or i32 %47, %52
  store i32 %53, i32* %8, align 4
  %54 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %55 = load i32, i32* @P17V_I2C_ADDR, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1* %54, i32 %55, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %46, %81
  %59 = call i32 @mdelay(i32 1)
  %60 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %61 = load i32, i32* @P17V_I2C_ADDR, align 4
  %62 = call i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1* %60, i32 %61, i32 0)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @I2C_A_ADC_START, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %82

70:                                               ; preds = %58
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 1000
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %75 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_warn(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %82

81:                                               ; preds = %70
  br label %58

82:                                               ; preds = %73, %69
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @I2C_A_ADC_ABORT, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %92

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %43

92:                                               ; preds = %87, %43
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %113

95:                                               ; preds = %92
  %96 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @dev_err(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, ...) @dev_err(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %95, %92
  %114 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %115 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load i32, i32* %12, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %113, %18
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @snd_emu10k1_ptr20_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @snd_emu10k1_ptr20_read(%struct.snd_emu10k1*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
