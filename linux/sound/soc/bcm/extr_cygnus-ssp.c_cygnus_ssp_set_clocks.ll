; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_set_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/bcm/extr_cygnus-ssp.c_cygnus_ssp_set_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cygnus_aio_port = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Invalid combination of MCLK and BCLK\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"lrclk = %u, bits/frame = %u, mclk = %u\0A\00", align 1
@I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SCLKS_PER_1FS_DIV32 = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unknown port type\0A\00", align 1
@I2S_OUT_MCLKRATE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"mclk cfg reg = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"bits per frame = %u, mclk = %u Hz, lrclk = %u Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cygnus_aio_port*)* @cygnus_ssp_set_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_ssp_set_clocks(%struct.cygnus_aio_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cygnus_aio_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cygnus_aio_port* %0, %struct.cygnus_aio_port** %3, align 8
  store i32 15, i32* %5, align 4
  %10 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %11 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %14 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul i32 %12, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %18 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = urem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %181

26:                                               ; preds = %1
  %27 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %28 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %36 [
    i32 2, label %33
    i32 4, label %33
    i32 6, label %33
    i32 8, label %33
    i32 10, label %33
    i32 12, label %33
    i32 14, label %33
  ]

33:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %34 = load i32, i32* %9, align 4
  %35 = udiv i32 %34, 2
  store i32 %35, i32* %7, align 4
  br label %60

36:                                               ; preds = %26
  %37 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %38 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %44 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %43, i32 0, i32 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %49 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %52 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %55 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %181

60:                                               ; preds = %33
  %61 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %62 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %116 [
    i32 128, label %64
    i32 129, label %115
  ]

64:                                               ; preds = %60
  %65 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %66 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 512
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %70, %64
  %72 = load i32, i32* %6, align 4
  %73 = sdiv i32 %72, 32
  store i32 %73, i32* %6, align 4
  %74 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %75 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %80 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %78, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32, align 4
  %87 = shl i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @I2S_OUT_CFGX_SCLKS_PER_1FS_DIV32, align 4
  %93 = shl i32 %91, %92
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %98 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %97, i32 0, i32 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %103 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %101, %105
  %107 = call i32 @writel(i32 %96, i64 %106)
  %108 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %109 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %108, i32 0, i32 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %125

115:                                              ; preds = %60
  br label %125

116:                                              ; preds = %60
  %117 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %118 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %117, i32 0, i32 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %181

125:                                              ; preds = %115, %71
  %126 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %127 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %126, i32 0, i32 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %132 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %131, i32 0, i32 5
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %130, %134
  %136 = call i32 @readl(i64 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* @I2S_OUT_MCLKRATE_SHIFT, align 4
  %138 = shl i32 15, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %4, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @I2S_OUT_MCLKRATE_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %4, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %149 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %148, i32 0, i32 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %154 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %152, %156
  %158 = call i32 @writel(i32 %147, i64 %157)
  %159 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %160 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %159, i32 0, i32 4
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %164)
  %166 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %167 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %166, i32 0, i32 4
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %172 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %175 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.cygnus_aio_port*, %struct.cygnus_aio_port** %3, align 8
  %178 = getelementptr inbounds %struct.cygnus_aio_port, %struct.cygnus_aio_port* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %170, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %173, i32 %176, i32 %179)
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %125, %116, %36, %23
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
