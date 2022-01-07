; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz_icdc = type { i64 }

@ICDC_RGADW_OFFSET = common dso_local global i64 0, align 8
@ICDC_RGADW_RGADDR_MASK = common dso_local global i32 0, align 4
@ICDC_RGADW_RGADDR_OFFSET = common dso_local global i32 0, align 4
@ICDC_RGDATA_OFFSET = common dso_local global i64 0, align 8
@ICDC_RGDATA_RGDOUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*)* @jz4725b_codec_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_codec_reg_read(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.jz_icdc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.jz_icdc*
  store %struct.jz_icdc* %13, %struct.jz_icdc** %8, align 8
  %14 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %15 = call i32 @jz4725b_codec_io_wait(%struct.jz_icdc* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %22 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ICDC_RGADW_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @ICDC_RGADW_RGADDR_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ICDC_RGADW_RGADDR_OFFSET, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %30, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %37 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICDC_RGADW_OFFSET, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %55, %20
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %43, 6
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %47 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ICDC_RGDATA_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  %52 = load i32, i32* @ICDC_RGDATA_RGDOUT_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %42

58:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %18
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @jz4725b_codec_io_wait(%struct.jz_icdc*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
