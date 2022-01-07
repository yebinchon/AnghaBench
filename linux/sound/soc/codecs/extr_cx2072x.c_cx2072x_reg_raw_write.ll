; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_reg_raw_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cx2072x.c_cx2072x_reg_raw_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }

@CX2072X_MAX_EQ_COEFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"I2C write failed, ret = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i8*, i64)* @cx2072x_reg_raw_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2072x_reg_raw_write(%struct.i2c_client* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load i32, i32* @CX2072X_MAX_EQ_COEFF, align 4
  %18 = add nsw i32 2, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %22, 2
  %24 = mul nuw i64 4, %19
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = lshr i32 %33, 8
  %35 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %34, i32* %35, align 16
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, 255
  %38 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds i32, i32* %21, i64 2
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @memcpy(i32* %39, i8* %40, i64 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %44, 2
  %46 = call i32 @i2c_master_send(%struct.i2c_client* %43, i32* %21, i64 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, 2
  %51 = icmp ne i64 %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %32
  %53 = load %struct.device*, %struct.device** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %13, align 4
  br label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  store i32 %64, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

65:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %65, %63, %29
  %67 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %67)
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i64) #2

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
