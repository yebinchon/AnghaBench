; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_bt87x.c_snd_bt87x_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bt87x = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_INT_STAT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@ERROR_INTERRUPTS = common dso_local global i32 0, align 4
@INT_FBUS = common dso_local global i32 0, align 4
@INT_FTRGT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"FIFO overrun, status %#08x\0A\00", align 1
@INT_OCERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"internal RISC error, status %#08x\0A\00", align 1
@INT_PPERR = common dso_local global i32 0, align 4
@INT_RIPERR = common dso_local global i32 0, align 4
@INT_PABORT = common dso_local global i32 0, align 4
@INT_RISCI = common dso_local global i32 0, align 4
@CTL_ACAP_EN = common dso_local global i32 0, align 4
@INT_RISCS_SHIFT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @snd_bt87x_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bt87x_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_bt87x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.snd_bt87x*
  store %struct.snd_bt87x* %12, %struct.snd_bt87x** %6, align 8
  %13 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %14 = load i32, i32* @REG_INT_STAT, align 4
  %15 = call i32 @snd_bt87x_readl(%struct.snd_bt87x* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %18 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %130

25:                                               ; preds = %2
  %26 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %27 = load i32, i32* @REG_INT_STAT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @snd_bt87x_writel(%struct.snd_bt87x* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ERROR_INTERRUPTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %76

34:                                               ; preds = %25
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @INT_FBUS, align 4
  %37 = load i32, i32* @INT_FTRGT, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %43 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %42, i32 0, i32 5
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %41, %34
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @INT_OCERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %56 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %55, i32 0, i32 5
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %54, %49
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @INT_PPERR, align 4
  %65 = load i32, i32* @INT_RIPERR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @INT_PABORT, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @snd_bt87x_pci_error(%struct.snd_bt87x* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %62
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @INT_RISCI, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %128

81:                                               ; preds = %76
  %82 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %83 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CTL_ACAP_EN, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %81
  %89 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %90 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  %93 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %94 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = srem i32 %92, %95
  %97 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %98 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %100 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 16
  %103 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %104 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = sdiv i32 %102, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @INT_RISCS_SHIFT, align 4
  %109 = lshr i32 %107, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %88
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %116 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = mul nsw i32 %114, %117
  %119 = add nsw i32 %118, 15
  %120 = sdiv i32 %119, 16
  %121 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %122 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %113, %88
  %124 = load %struct.snd_bt87x*, %struct.snd_bt87x** %6, align 8
  %125 = getelementptr inbounds %struct.snd_bt87x, %struct.snd_bt87x* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @snd_pcm_period_elapsed(i32 %126)
  br label %128

128:                                              ; preds = %123, %81, %76
  %129 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %128, %23
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @snd_bt87x_readl(%struct.snd_bt87x*, i32) #1

declare dso_local i32 @snd_bt87x_writel(%struct.snd_bt87x*, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_bt87x_pci_error(%struct.snd_bt87x*, i32) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
