; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_check_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/img/extr_img-i2s-in.c_img_i2s_in_check_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_i2s_in = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Sys clock rate %u insufficient for sample rate %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_i2s_in*, i32, i32, i32*, i32*)* @img_i2s_in_check_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_i2s_in_check_rate(%struct.img_i2s_in* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.img_i2s_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.img_i2s_in* %0, %struct.img_i2s_in** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %12, align 4
  %17 = load %struct.img_i2s_in*, %struct.img_i2s_in** %7, align 8
  %18 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_get_rate(i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %12, align 4
  %23 = mul i32 %22, 8
  %24 = icmp uge i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32*, i32** %10, align 8
  store i32 1, i32* %26, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  br label %55

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = mul i32 %30, 7
  %32 = icmp uge i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32*, i32** %10, align 8
  store i32 1, i32* %34, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 1, i32* %35, align 4
  br label %54

36:                                               ; preds = %28
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = mul i32 %38, 6
  %40 = icmp uge i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  store i32 0, i32* %42, align 4
  %43 = load i32*, i32** %11, align 8
  store i32 0, i32* %43, align 4
  br label %53

44:                                               ; preds = %36
  %45 = load %struct.img_i2s_in*, %struct.img_i2s_in** %7, align 8
  %46 = getelementptr inbounds %struct.img_i2s_in, %struct.img_i2s_in* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @dev_err(i32 %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %56

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %25
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %55, %44
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
