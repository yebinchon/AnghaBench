; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp-i2c.c_sigmadsp_write_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp-i2c.c_sigmadsp_write_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i64)* @sigmadsp_write_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_write_i2c(i8* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %9, align 8
  %13 = add i64 2, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* @GFP_DMA, align 4
  %17 = or i32 %15, %16
  %18 = call i32* @kzalloc(i32 %14, i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %45

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @put_unaligned_be16(i32 %25, i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32*, i32** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @memcpy(i32* %29, i32* %30, i64 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 2
  %37 = call i32 @i2c_master_send(i8* %33, i32* %34, i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %45

44:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %42, %21
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @i2c_master_send(i8*, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
