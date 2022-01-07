; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_init_chans.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sprd/extr_sprd-mcdt.c_sprd_mcdt_init_chans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_mcdt_dev = type { %struct.sprd_mcdt_chan* }
%struct.sprd_mcdt_chan = type { i32, i32, %struct.sprd_mcdt_dev*, i64, i32 }
%struct.resource = type { i64 }

@MCDT_CHANNEL_NUM = common dso_local global i32 0, align 4
@MCDT_ADC_CHANNEL_NUM = common dso_local global i32 0, align 4
@SPRD_MCDT_ADC_CHAN = common dso_local global i32 0, align 4
@MCDT_CH0_RXD = common dso_local global i64 0, align 8
@SPRD_MCDT_DAC_CHAN = common dso_local global i32 0, align 4
@MCDT_CH0_TXD = common dso_local global i64 0, align 8
@sprd_mcdt_list_mutex = common dso_local global i32 0, align 4
@sprd_mcdt_chan_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sprd_mcdt_dev*, %struct.resource*)* @sprd_mcdt_init_chans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sprd_mcdt_init_chans(%struct.sprd_mcdt_dev* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.sprd_mcdt_dev*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sprd_mcdt_chan*, align 8
  store %struct.sprd_mcdt_dev* %0, %struct.sprd_mcdt_dev** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %73, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MCDT_CHANNEL_NUM, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %76

11:                                               ; preds = %7
  %12 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %13 = getelementptr inbounds %struct.sprd_mcdt_dev, %struct.sprd_mcdt_dev* %12, i32 0, i32 0
  %14 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %14, i64 %16
  store %struct.sprd_mcdt_chan* %17, %struct.sprd_mcdt_chan** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MCDT_ADC_CHANNEL_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %24 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @SPRD_MCDT_ADC_CHAN, align 4
  %26 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %27 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.resource*, %struct.resource** %4, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MCDT_CH0_RXD, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %38 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %61

39:                                               ; preds = %11
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @MCDT_ADC_CHANNEL_NUM, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %44 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @SPRD_MCDT_DAC_CHAN, align 4
  %46 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %47 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.resource*, %struct.resource** %4, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MCDT_CH0_TXD, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MCDT_ADC_CHANNEL_NUM, align 4
  %55 = sub nsw i32 %53, %54
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %60 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %39, %21
  %62 = load %struct.sprd_mcdt_dev*, %struct.sprd_mcdt_dev** %3, align 8
  %63 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %64 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %63, i32 0, i32 2
  store %struct.sprd_mcdt_dev* %62, %struct.sprd_mcdt_dev** %64, align 8
  %65 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %66 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %65, i32 0, i32 1
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = call i32 @mutex_lock(i32* @sprd_mcdt_list_mutex)
  %69 = load %struct.sprd_mcdt_chan*, %struct.sprd_mcdt_chan** %6, align 8
  %70 = getelementptr inbounds %struct.sprd_mcdt_chan, %struct.sprd_mcdt_chan* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %70, i32* @sprd_mcdt_chan_list)
  %72 = call i32 @mutex_unlock(i32* @sprd_mcdt_list_mutex)
  br label %73

73:                                               ; preds = %61
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %7

76:                                               ; preds = %7
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
