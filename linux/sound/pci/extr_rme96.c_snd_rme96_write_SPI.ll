; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_write_SPI.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_rme96.c_snd_rme96_write_SPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rme96 = type { i32, i64 }

@RME96_AR_CDATA = common dso_local global i32 0, align 4
@RME96_AR_CCLK = common dso_local global i32 0, align 4
@RME96_AR_CLATCH = common dso_local global i32 0, align 4
@RME96_IO_ADDITIONAL_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rme96*, i32)* @snd_rme96_write_SPI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_rme96_write_SPI(%struct.rme96* %0, i32 %1) #0 {
  %3 = alloca %struct.rme96*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rme96* %0, %struct.rme96** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %62, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %65

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 32768
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* @RME96_AR_CDATA, align 4
  %15 = load %struct.rme96*, %struct.rme96** %3, align 8
  %16 = getelementptr inbounds %struct.rme96, %struct.rme96* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  br label %26

19:                                               ; preds = %9
  %20 = load i32, i32* @RME96_AR_CDATA, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.rme96*, %struct.rme96** %3, align 8
  %23 = getelementptr inbounds %struct.rme96, %struct.rme96* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %13
  %27 = load i32, i32* @RME96_AR_CCLK, align 4
  %28 = load i32, i32* @RME96_AR_CLATCH, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load %struct.rme96*, %struct.rme96** %3, align 8
  %32 = getelementptr inbounds %struct.rme96, %struct.rme96* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rme96*, %struct.rme96** %3, align 8
  %36 = getelementptr inbounds %struct.rme96, %struct.rme96* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.rme96*, %struct.rme96** %3, align 8
  %39 = getelementptr inbounds %struct.rme96, %struct.rme96* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = call i32 @udelay(i32 10)
  %45 = load i32, i32* @RME96_AR_CCLK, align 4
  %46 = load %struct.rme96*, %struct.rme96** %3, align 8
  %47 = getelementptr inbounds %struct.rme96, %struct.rme96* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.rme96*, %struct.rme96** %3, align 8
  %51 = getelementptr inbounds %struct.rme96, %struct.rme96* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.rme96*, %struct.rme96** %3, align 8
  %54 = getelementptr inbounds %struct.rme96, %struct.rme96* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = call i32 @udelay(i32 10)
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %26
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %6

65:                                               ; preds = %6
  %66 = load i32, i32* @RME96_AR_CCLK, align 4
  %67 = load i32, i32* @RME96_AR_CDATA, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load %struct.rme96*, %struct.rme96** %3, align 8
  %71 = getelementptr inbounds %struct.rme96, %struct.rme96* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @RME96_AR_CLATCH, align 4
  %75 = load %struct.rme96*, %struct.rme96** %3, align 8
  %76 = getelementptr inbounds %struct.rme96, %struct.rme96* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.rme96*, %struct.rme96** %3, align 8
  %80 = getelementptr inbounds %struct.rme96, %struct.rme96* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.rme96*, %struct.rme96** %3, align 8
  %83 = getelementptr inbounds %struct.rme96, %struct.rme96* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = call i32 @udelay(i32 10)
  %89 = load i32, i32* @RME96_AR_CLATCH, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.rme96*, %struct.rme96** %3, align 8
  %92 = getelementptr inbounds %struct.rme96, %struct.rme96* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.rme96*, %struct.rme96** %3, align 8
  %96 = getelementptr inbounds %struct.rme96, %struct.rme96* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.rme96*, %struct.rme96** %3, align 8
  %99 = getelementptr inbounds %struct.rme96, %struct.rme96* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RME96_IO_ADDITIONAL_REG, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
