; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/kirkwood/extr_kirkwood-i2s.c_kirkwood_i2s_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kirkwood_dma_data = type { i64 }

@KIRKWOOD_INT_CAUSE = common dso_local global i64 0, align 8
@KIRKWOOD_INT_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL = common dso_local global i64 0, align 8
@KIRKWOOD_PLAYCTL_ENABLE_MASK = common dso_local global i64 0, align 8
@KIRKWOOD_RECCTL = common dso_local global i64 0, align 8
@KIRKWOOD_RECCTL_ENABLE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kirkwood_dma_data*)* @kirkwood_i2s_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_i2s_init(%struct.kirkwood_dma_data* %0) #0 {
  %2 = alloca %struct.kirkwood_dma_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.kirkwood_dma_data* %0, %struct.kirkwood_dma_data** %2, align 8
  %5 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %6 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @KIRKWOOD_INT_CAUSE, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i64 4294967295, i64 %9)
  %11 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %12 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KIRKWOOD_INT_MASK, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i64 0, i64 %15)
  %17 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %18 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 4608
  %21 = call i8* @readl(i64 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -3358713
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, 1121560
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %30 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4608
  %33 = call i32 @writel(i64 %28, i64 %32)
  %34 = call i32 @msleep(i32 500)
  %35 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %36 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4608
  %39 = call i8* @readl(i64 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = and i32 %41, -3358713
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 1121560
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %48 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 4608
  %51 = call i32 @writel(i64 %46, i64 %50)
  %52 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %53 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i8* @readl(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  store i64 %58, i64* %3, align 8
  %59 = load i64, i64* @KIRKWOOD_PLAYCTL_ENABLE_MASK, align 8
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %3, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %65 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @KIRKWOOD_PLAYCTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i64 %63, i64 %68)
  %70 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %71 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i8* @readl(i64 %74)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* @KIRKWOOD_RECCTL_ENABLE_MASK, align 8
  %78 = xor i64 %77, -1
  %79 = load i64, i64* %3, align 8
  %80 = and i64 %79, %78
  store i64 %80, i64* %3, align 8
  %81 = load i64, i64* %3, align 8
  %82 = load %struct.kirkwood_dma_data*, %struct.kirkwood_dma_data** %2, align 8
  %83 = getelementptr inbounds %struct.kirkwood_dma_data, %struct.kirkwood_dma_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @KIRKWOOD_RECCTL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i64 %81, i64 %86)
  ret i32 0
}

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i8* @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
