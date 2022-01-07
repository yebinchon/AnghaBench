; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_read_rmh_status.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_read_rmh_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32, i64, i64, i32* }

@PCXHR_SIZE_MAX_STATUS = common dso_local global i32 0, align 4
@PCXHR_DSP_ISR = common dso_local global i32 0, align 4
@PCXHR_ISR_HI08_RXDF = common dso_local global i32 0, align 4
@PCXHR_TIMEOUT_DSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERROR RMH stat: ISR:RXDF=1 (ISR = %x; i=%d )\0A\00", align 1
@PCXHR_DSP_TXH = common dso_local global i32 0, align 4
@PCXHR_DSP_TXM = common dso_local global i32 0, align 4
@PCXHR_DSP_TXL = common dso_local global i32 0, align 4
@RMH_SSIZE_FIXED = common dso_local global i64 0, align 8
@RMH_SSIZE_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"PCXHR : rmh->stat_len=%x too big\0A\00", align 1
@CMD_LAST_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, %struct.pcxhr_rmh*)* @pcxhr_read_rmh_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_read_rmh_status(%struct.pcxhr_mgr* %0, %struct.pcxhr_rmh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca %struct.pcxhr_rmh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store %struct.pcxhr_rmh* %1, %struct.pcxhr_rmh** %5, align 8
  %12 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %13 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PCXHR_SIZE_MAX_STATUS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @PCXHR_SIZE_MAX_STATUS, align 4
  store i32 %18, i32* %11, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %21 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %19, %17
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %121, %23
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %27 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %124

30:                                               ; preds = %24
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %32 = load i32, i32* @PCXHR_DSP_ISR, align 4
  %33 = load i32, i32* @PCXHR_ISR_HI08_RXDF, align 4
  %34 = load i32, i32* @PCXHR_ISR_HI08_RXDF, align 4
  %35 = load i32, i32* @PCXHR_TIMEOUT_DSP, align 4
  %36 = call i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr* %31, i32 %32, i32 %33, i32 %34, i32 %35, i8* %10)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %41 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8, i8* %10, align 1
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 zeroext %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %143

48:                                               ; preds = %30
  %49 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %50 = load i32, i32* @PCXHR_DSP_TXH, align 4
  %51 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %49, i32 %50)
  %52 = shl i32 %51, 16
  store i32 %52, i32* %8, align 4
  %53 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %54 = load i32, i32* @PCXHR_DSP_TXM, align 4
  %55 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %53, i32 %54)
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %60 = load i32, i32* @PCXHR_DSP_TXL, align 4
  %61 = call i32 @PCXHR_INPB(%struct.pcxhr_mgr* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %108, label %66

66:                                               ; preds = %48
  %67 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %68 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RMH_SSIZE_FIXED, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %74 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @RMH_SSIZE_ARG, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 255
  %81 = add nsw i32 %80, 1
  %82 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %83 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %8, align 4
  %85 = and i32 %84, 16776960
  store i32 %85, i32* %8, align 4
  br label %106

86:                                               ; preds = %72
  %87 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %88 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %102, %86
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %90
  %94 = load i32, i32* %9, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %99 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %90

105:                                              ; preds = %90
  br label %106

106:                                              ; preds = %105, %78
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %48
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %115 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  br label %120

120:                                              ; preds = %112, %108
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %24

124:                                              ; preds = %24
  %125 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %126 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %132 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %136 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %134, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %5, align 8
  %141 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %130, %124
  store i32 0, i32* %3, align 4
  br label %143

143:                                              ; preds = %142, %39
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @pcxhr_check_reg_bit(%struct.pcxhr_mgr*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8 zeroext, i32) #1

declare dso_local i32 @PCXHR_INPB(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
