; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_audio_ssp_in_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_audio_ssp_in_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cygnus_aio_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@BF_DST_CFGX_CAP_ENA = common dso_local global i32 0, align 4
@I2S_OUT_CFGX_CLK_ENA = common dso_local global i32 0, align 4
@I2S_OUT_CFGX_DATA_ENABLE = common dso_local global i32 0, align 4
@I2S_IN_STREAM_CFG_CAP_ENA = common dso_local global i32 0, align 4
@CAPTURE_STREAM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cygnus_aio_port*)* @audio_ssp_in_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_ssp_in_enable(%struct.cygnus_aio_port* %0) #0 {
  %2 = alloca %struct.cygnus_aio_port*, align 8
  %3 = alloca i32, align 4
  store %struct.cygnus_aio_port* %0, %struct.cygnus_aio_port** %2, align 8
  %4 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %5 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %10 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %8, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @BF_DST_CFGX_CAP_ENA, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %21 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %26 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %24, %28
  %30 = call i32 @writel(i32 %19, i64 %29)
  %31 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %32 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %37 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %35, %39
  %41 = call i32 @writel(i32 1, i64 %40)
  %42 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %43 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %48 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %46, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* @I2S_OUT_CFGX_CLK_ENA, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @I2S_OUT_CFGX_DATA_ENABLE, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %63 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %62, i32 0, i32 2
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %68 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %66, %70
  %72 = call i32 @writel(i32 %61, i64 %71)
  %73 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %74 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %79 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %77, %81
  %83 = call i32 @readl(i64 %82)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* @I2S_IN_STREAM_CFG_CAP_ENA, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %90 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %95 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %93, %97
  %99 = call i32 @writel(i32 %88, i64 %98)
  %100 = load i32, i32* @CAPTURE_STREAM_MASK, align 4
  %101 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %102 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
