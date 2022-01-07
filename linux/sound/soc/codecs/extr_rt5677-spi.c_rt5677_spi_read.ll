; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677-spi.c_rt5677_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677-spi.c_rt5677_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32*, i8* }
%struct.spi_message = type { i32 }

@RT5677_SPI_HEADER = common dso_local global i32 0, align 4
@RT5677_SPI_BURST_LEN = common dso_local global i32 0, align 4
@g_spi = common dso_local global %struct.TYPE_3__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad read align 0x%x(%zu)\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@RT5677_SPI_FREQ = common dso_local global i8* null, align 8
@spi_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5677_spi_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.spi_transfer], align 16
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @RT5677_SPI_HEADER, align 4
  %19 = add nsw i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @RT5677_SPI_BURST_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %16, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %139

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 3
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37, %33
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %45)
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %139

49:                                               ; preds = %37
  %50 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %51 = call i32 @memset(%struct.spi_transfer* %50, i32 0, i32 64)
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 0
  store i32* %22, i32** %53, align 16
  %54 = mul nuw i64 4, %20
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load i8*, i8** @RT5677_SPI_FREQ, align 8
  %59 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %60 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %62 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %61, i32 0, i32 2
  store i32* %25, i32** %62, align 16
  %63 = load i8*, i8** @RT5677_SPI_FREQ, align 8
  %64 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %65 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %67 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(%struct.spi_transfer* %67)
  %69 = call i32 @spi_message_init_with_transfers(%struct.spi_message* %11, %struct.spi_transfer* %66, i32 %68)
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %131, %49
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %137

75:                                               ; preds = %70
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  %79 = and i32 %78, 7
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %80, %82
  %84 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %85 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %84, i32 0, i32 1
  %86 = call i32 @rt5677_spi_select_cmd(i32 1, i32 %79, i64 %83, i32* %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %87, i32* %88, align 16
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = and i32 %91, -16777216
  %93 = lshr i32 %92, 24
  %94 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %95, %96
  %98 = and i32 %97, 16711680
  %99 = ashr i32 %98, 16
  %100 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = and i32 %103, 65280
  %105 = ashr i32 %104, 8
  %106 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %107, %108
  %110 = and i32 %109, 255
  %111 = ashr i32 %110, 0
  %112 = getelementptr inbounds i32, i32* %22, i64 4
  store i32 %111, i32* %112, align 16
  %113 = call i32 @mutex_lock(i32* @spi_mutex)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %115 = call i32 @spi_sync(%struct.TYPE_3__* %114, %struct.spi_message* %11)
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = call i32 @mutex_unlock(i32* @spi_mutex)
  %119 = load i32*, i32** %16, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = sub i64 %123, %125
  %127 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %128 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @rt5677_spi_reverse(i32* %122, i64 %126, i32* %25, i32 %129)
  br label %131

131:                                              ; preds = %75
  %132 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %10, i64 0, i64 1
  %133 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %70

137:                                              ; preds = %70
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %139

139:                                              ; preds = %137, %41, %30
  %140 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #2

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_init_with_transfers(%struct.spi_message*, %struct.spi_transfer*, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.spi_transfer*) #2

declare dso_local i32 @rt5677_spi_select_cmd(i32, i32, i64, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.TYPE_3__*, %struct.spi_message*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @rt5677_spi_reverse(i32*, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
