; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_burst_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_burst_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RT5514_SPI_CMD_BURST_WRITE = common dso_local global i32 0, align 4
@RT5514_SPI_BUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rt5514_spi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5514_spi_burst_write(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* @RT5514_SPI_CMD_BURST_WRITE, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %15 = add nsw i32 %14, 6
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %206

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %188, %23
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %203

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %32 = add i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  store i32 %37, i32* %11, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %41 = sext i32 %40 to i64
  %42 = urem i64 %39, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %38, %36
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %48, %49
  %51 = and i32 %50, -16777216
  %52 = lshr i32 %51, 24
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  %58 = and i32 %57, 16711680
  %59 = lshr i32 %58, 16
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %62, %63
  %65 = and i32 %64, 65280
  %66 = lshr i32 %65, 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %12, align 4
  %71 = add i32 %69, %70
  %72 = and i32 %71, 255
  %73 = lshr i32 %72, 0
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %185, %44
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %188

80:                                               ; preds = %76
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %10, align 4
  %84 = add i32 %82, %83
  %85 = add i32 %84, 0
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 12
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add i32 %95, %96
  %98 = add i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %103, 11
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add i32 %108, %109
  %111 = add i32 %110, 2
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %107, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %116, 10
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %10, align 4
  %123 = add i32 %121, %122
  %124 = add i32 %123, 3
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %120, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add i32 %129, 9
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 %127, i32* %132, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %10, align 4
  %136 = add i32 %134, %135
  %137 = add i32 %136, 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* %10, align 4
  %143 = add i32 %142, 8
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  store i32 %140, i32* %145, align 4
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add i32 %147, %148
  %150 = add i32 %149, 5
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = add i32 %155, 7
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add i32 %160, %161
  %163 = add i32 %162, 6
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %159, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %168, 6
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %173, %174
  %176 = add i32 %175, 7
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %10, align 4
  %182 = add i32 %181, 5
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %80
  %186 = load i32, i32* %10, align 4
  %187 = add i32 %186, 8
  store i32 %187, i32* %10, align 4
  br label %76

188:                                              ; preds = %76
  %189 = load i32, i32* %8, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load i32, i32* %11, align 4
  %192 = add i32 %191, 5
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load i32, i32* @rt5514_spi, align 4
  %196 = load i32*, i32** %9, align 8
  %197 = load i32, i32* %11, align 4
  %198 = add i32 %197, 6
  %199 = call i32 @spi_write(i32 %195, i32* %196, i32 %198)
  %200 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %201 = load i32, i32* %12, align 4
  %202 = add i32 %201, %200
  store i32 %202, i32* %12, align 4
  br label %24

203:                                              ; preds = %24
  %204 = load i32*, i32** %9, align 8
  %205 = call i32 @kfree(i32* %204)
  store i32 0, i32* %4, align 4
  br label %206

206:                                              ; preds = %203, %20
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @spi_write(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
