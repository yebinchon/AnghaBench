; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_asrc.c_fsl_asrc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_asrc = type { %struct.TYPE_4__**, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@REG_ASRSTR = common dso_local global i32 0, align 4
@ASRSTR_AOLE = common dso_local global i32 0, align 4
@ASRC_PAIR_A = common dso_local global i32 0, align 4
@ASRC_PAIR_MAX_NUM = common dso_local global i32 0, align 4
@ASRSTR_ATQOL = common dso_local global i32 0, align 4
@ASRC_TASK_Q_OVERLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ASRC Task Queue FIFO overload\0A\00", align 1
@ASRC_OUTPUT_TASK_OVERLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Output Task Overload\0A\00", align 1
@ASRC_INPUT_TASK_OVERLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Input Task Overload\0A\00", align 1
@ASRC_OUTPUT_BUFFER_OVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Output Data Buffer has overflowed\0A\00", align 1
@ASRC_INPUT_BUFFER_UNDERRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Input Data Buffer has underflowed\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fsl_asrc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_asrc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_asrc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.fsl_asrc*
  store %struct.fsl_asrc* %10, %struct.fsl_asrc** %5, align 8
  %11 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %12 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %16 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @REG_ASRSTR, align 4
  %19 = call i32 @regmap_read(i32 %17, i32 %18, i32* %8)
  %20 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @REG_ASRSTR, align 4
  %24 = load i32, i32* @ASRSTR_AOLE, align 4
  %25 = call i32 @regmap_write(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @ASRC_PAIR_A, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %137, %2
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ASRC_PAIR_MAX_NUM, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %140

31:                                               ; preds = %27
  %32 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %33 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %31
  br label %137

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ASRSTR_ATQOL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load i32, i32* @ASRC_TASK_Q_OVERLOAD, align 4
  %48 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %49 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %47
  store i32 %57, i32* %55, align 4
  %58 = load %struct.device*, %struct.device** %6, align 8
  %59 = call i32 @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %46, %41
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ASRSTR_AOOL(i32 %62)
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i32, i32* @ASRC_OUTPUT_TASK_OVERLOAD, align 4
  %68 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %69 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %70, i64 %72
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %67
  store i32 %77, i32* %75, align 4
  %78 = call i32 @pair_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %66, %60
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @ASRSTR_AIOL(i32 %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %79
  %86 = load i32, i32* @ASRC_INPUT_TASK_OVERLOAD, align 4
  %87 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %88 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %91
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %86
  store i32 %96, i32* %94, align 4
  %97 = call i32 @pair_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %85, %79
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ASRSTR_AODO(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load i32, i32* @ASRC_OUTPUT_BUFFER_OVERFLOW, align 4
  %106 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %107 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %108, i64 %110
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %105
  store i32 %115, i32* %113, align 4
  %116 = call i32 @pair_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %104, %98
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @ASRSTR_AIDU(i32 %119)
  %121 = and i32 %118, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i32, i32* @ASRC_INPUT_BUFFER_UNDERRUN, align 4
  %125 = load %struct.fsl_asrc*, %struct.fsl_asrc** %5, align 8
  %126 = getelementptr inbounds %struct.fsl_asrc, %struct.fsl_asrc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %127, i64 %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %124
  store i32 %134, i32* %132, align 4
  %135 = call i32 @pair_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %136

136:                                              ; preds = %123, %117
  br label %137

137:                                              ; preds = %136, %40
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %27

140:                                              ; preds = %27
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %141
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @ASRSTR_AOOL(i32) #1

declare dso_local i32 @pair_dbg(i8*) #1

declare dso_local i32 @ASRSTR_AIOL(i32) #1

declare dso_local i32 @ASRSTR_AODO(i32) #1

declare dso_local i32 @ASRSTR_AIDU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
