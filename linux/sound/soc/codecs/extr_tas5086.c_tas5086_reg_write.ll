; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tas5086.c_tas5086_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @tas5086_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tas5086_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.i2c_client*
  store %struct.i2c_client* %14, %struct.i2c_client** %8, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @tas5086_register_size(i32* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %25, i32* %26, align 16
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %38, %24
  %29 = load i32, i32* %9, align 4
  %30 = icmp uge i32 %29, 1
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %36, 8
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %39, -1
  store i32 %40, i32* %9, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @i2c_master_send(%struct.i2c_client* %42, i32* %43, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %60

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %55, %51, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @tas5086_register_size(i32*, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
