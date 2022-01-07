; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_safeload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau1701.c_adau1701_safeload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32 }
%struct.i2c_client = type { i32 }
%struct.adau1701 = type { i32 }

@ADAU1701_DSPCTRL = common dso_local global i32 0, align 4
@ADAU1701_DSPCTRL_IST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, i32, i32*, i64)* @adau1701_safeload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau1701_safeload(%struct.sigmadsp* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigmadsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.adau1701*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %17 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.i2c_client* @to_i2c_client(i32 %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call %struct.adau1701* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.adau1701* %21, %struct.adau1701** %11, align 8
  %22 = load %struct.adau1701*, %struct.adau1701** %11, align 8
  %23 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ADAU1701_DSPCTRL, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %12)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %110

31:                                               ; preds = %4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @ADAU1701_DSPCTRL_IST, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 @msleep(i32 50)
  br label %38

38:                                               ; preds = %36, %31
  store i32 0, i32* %13, align 4
  br label %39

39:                                               ; preds = %99, %38
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* %9, align 8
  %43 = udiv i64 %42, 4
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @ADAU1701_SAFELOAD_DATA(i32 %46)
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %49 = call i32 @put_unaligned_le16(i32 %47, i32* %48)
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 2
  store i32 0, i32* %50, align 8
  %51 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %13, align 4
  %55 = mul i32 %54, 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = call i32 @memcpy(i32* %52, i32* %57, i32 4)
  %59 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %61 = call i32 @i2c_master_send(%struct.i2c_client* %59, i32* %60, i32 7)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %5, align 4
  br label %110

66:                                               ; preds = %45
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %110

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @ADAU1701_SAFELOAD_ADDR(i32 %74)
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %77 = call i32 @put_unaligned_le16(i32 %75, i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %78, %79
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = call i32 @put_unaligned_le16(i32 %80, i32* %82)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %85 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %86 = call i32 @i2c_master_send(%struct.i2c_client* %84, i32* %85, i32 4)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %73
  %90 = load i32, i32* %15, align 4
  store i32 %90, i32* %5, align 4
  br label %110

91:                                               ; preds = %73
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 4
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %110

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %13, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %39

102:                                              ; preds = %39
  %103 = load %struct.adau1701*, %struct.adau1701** %11, align 8
  %104 = getelementptr inbounds %struct.adau1701, %struct.adau1701* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ADAU1701_DSPCTRL, align 4
  %107 = load i32, i32* @ADAU1701_DSPCTRL_IST, align 4
  %108 = load i32, i32* @ADAU1701_DSPCTRL_IST, align 4
  %109 = call i32 @regmap_update_bits(i32 %105, i32 %106, i32 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %102, %94, %89, %69, %64, %29
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local %struct.adau1701* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @ADAU1701_SAFELOAD_DATA(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @ADAU1701_SAFELOAD_ADDR(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
