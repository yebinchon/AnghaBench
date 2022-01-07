; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_get_iobox_version.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_hdsp_get_iobox_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i32 }

@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_DllError = common dso_local global i32 0, align 4
@HDSP_control2Reg = common dso_local global i32 0, align 4
@HDSP_S_LOAD = common dso_local global i32 0, align 4
@HDSP_fifoData = common dso_local global i32 0, align 4
@HDSP_SHORT_WAIT = common dso_local global i32 0, align 4
@HDSP_S300 = common dso_local global i32 0, align 4
@HDSP_S200 = common dso_local global i32 0, align 4
@HDSP_PROGRAM = common dso_local global i32 0, align 4
@Digiface = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"Digiface found\0A\00", align 1
@RPM = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"RPM found\0A\00", align 1
@HDSP_status2Register = common dso_local global i32 0, align 4
@HDSP_version2 = common dso_local global i32 0, align 4
@HDSP_version1 = common dso_local global i32 0, align 4
@Multiface = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"Multiface found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdsp*)* @hdsp_get_iobox_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdsp_get_iobox_version(%struct.hdsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdsp*, align 8
  store %struct.hdsp* %0, %struct.hdsp** %3, align 8
  %4 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %5 = load i32, i32* @HDSP_statusRegister, align 4
  %6 = call i32 @hdsp_read(%struct.hdsp* %4, i32 %5)
  %7 = load i32, i32* @HDSP_DllError, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %112

10:                                               ; preds = %1
  %11 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %12 = load i32, i32* @HDSP_control2Reg, align 4
  %13 = load i32, i32* @HDSP_S_LOAD, align 4
  %14 = call i32 @hdsp_write(%struct.hdsp* %11, i32 %12, i32 %13)
  %15 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %16 = load i32, i32* @HDSP_fifoData, align 4
  %17 = call i32 @hdsp_write(%struct.hdsp* %15, i32 %16, i32 0)
  %18 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %19 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %20 = call i64 @hdsp_fifo_wait(%struct.hdsp* %18, i32 0, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %10
  %23 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %24 = load i32, i32* @HDSP_control2Reg, align 4
  %25 = load i32, i32* @HDSP_S300, align 4
  %26 = call i32 @hdsp_write(%struct.hdsp* %23, i32 %24, i32 %25)
  %27 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %28 = load i32, i32* @HDSP_control2Reg, align 4
  %29 = load i32, i32* @HDSP_S_LOAD, align 4
  %30 = call i32 @hdsp_write(%struct.hdsp* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %10
  %32 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %33 = load i32, i32* @HDSP_control2Reg, align 4
  %34 = load i32, i32* @HDSP_S200, align 4
  %35 = load i32, i32* @HDSP_PROGRAM, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @hdsp_write(%struct.hdsp* %32, i32 %33, i32 %36)
  %38 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %39 = load i32, i32* @HDSP_fifoData, align 4
  %40 = call i32 @hdsp_write(%struct.hdsp* %38, i32 %39, i32 0)
  %41 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %42 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %43 = call i64 @hdsp_fifo_wait(%struct.hdsp* %41, i32 0, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %141

46:                                               ; preds = %31
  %47 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %48 = load i32, i32* @HDSP_control2Reg, align 4
  %49 = load i32, i32* @HDSP_S_LOAD, align 4
  %50 = call i32 @hdsp_write(%struct.hdsp* %47, i32 %48, i32 %49)
  %51 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %52 = load i32, i32* @HDSP_fifoData, align 4
  %53 = call i32 @hdsp_write(%struct.hdsp* %51, i32 %52, i32 0)
  %54 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %55 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %56 = call i64 @hdsp_fifo_wait(%struct.hdsp* %54, i32 0, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %46
  %59 = load i8*, i8** @Digiface, align 8
  %60 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %61 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %63 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

68:                                               ; preds = %46
  %69 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %70 = load i32, i32* @HDSP_control2Reg, align 4
  %71 = load i32, i32* @HDSP_S300, align 4
  %72 = call i32 @hdsp_write(%struct.hdsp* %69, i32 %70, i32 %71)
  %73 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %74 = load i32, i32* @HDSP_control2Reg, align 4
  %75 = load i32, i32* @HDSP_S_LOAD, align 4
  %76 = call i32 @hdsp_write(%struct.hdsp* %73, i32 %74, i32 %75)
  %77 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %78 = load i32, i32* @HDSP_fifoData, align 4
  %79 = call i32 @hdsp_write(%struct.hdsp* %77, i32 %78, i32 0)
  %80 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %81 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %82 = call i64 @hdsp_fifo_wait(%struct.hdsp* %80, i32 0, i32 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %141

85:                                               ; preds = %68
  %86 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %87 = load i32, i32* @HDSP_control2Reg, align 4
  %88 = load i32, i32* @HDSP_S300, align 4
  %89 = call i32 @hdsp_write(%struct.hdsp* %86, i32 %87, i32 %88)
  %90 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %91 = load i32, i32* @HDSP_control2Reg, align 4
  %92 = load i32, i32* @HDSP_S_LOAD, align 4
  %93 = call i32 @hdsp_write(%struct.hdsp* %90, i32 %91, i32 %92)
  %94 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %95 = load i32, i32* @HDSP_fifoData, align 4
  %96 = call i32 @hdsp_write(%struct.hdsp* %94, i32 %95, i32 0)
  %97 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %98 = load i32, i32* @HDSP_SHORT_WAIT, align 4
  %99 = call i64 @hdsp_fifo_wait(%struct.hdsp* %97, i32 0, i32 %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %141

102:                                              ; preds = %85
  %103 = load i8*, i8** @RPM, align 8
  %104 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %105 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %107 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_info(i32 %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

112:                                              ; preds = %1
  %113 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %114 = load i32, i32* @HDSP_status2Register, align 4
  %115 = call i32 @hdsp_read(%struct.hdsp* %113, i32 %114)
  %116 = load i32, i32* @HDSP_version2, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %112
  %120 = load i8*, i8** @RPM, align 8
  %121 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %122 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %139

123:                                              ; preds = %112
  %124 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %125 = load i32, i32* @HDSP_status2Register, align 4
  %126 = call i32 @hdsp_read(%struct.hdsp* %124, i32 %125)
  %127 = load i32, i32* @HDSP_version1, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %123
  %131 = load i8*, i8** @Multiface, align 8
  %132 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %133 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %132, i32 0, i32 1
  store i8* %131, i8** %133, align 8
  br label %138

134:                                              ; preds = %123
  %135 = load i8*, i8** @Digiface, align 8
  %136 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %137 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %136, i32 0, i32 1
  store i8* %135, i8** %137, align 8
  br label %138

138:                                              ; preds = %134, %130
  br label %139

139:                                              ; preds = %138, %119
  br label %140

140:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %151

141:                                              ; preds = %101, %84, %45
  %142 = load i8*, i8** @Multiface, align 8
  %143 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %144 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  %145 = load %struct.hdsp*, %struct.hdsp** %3, align 8
  %146 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %145, i32 0, i32 0
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @dev_info(i32 %149, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %151

151:                                              ; preds = %141, %140, %102, %58
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

declare dso_local i32 @hdsp_write(%struct.hdsp*, i32, i32) #1

declare dso_local i64 @hdsp_fifo_wait(%struct.hdsp*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
