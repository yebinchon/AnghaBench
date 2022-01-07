; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677-spi.c_rt5677_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_rt5677-spi.c_rt5677_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32 }
%struct.spi_message = type { i32 }

@RT5677_SPI_HEADER = common dso_local global i32 0, align 4
@RT5677_SPI_BURST_LEN = common dso_local global i32 0, align 4
@g_spi = common dso_local global %struct.TYPE_3__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Bad write align 0x%x(%zu)\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@RT5677_SPI_FREQ = common dso_local global i32 0, align 4
@spi_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt5677_spi_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_transfer, align 8
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* @RT5677_SPI_HEADER, align 4
  %19 = load i32, i32* @RT5677_SPI_BURST_LEN, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @RT5677_SPI_HEADER, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32* %27, i32** %14, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %16, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %3
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %124

35:                                               ; preds = %3
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %43)
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %124

47:                                               ; preds = %35
  %48 = call i32 @memset(%struct.spi_transfer* %10, i32 0, i32 16)
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 0
  store i32* %24, i32** %49, align 8
  %50 = load i32, i32* @RT5677_SPI_FREQ, align 4
  %51 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  %52 = call i32 @spi_message_init_with_transfers(%struct.spi_message* %11, %struct.spi_transfer* %10, i32 1)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %58, %47
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %7, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %59, %60
  %62 = and i32 %61, 7
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = sub i64 %63, %65
  %67 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %68 = call i32 @rt5677_spi_select_cmd(i32 0, i32 %62, i64 %66, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 %69, i32* %70, align 16
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = and i32 %73, -16777216
  %75 = lshr i32 %74, 24
  %76 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %77, %78
  %80 = and i32 %79, 16711680
  %81 = ashr i32 %80, 16
  %82 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %83, %84
  %86 = and i32 %85, 65280
  %87 = ashr i32 %86, 8
  %88 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = and i32 %91, 255
  %93 = ashr i32 %92, 0
  %94 = getelementptr inbounds i32, i32* %24, i64 4
  store i32 %93, i32* %94, align 16
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i64, i64* %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 %102, %104
  %106 = call i32 @rt5677_spi_reverse(i32* %95, i32 %97, i32* %101, i64 %105)
  %107 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @RT5677_SPI_HEADER, align 4
  %112 = add nsw i32 %111, 1
  %113 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %10, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, %112
  store i32 %115, i32* %113, align 8
  %116 = call i32 @mutex_lock(i32* @spi_mutex)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_spi, align 8
  %118 = call i32 @spi_sync(%struct.TYPE_3__* %117, %struct.spi_message* %11)
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  %121 = call i32 @mutex_unlock(i32* @spi_mutex)
  br label %53

122:                                              ; preds = %53
  %123 = load i32, i32* %9, align 4
  store i32 %123, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %124

124:                                              ; preds = %122, %39, %32
  %125 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #2

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #2

declare dso_local i32 @spi_message_init_with_transfers(%struct.spi_message*, %struct.spi_transfer*, i32) #2

declare dso_local i32 @rt5677_spi_select_cmd(i32, i32, i64, i32*) #2

declare dso_local i32 @rt5677_spi_reverse(i32*, i32, i32*, i64) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @spi_sync(%struct.TYPE_3__*, %struct.spi_message*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
