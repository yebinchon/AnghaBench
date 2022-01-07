; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236.c_snd_cs423x_isa_match.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/cs423x/extr_cs4236.c_snd_cs423x_isa_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@enable = common dso_local global i32* null, align 8
@port = common dso_local global i64* null, align 8
@SNDRV_AUTO_PORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"please specify port\0A\00", align 1
@cport = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"please specify cport\0A\00", align 1
@irq = common dso_local global i64* null, align 8
@SNDRV_AUTO_IRQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"please specify irq\0A\00", align 1
@dma1 = common dso_local global i64* null, align 8
@SNDRV_AUTO_DMA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"please specify dma1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @snd_cs423x_isa_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cs423x_isa_match(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32*, i32** @enable, align 8
  %7 = load i32, i32* %5, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @is_isapnp_selected(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %62

17:                                               ; preds = %12
  %18 = load i64*, i64** @port, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

28:                                               ; preds = %17
  %29 = load i64*, i64** @cport, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SNDRV_AUTO_PORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

39:                                               ; preds = %28
  %40 = load i64*, i64** @irq, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SNDRV_AUTO_IRQ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load i64*, i64** @dma1, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SNDRV_AUTO_DMA, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %47, %36, %25, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @is_isapnp_selected(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
