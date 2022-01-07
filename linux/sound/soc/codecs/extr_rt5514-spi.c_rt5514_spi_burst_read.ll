; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_burst_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5514-spi.c_rt5514_spi_burst_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@RT5514_SPI_CMD_BURST_READ = common dso_local global i32 0, align 4
@RT5514_SPI_BUF_LEN = common dso_local global i32 0, align 4
@rt5514_spi = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5514_spi_burst_read(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca [3 x %struct.spi_transfer], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @RT5514_SPI_CMD_BURST_READ, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %97, %3
  %18 = load i32, i32* %13, align 4
  %19 = zext i32 %18 to i64
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %101

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %25 = add i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  store i32 %30, i32* %12, align 4
  br label %37

31:                                               ; preds = %22
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = urem i64 %32, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %13, align 4
  %42 = add i32 %40, %41
  %43 = and i32 %42, -16777216
  %44 = lshr i32 %43, 24
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %13, align 4
  %48 = add i32 %46, %47
  %49 = and i32 %48, 16711680
  %50 = lshr i32 %49, 16
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add i32 %52, %53
  %55 = and i32 %54, 65280
  %56 = lshr i32 %55, 8
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %58, %59
  %61 = and i32 %60, 255
  %62 = lshr i32 %61, 0
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %62, i32* %63, align 16
  %64 = call i32 @spi_message_init(%struct.spi_message* %14)
  %65 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 0
  %66 = call i32 @memset(%struct.spi_transfer* %65, i32 0, i32 72)
  %67 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 0
  %68 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %67, i32 0, i32 0
  store i32 5, i32* %68, align 16
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %70 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 0
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 0
  %73 = call i32 @spi_message_add_tail(%struct.spi_transfer* %72, %struct.spi_message* %14)
  %74 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 1
  %75 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %74, i32 0, i32 0
  store i32 4, i32* %75, align 8
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %77 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 1
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %77, i32 0, i32 1
  store i32* %76, i32** %78, align 8
  %79 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 1
  %80 = call i32 @spi_message_add_tail(%struct.spi_transfer* %79, %struct.spi_message* %14)
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 2
  %83 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 16
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 2
  %89 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 16
  %90 = getelementptr inbounds [3 x %struct.spi_transfer], [3 x %struct.spi_transfer]* %15, i64 0, i64 2
  %91 = call i32 @spi_message_add_tail(%struct.spi_transfer* %90, %struct.spi_message* %14)
  %92 = load i32, i32* @rt5514_spi, align 4
  %93 = call i32 @spi_sync(i32 %92, %struct.spi_message* %14)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %224

97:                                               ; preds = %37
  %98 = load i32, i32* @RT5514_SPI_BUF_LEN, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %17

101:                                              ; preds = %17
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %220, %101
  %103 = load i32, i32* %11, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* %7, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %223

107:                                              ; preds = %102
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 0
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %113, i32* %114, align 16
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %127, i32* %128, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add i32 %130, 3
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* %11, align 4
  %138 = add i32 %137, 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %141, i32* %142, align 16
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %11, align 4
  %145 = add i32 %144, 5
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %6, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %151, 6
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  store i32 %155, i32* %156, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 7
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %11, align 4
  %168 = add i32 %167, 0
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  %172 = load i32, i32* %171, align 8
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %11, align 4
  %175 = add i32 %174, 1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* %11, align 4
  %182 = add i32 %181, 2
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %186 = load i32, i32* %185, align 16
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %11, align 4
  %189 = add i32 %188, 3
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add i32 %195, 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  store i32 %193, i32* %198, align 4
  %199 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %11, align 4
  %203 = add i32 %202, 5
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %200, i32* %205, align 4
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %11, align 4
  %210 = add i32 %209, 6
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %214 = load i32, i32* %213, align 16
  %215 = load i32*, i32** %6, align 8
  %216 = load i32, i32* %11, align 4
  %217 = add i32 %216, 7
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  store i32 %214, i32* %219, align 4
  br label %220

220:                                              ; preds = %107
  %221 = load i32, i32* %11, align 4
  %222 = add i32 %221, 8
  store i32 %222, i32* %11, align 4
  br label %102

223:                                              ; preds = %102
  store i32 1, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %96
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
