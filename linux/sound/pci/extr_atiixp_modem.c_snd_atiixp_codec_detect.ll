; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_codec_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp_modem.c_snd_atiixp_codec_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_modem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IER = common dso_local global i32 0, align 4
@CODEC_CHECK_BITS = common dso_local global i32 0, align 4
@ALL_CODEC_NOT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no codec detected!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_modem*)* @snd_atiixp_codec_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_codec_detect(%struct.atiixp_modem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_modem*, align 8
  %4 = alloca i32, align 4
  store %struct.atiixp_modem* %0, %struct.atiixp_modem** %3, align 8
  %5 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %6 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %8 = load i32, i32* @IER, align 4
  %9 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %10 = call i32 @atiixp_write(%struct.atiixp_modem* %7, i32 %8, i32 %9)
  store i32 50, i32* %4, align 4
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call i32 @msleep(i32 1)
  %17 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %18 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %23

22:                                               ; preds = %15
  br label %11

23:                                               ; preds = %21, %11
  %24 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %25 = load i32, i32* @IER, align 4
  %26 = call i32 @atiixp_write(%struct.atiixp_modem* %24, i32 %25, i32 0)
  %27 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %28 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ALL_CODEC_NOT_READY, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @ALL_CODEC_NOT_READY, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load %struct.atiixp_modem*, %struct.atiixp_modem** %3, align 8
  %36 = getelementptr inbounds %struct.atiixp_modem, %struct.atiixp_modem* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %34
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @atiixp_write(%struct.atiixp_modem*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
