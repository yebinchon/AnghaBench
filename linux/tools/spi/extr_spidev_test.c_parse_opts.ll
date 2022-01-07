; ModuleID = '/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_parse_opts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/spi/extr_spidev_test.c_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i8, i32 }

@parse_opts.lopts = internal constant [20 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 1, i8 0, i32 68 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 0, i32 115 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 1, i8 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 1, i8 0, i32 98 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i32 1, i8 0, i32 105 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 1, i8 0, i32 111 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 0, i8 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 0, i8 0, i32 72 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 0, i8 0, i32 79 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 0, i8 0, i32 76 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 0, i8 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i8 0, i32 51 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 0, i8 0, i32 78 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i8 0, i32 82 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 0, i8 0, i32 50 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 0, i8 0, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 0, i8 0, i32 52 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 1, i8 0, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 1, i8 0, i32 73 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"speed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"bpw\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"loop\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpha\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"cpol\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"lsb\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"cs-high\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"3wire\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"no-cs\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ready\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dual\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"quad\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"iter\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"D:s:d:b:i:o:lHOLC3NR24p:vS:I:\00", align 1
@optarg = common dso_local global i8* null, align 8
@device = common dso_local global i8* null, align 8
@speed = common dso_local global i8* null, align 8
@delay = common dso_local global i8* null, align 8
@bits = common dso_local global i8* null, align 8
@input_file = common dso_local global i8* null, align 8
@output_file = common dso_local global i8* null, align 8
@SPI_LOOP = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_NO_CS = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@SPI_READY = common dso_local global i32 0, align 4
@input_tx = common dso_local global i8* null, align 8
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@transfer_size = common dso_local global i8* null, align 8
@iterations = common dso_local global i8* null, align 8
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_opts(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  br label %6

6:                                                ; preds = %2, %84
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt_long(i32 %7, i8** %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), %struct.option* getelementptr inbounds ([20 x %struct.option], [20 x %struct.option]* @parse_opts.lopts, i64 0, i64 0), i32* null)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  br label %85

13:                                               ; preds = %6
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %79 [
    i32 68, label %15
    i32 115, label %17
    i32 100, label %20
    i32 98, label %23
    i32 105, label %26
    i32 111, label %28
    i32 108, label %30
    i32 72, label %34
    i32 79, label %38
    i32 76, label %42
    i32 67, label %46
    i32 51, label %50
    i32 78, label %54
    i32 118, label %58
    i32 82, label %59
    i32 112, label %63
    i32 50, label %65
    i32 52, label %69
    i32 83, label %73
    i32 73, label %76
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** @device, align 8
  br label %84

17:                                               ; preds = %13
  %18 = load i8*, i8** @optarg, align 8
  %19 = call i8* @atoi(i8* %18)
  store i8* %19, i8** @speed, align 8
  br label %84

20:                                               ; preds = %13
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i8* @atoi(i8* %21)
  store i8* %22, i8** @delay, align 8
  br label %84

23:                                               ; preds = %13
  %24 = load i8*, i8** @optarg, align 8
  %25 = call i8* @atoi(i8* %24)
  store i8* %25, i8** @bits, align 8
  br label %84

26:                                               ; preds = %13
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @input_file, align 8
  br label %84

28:                                               ; preds = %13
  %29 = load i8*, i8** @optarg, align 8
  store i8* %29, i8** @output_file, align 8
  br label %84

30:                                               ; preds = %13
  %31 = load i32, i32* @SPI_LOOP, align 4
  %32 = load i32, i32* @mode, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @mode, align 4
  br label %84

34:                                               ; preds = %13
  %35 = load i32, i32* @SPI_CPHA, align 4
  %36 = load i32, i32* @mode, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* @mode, align 4
  br label %84

38:                                               ; preds = %13
  %39 = load i32, i32* @SPI_CPOL, align 4
  %40 = load i32, i32* @mode, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* @mode, align 4
  br label %84

42:                                               ; preds = %13
  %43 = load i32, i32* @SPI_LSB_FIRST, align 4
  %44 = load i32, i32* @mode, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* @mode, align 4
  br label %84

46:                                               ; preds = %13
  %47 = load i32, i32* @SPI_CS_HIGH, align 4
  %48 = load i32, i32* @mode, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* @mode, align 4
  br label %84

50:                                               ; preds = %13
  %51 = load i32, i32* @SPI_3WIRE, align 4
  %52 = load i32, i32* @mode, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @mode, align 4
  br label %84

54:                                               ; preds = %13
  %55 = load i32, i32* @SPI_NO_CS, align 4
  %56 = load i32, i32* @mode, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* @mode, align 4
  br label %84

58:                                               ; preds = %13
  store i32 1, i32* @verbose, align 4
  br label %84

59:                                               ; preds = %13
  %60 = load i32, i32* @SPI_READY, align 4
  %61 = load i32, i32* @mode, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @mode, align 4
  br label %84

63:                                               ; preds = %13
  %64 = load i8*, i8** @optarg, align 8
  store i8* %64, i8** @input_tx, align 8
  br label %84

65:                                               ; preds = %13
  %66 = load i32, i32* @SPI_TX_DUAL, align 4
  %67 = load i32, i32* @mode, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @mode, align 4
  br label %84

69:                                               ; preds = %13
  %70 = load i32, i32* @SPI_TX_QUAD, align 4
  %71 = load i32, i32* @mode, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @mode, align 4
  br label %84

73:                                               ; preds = %13
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i8* @atoi(i8* %74)
  store i8* %75, i8** @transfer_size, align 8
  br label %84

76:                                               ; preds = %13
  %77 = load i8*, i8** @optarg, align 8
  %78 = call i8* @atoi(i8* %77)
  store i8* %78, i8** @iterations, align 8
  br label %84

79:                                               ; preds = %13
  %80 = load i8**, i8*** %4, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @print_usage(i8* %82)
  br label %84

84:                                               ; preds = %79, %76, %73, %69, %65, %63, %59, %58, %54, %50, %46, %42, %38, %34, %30, %28, %26, %23, %20, %17, %15
  br label %6

85:                                               ; preds = %12
  %86 = load i32, i32* @mode, align 4
  %87 = load i32, i32* @SPI_LOOP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %85
  %91 = load i32, i32* @mode, align 4
  %92 = load i32, i32* @SPI_TX_DUAL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @SPI_RX_DUAL, align 4
  %97 = load i32, i32* @mode, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* @mode, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i32, i32* @mode, align 4
  %101 = load i32, i32* @SPI_TX_QUAD, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load i32, i32* @SPI_RX_QUAD, align 4
  %106 = load i32, i32* @mode, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* @mode, align 4
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %85
  ret void
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @print_usage(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
