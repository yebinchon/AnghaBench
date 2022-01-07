; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_message_send_atomic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/lx6464es/extr_lx_core.c_lx_message_send_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lx_rmh = type { i64, i32, i32, i32, i32 }

@eReg_CSM = common dso_local global i32 0, align 4
@Reg_CSM_MC = common dso_local global i32 0, align 4
@Reg_CSM_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PIOSendMessage eReg_CSM %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@eReg_CRM1 = common dso_local global i32 0, align 4
@XILINX_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"TIMEOUT lx_message_send_atomic! polling failed\0A\00", align 1
@ERROR_VALUE = common dso_local global i32 0, align 4
@REG_CRM_NUMBER = common dso_local global i32 0, align 4
@eReg_CRM2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"rmh error: %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"lx_message_send: dsp timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"lx_message_send: dsp crashed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lx6464es*, %struct.lx_rmh*)* @lx_message_send_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lx_message_send_atomic(%struct.lx6464es* %0, %struct.lx_rmh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lx6464es*, align 8
  %5 = alloca %struct.lx_rmh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lx6464es* %0, %struct.lx6464es** %4, align 8
  store %struct.lx_rmh* %1, %struct.lx_rmh** %5, align 8
  store i32 128, i32* %6, align 4
  %8 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %9 = load i32, i32* @eReg_CSM, align 4
  %10 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %8, i32 %9)
  %11 = load i32, i32* @Reg_CSM_MC, align 4
  %12 = load i32, i32* @Reg_CSM_MR, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %18 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %140

26:                                               ; preds = %2
  %27 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %28 = load i32, i32* @eReg_CRM1, align 4
  %29 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %30 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %33 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lx_dsp_reg_writebuf(%struct.lx6464es* %27, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %37 = load i32, i32* @eReg_CSM, align 4
  %38 = load i32, i32* @Reg_CSM_MC, align 4
  %39 = call i32 @lx_dsp_reg_write(%struct.lx6464es* %36, i32 %37, i32 %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %66, %26
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @XILINX_TIMEOUT_MS, align 4
  %43 = mul nsw i32 %42, 1000
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %40
  %46 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %47 = load i32, i32* @eReg_CSM, align 4
  %48 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %46, i32 %47)
  %49 = load i32, i32* @Reg_CSM_MR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %54 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %59 = load i32, i32* @eReg_CRM1, align 4
  %60 = call i32 @lx_dsp_reg_read(%struct.lx6464es* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %62

61:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %76

63:                                               ; preds = %45
  %64 = call i32 @udelay(i32 1)
  br label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %40

69:                                               ; preds = %40
  %70 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %71 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %69, %62
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ERROR_VALUE, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %105

81:                                               ; preds = %76
  %82 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %83 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %81
  %87 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %88 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @REG_CRM_NUMBER, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp sge i32 %89, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @snd_BUG_ON(i32 %93)
  %95 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %96 = load i32, i32* @eReg_CRM2, align 4
  %97 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %98 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %101 = getelementptr inbounds %struct.lx_rmh, %struct.lx_rmh* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @lx_dsp_reg_readbuf(%struct.lx6464es* %95, i32 %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %86, %81
  br label %113

105:                                              ; preds = %76
  %106 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %107 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %105, %104
  %114 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %115 = load i32, i32* @eReg_CSM, align 4
  %116 = call i32 @lx_dsp_reg_write(%struct.lx6464es* %114, i32 %115, i32 0)
  %117 = load i32, i32* %6, align 4
  switch i32 %117, label %136 [
    i32 128, label %118
    i32 129, label %127
  ]

118:                                              ; preds = %113
  %119 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %120 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_warn(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @ETIMEDOUT, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %140

127:                                              ; preds = %113
  %128 = load %struct.lx6464es*, %struct.lx6464es** %4, align 8
  %129 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_warn(i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @EAGAIN, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %140

136:                                              ; preds = %113
  %137 = load %struct.lx_rmh*, %struct.lx_rmh** %5, align 8
  %138 = call i32 @lx_message_dump(%struct.lx_rmh* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %127, %118, %16
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @lx_dsp_reg_read(%struct.lx6464es*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @lx_dsp_reg_writebuf(%struct.lx6464es*, i32, i32, i32) #1

declare dso_local i32 @lx_dsp_reg_write(%struct.lx6464es*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_BUG_ON(i32) #1

declare dso_local i32 @lx_dsp_reg_readbuf(%struct.lx6464es*, i32, i32, i32) #1

declare dso_local i32 @lx_message_dump(%struct.lx_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
