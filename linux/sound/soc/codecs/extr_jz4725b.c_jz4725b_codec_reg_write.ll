; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_jz4725b.c_jz4725b_codec_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz_icdc = type { i64 }

@ICDC_RGADW_RGWR = common dso_local global i32 0, align 4
@ICDC_RGADW_RGADDR_OFFSET = common dso_local global i32 0, align 4
@ICDC_RGADW_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @jz4725b_codec_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4725b_codec_reg_write(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jz_icdc*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.jz_icdc*
  store %struct.jz_icdc* %11, %struct.jz_icdc** %8, align 8
  %12 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %13 = call i32 @jz4725b_codec_io_wait(%struct.jz_icdc* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load i32, i32* @ICDC_RGADW_RGWR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ICDC_RGADW_RGADDR_OFFSET, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %27 = getelementptr inbounds %struct.jz_icdc, %struct.jz_icdc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICDC_RGADW_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %25, i64 %30)
  %32 = load %struct.jz_icdc*, %struct.jz_icdc** %8, align 8
  %33 = call i32 @jz4725b_codec_io_wait(%struct.jz_icdc* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %18
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %36, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @jz4725b_codec_io_wait(%struct.jz_icdc*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
