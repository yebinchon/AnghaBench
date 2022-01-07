; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_audio_ssp_out_enable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_audio_ssp_out_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cygnus_aio_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@I2S_OUT_STREAM_ENA = common dso_local global i32 0, align 4
@I2S_OUT_CFGX_CLK_ENA = common dso_local global i32 0, align 4
@I2S_OUT_CFGX_DATA_ENABLE = common dso_local global i32 0, align 4
@BF_SRC_CFGX_SFIFO_ENA = common dso_local global i32 0, align 4
@PLAYBACK_STREAM_MASK = common dso_local global i32 0, align 4
@SPDIF_FORMAT_CFG_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Port not supported %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cygnus_aio_port*)* @audio_ssp_out_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_ssp_out_enable(%struct.cygnus_aio_port* %0) #0 {
  %2 = alloca %struct.cygnus_aio_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cygnus_aio_port* %0, %struct.cygnus_aio_port** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %6 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %168 [
    i32 128, label %8
    i32 129, label %110
  ]

8:                                                ; preds = %1
  %9 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %10 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %15 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %13, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @I2S_OUT_STREAM_ENA, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %26 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %31 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i32 @writel(i32 %24, i64 %34)
  %36 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %37 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %42 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = call i32 @writel(i32 1, i64 %45)
  %47 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %48 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %53 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* @I2S_OUT_CFGX_CLK_ENA, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* @I2S_OUT_CFGX_DATA_ENABLE, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %68 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %73 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %71, %75
  %77 = call i32 @writel(i32 %66, i64 %76)
  %78 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %79 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %78, i32 0, i32 2
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %84 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %82, %86
  %88 = call i32 @readl(i64 %87)
  store i32 %88, i32* %3, align 4
  %89 = load i32, i32* @BF_SRC_CFGX_SFIFO_ENA, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %95 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %100 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %98, %102
  %104 = call i32 @writel(i32 %93, i64 %103)
  %105 = load i32, i32* @PLAYBACK_STREAM_MASK, align 4
  %106 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %107 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %180

110:                                              ; preds = %1
  %111 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %112 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SPDIF_FORMAT_CFG_OFFSET, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @readl(i64 %117)
  store i32 %118, i32* %3, align 4
  %119 = load i32, i32* %3, align 4
  %120 = or i32 %119, 3
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %123 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @SPDIF_FORMAT_CFG_OFFSET, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %121, i64 %128)
  %130 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %131 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %136 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %134, %138
  %140 = call i32 @writel(i32 1, i64 %139)
  %141 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %142 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %147 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %145, %149
  %151 = call i32 @readl(i64 %150)
  store i32 %151, i32* %3, align 4
  %152 = load i32, i32* @BF_SRC_CFGX_SFIFO_ENA, align 4
  %153 = call i32 @BIT(i32 %152)
  %154 = load i32, i32* %3, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* %3, align 4
  %157 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %158 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %157, i32 0, i32 2
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %163 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %161, %165
  %167 = call i32 @writel(i32 %156, i64 %166)
  br label %180

168:                                              ; preds = %1
  %169 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %170 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %169, i32 0, i32 2
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %2, align 8
  %175 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %168, %110, %8
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
