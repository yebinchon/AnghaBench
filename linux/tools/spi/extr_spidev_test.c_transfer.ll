; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_ioc_transfer = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@bits = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@delay = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_LOOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't send spi message\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@output_file = common dso_local global i64 0, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"could not open output file\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"not all bytes written to output file\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i64)* @transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transfer(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_ioc_transfer, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 0
  %13 = load i32*, i32** %6, align 8
  %14 = ptrtoint i32* %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 1
  %16 = load i32*, i32** %7, align 8
  %17 = ptrtoint i32* %16 to i64
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 2
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %18, align 8
  %20 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 3
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 5
  %23 = load i32, i32* @bits, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 6
  %25 = load i32, i32* @speed, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 7
  %27 = load i32, i32* @delay, align 4
  store i32 %27, i32* %26, align 8
  %28 = load i32, i32* @mode, align 4
  %29 = load i32, i32* @SPI_TX_QUAD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 3
  store i32 4, i32* %33, align 8
  br label %42

34:                                               ; preds = %4
  %35 = load i32, i32* @mode, align 4
  %36 = load i32, i32* @SPI_TX_DUAL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 3
  store i32 2, i32* %40, align 8
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %32
  %43 = load i32, i32* @mode, align 4
  %44 = load i32, i32* @SPI_RX_QUAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 4
  store i32 4, i32* %48, align 4
  br label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @mode, align 4
  %51 = load i32, i32* @SPI_RX_DUAL, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 4
  store i32 2, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %49
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* @mode, align 4
  %59 = load i32, i32* @SPI_LOOP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @mode, align 4
  %64 = load i32, i32* @SPI_TX_QUAD, align 4
  %65 = load i32, i32* @SPI_TX_DUAL, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %81

71:                                               ; preds = %62
  %72 = load i32, i32* @mode, align 4
  %73 = load i32, i32* @SPI_RX_QUAD, align 4
  %74 = load i32, i32* @SPI_RX_DUAL, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.spi_ioc_transfer, %struct.spi_ioc_transfer* %11, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %78, %71
  br label %81

81:                                               ; preds = %80, %69
  br label %82

82:                                               ; preds = %81, %57
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @SPI_IOC_MESSAGE(i32 1)
  %85 = call i32 @ioctl(i32 %83, i32 %84, %struct.spi_ioc_transfer* %11)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @pabort(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i64, i64* @verbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @hex_dump(i32* %94, i64 %95, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i64, i64* @output_file, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load i64, i64* @output_file, align 8
  %102 = load i32, i32* @O_WRONLY, align 4
  %103 = load i32, i32* @O_CREAT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @O_TRUNC, align 4
  %106 = or i32 %104, %105
  %107 = call i32 @open(i64 %101, i32 %106, i32 438)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = call i32 @pabort(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %100
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @write(i32 %113, i32* %114, i64 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = call i32 @pabort(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %112
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @close(i32 %124)
  br label %126

126:                                              ; preds = %123, %97
  %127 = load i64, i64* @verbose, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load i32*, i32** %7, align 8
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @hex_dump(i32* %130, i64 %131, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %133

133:                                              ; preds = %129, %126
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.spi_ioc_transfer*) #1

declare dso_local i32 @SPI_IOC_MESSAGE(i32) #1

declare dso_local i32 @pabort(i8*) #1

declare dso_local i32 @hex_dump(i32*, i64, i32, i8*) #1

declare dso_local i32 @open(i64, i32, i32) #1

declare dso_local i32 @write(i32, i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
