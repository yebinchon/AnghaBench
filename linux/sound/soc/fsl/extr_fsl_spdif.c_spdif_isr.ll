; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_isr.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/fsl/extr_fsl_spdif.c_spdif_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_spdif_priv = type { %struct.platform_device* }
%struct.platform_device = type { i32 }

@INT_DPLL_LOCKED = common dso_local global i32 0, align 4
@INT_TXFIFO_UNOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"isr: Tx FIFO under/overrun\0A\00", align 1
@INT_TXFIFO_RESYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"isr: Tx FIFO resync\0A\00", align 1
@INT_CNEW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"isr: cstatus new\0A\00", align 1
@INT_VAL_NOGOOD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"isr: validity flag no good\0A\00", align 1
@INT_SYM_ERR = common dso_local global i32 0, align 4
@INT_BIT_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"isr: receiver found parity bit error\0A\00", align 1
@INT_URX_FUL = common dso_local global i32 0, align 4
@INT_URX_OV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"isr: U Channel receive register overrun\0A\00", align 1
@INT_QRX_FUL = common dso_local global i32 0, align 4
@INT_QRX_OV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"isr: Q Channel receive register overrun\0A\00", align 1
@INT_UQ_SYNC = common dso_local global i32 0, align 4
@INT_UQ_ERR = common dso_local global i32 0, align 4
@INT_RXFIFO_UNOV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"isr: Rx FIFO under/overrun\0A\00", align 1
@INT_RXFIFO_RESYNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"isr: Rx FIFO resync\0A\00", align 1
@INT_LOSS_LOCK = common dso_local global i32 0, align 4
@INT_TX_EM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"isr: Tx FIFO empty\0A\00", align 1
@INT_RXFIFO_FUL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"isr: Rx FIFO full\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spdif_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spdif_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fsl_spdif_priv*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.fsl_spdif_priv*
  store %struct.fsl_spdif_priv* %9, %struct.fsl_spdif_priv** %5, align 8
  %10 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %11 = getelementptr inbounds %struct.fsl_spdif_priv, %struct.fsl_spdif_priv* %10, i32 0, i32 0
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  store %struct.platform_device* %12, %struct.platform_device** %6, align 8
  %13 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %14 = call i32 @spdif_intr_status_clear(%struct.fsl_spdif_priv* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @INT_DPLL_LOCKED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %21 = call i32 @spdif_irq_dpll_lock(%struct.fsl_spdif_priv* %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INT_TXFIFO_UNOV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 @dev_dbg(i32* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @INT_TXFIFO_RESYNC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @INT_CNEW, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @INT_VAL_NOGOOD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @INT_SYM_ERR, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %65 = call i32 @spdif_irq_sym_error(%struct.fsl_spdif_priv* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @INT_BIT_ERR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = call i32 @dev_dbg(i32* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @INT_URX_FUL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %82 = call i32 @spdif_irq_uqrx_full(%struct.fsl_spdif_priv* %81, i8 signext 85)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @INT_URX_OV, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_dbg(i32* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @INT_QRX_FUL, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %99 = call i32 @spdif_irq_uqrx_full(%struct.fsl_spdif_priv* %98, i8 signext 81)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @INT_QRX_OV, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_dbg(i32* %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @INT_UQ_SYNC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %116 = call i32 @spdif_irq_uq_sync(%struct.fsl_spdif_priv* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @INT_UQ_ERR, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %124 = call i32 @spdif_irq_uq_err(%struct.fsl_spdif_priv* %123)
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @INT_RXFIFO_UNOV, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @dev_dbg(i32* %132, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %125
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* @INT_RXFIFO_RESYNC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_dbg(i32* %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %143

143:                                              ; preds = %139, %134
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @INT_LOSS_LOCK, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load %struct.fsl_spdif_priv*, %struct.fsl_spdif_priv** %5, align 8
  %150 = call i32 @spdif_irq_dpll_lock(%struct.fsl_spdif_priv* %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @INT_TX_EM, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %158 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %157, i32 0, i32 0
  %159 = call i32 @dev_dbg(i32* %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @INT_RXFIFO_FUL, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @dev_dbg(i32* %167, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %169

169:                                              ; preds = %165, %160
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %170
}

declare dso_local i32 @spdif_intr_status_clear(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @spdif_irq_dpll_lock(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spdif_irq_sym_error(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @spdif_irq_uqrx_full(%struct.fsl_spdif_priv*, i8 signext) #1

declare dso_local i32 @spdif_irq_uq_sync(%struct.fsl_spdif_priv*) #1

declare dso_local i32 @spdif_irq_uq_err(%struct.fsl_spdif_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
