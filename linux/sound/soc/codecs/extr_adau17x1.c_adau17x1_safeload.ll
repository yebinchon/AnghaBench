; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_safeload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_adau17x1.c_adau17x1_safeload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32 }

@ADAU17X1_WORD_SIZE = common dso_local global i32 0, align 4
@ADAU17X1_SAFELOAD_DATA_SIZE = common dso_local global i32 0, align 4
@ADAU17X1_SAFELOAD_DATA = common dso_local global i32 0, align 4
@ADAU17X1_SAFELOAD_TARGET_ADDRESS = common dso_local global i32 0, align 4
@ADAU17X1_SAFELOAD_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, i32, i32*, i64)* @adau17x1_safeload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adau17x1_safeload(%struct.sigmadsp* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigmadsp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @ADAU17X1_SAFELOAD_DATA_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = sub i64 %29, %33
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %4
  %37 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %38 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ADAU17X1_SAFELOAD_DATA, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @regmap_raw_write(i32 %39, i32 %40, i32* %41, i32 %43)
  store i32 %44, i32* %15, align 4
  br label %61

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @ADAU17X1_SAFELOAD_DATA_SIZE, align 4
  %49 = call i32 @memset(i32* %23, i32 0, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @memcpy(i32* %23, i32* %50, i64 %51)
  %53 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %54 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ADAU17X1_SAFELOAD_DATA, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %59 = mul i32 %57, %58
  %60 = call i32 @regmap_raw_write(i32 %55, i32 %56, i32* %23, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %45, %36
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %95

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %67, 1
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @put_unaligned_be32(i32 %69, i32* %20)
  %71 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %72 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ADAU17X1_SAFELOAD_TARGET_ADDRESS, align 4
  %75 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %76 = call i32 @regmap_raw_write(i32 %73, i32 %74, i32* %20, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* %15, align 4
  store i32 %80, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %95

81:                                               ; preds = %66
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @put_unaligned_be32(i32 %82, i32* %20)
  %84 = load %struct.sigmadsp*, %struct.sigmadsp** %6, align 8
  %85 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ADAU17X1_SAFELOAD_TRIGGER, align 4
  %88 = load i32, i32* @ADAU17X1_WORD_SIZE, align 4
  %89 = call i32 @regmap_raw_write(i32 %86, i32 %87, i32* %20, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %95

94:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %95

95:                                               ; preds = %94, %92, %79, %64
  %96 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_raw_write(i32, i32, i32*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i64) #2

declare dso_local i32 @put_unaligned_be32(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
