; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/ti/extr_omap-mcbsp.c_omap_mcbsp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32 }

@IRQST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"IRQ callback : 0x%x\0A\00", align 1
@RSYNCERREN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RX Frame Sync Error!\0A\00", align 1
@RFSREN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"RX Frame Sync\0A\00", align 1
@REOFEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"RX End Of Frame\0A\00", align 1
@RRDYEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"RX Buffer Threshold Reached\0A\00", align 1
@RUNDFLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"RX Buffer Underflow!\0A\00", align 1
@ROVFLEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"RX Buffer Overflow!\0A\00", align 1
@XSYNCERREN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"TX Frame Sync Error!\0A\00", align 1
@XFSXEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"TX Frame Sync\0A\00", align 1
@XEOFEN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"TX End Of Frame\0A\00", align 1
@XRDYEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"TX Buffer threshold Reached\0A\00", align 1
@XUNDFLEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [22 x i8] c"TX Buffer Underflow!\0A\00", align 1
@XOVFLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"TX Buffer Overflow!\0A\00", align 1
@XEMPTYEOFEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [33 x i8] c"TX Buffer empty at end of frame\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_mcbsp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap_mcbsp*
  store %struct.omap_mcbsp* %8, %struct.omap_mcbsp** %5, align 8
  %9 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %10 = load i32, i32* @IRQST, align 4
  %11 = call i32 @MCBSP_READ(%struct.omap_mcbsp* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %13 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @RSYNCERREN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %23 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @RFSREN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %33 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @REOFEN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %43 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @RRDYEN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %53 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RUNDFLEN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %63 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ROVFLEN, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %73 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_err(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %71, %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @XSYNCERREN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %83 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %76
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @XFSXEN, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %93 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @XEOFEN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %103 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, ...) @dev_dbg(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @XRDYEN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %113 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @dev_dbg(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  br label %116

116:                                              ; preds = %111, %106
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* @XUNDFLEN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %123 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_err(i32 %124, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %121, %116
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @XOVFLEN, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %133 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_err(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @XEMPTYEOFEN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %143 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @dev_dbg(i32 %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %148 = load i32, i32* @IRQST, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @MCBSP_WRITE(%struct.omap_mcbsp* %147, i32 %148, i32 %149)
  %151 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %151
}

declare dso_local i32 @MCBSP_READ(%struct.omap_mcbsp*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @MCBSP_WRITE(%struct.omap_mcbsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
