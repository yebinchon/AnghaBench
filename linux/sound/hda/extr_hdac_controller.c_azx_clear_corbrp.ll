; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_azx_clear_corbrp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_azx_clear_corbrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32 }

@CORBRP = common dso_local global i32 0, align 4
@AZX_CORBRP_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CORB reset timeout#1, CORBRP = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CORB reset timeout#2, CORBRP = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdac_bus*)* @azx_clear_corbrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_clear_corbrp(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  store i32 1000, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %9 = load i32, i32* @CORBRP, align 4
  %10 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %8, i32 %9)
  %11 = load i32, i32* @AZX_CORBRP_RST, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %20

15:                                               ; preds = %7
  %16 = call i32 @udelay(i32 1)
  br label %17

17:                                               ; preds = %15
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %14, %4
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %28 = load i32, i32* @CORBRP, align 4
  %29 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %27, i32 %28)
  %30 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %23, %20
  %32 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %33 = load i32, i32* @CORBRP, align 4
  %34 = call i32 @snd_hdac_chip_writew(%struct.hdac_bus* %32, i32 %33, i32 0)
  store i32 1000, i32* %3, align 4
  br label %35

35:                                               ; preds = %46, %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %40 = load i32, i32* @CORBRP, align 4
  %41 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %39, i32 %40)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %49

44:                                               ; preds = %38
  %45 = call i32 @udelay(i32 1)
  br label %46

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %35

49:                                               ; preds = %43, %35
  %50 = load i32, i32* %3, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %54 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %57 = load i32, i32* @CORBRP, align 4
  %58 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %56, i32 %57)
  %59 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %52, %49
  ret void
}

declare dso_local i32 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_hdac_chip_writew(%struct.hdac_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
