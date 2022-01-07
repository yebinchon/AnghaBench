; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_codec_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_atiixp.c_snd_atiixp_codec_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ac97_codec = common dso_local global i32 0, align 4
@CODEC_CHECK_BITS = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@ALL_CODEC_NOT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no codec detected!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp*)* @snd_atiixp_codec_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_atiixp_codec_detect(%struct.atiixp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp*, align 8
  %4 = alloca i32, align 4
  store %struct.atiixp* %0, %struct.atiixp** %3, align 8
  %5 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %6 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %5, i32 0, i32 0
  store i32 0, i32* %6, align 8
  %7 = load i32, i32* @ac97_codec, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %11 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ac97_probing_bugs(i32 %12)
  store i32 %13, i32* @ac97_codec, align 4
  br label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ac97_codec, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %19 = load i32, i32* @ac97_codec, align 4
  %20 = add nsw i32 %19, 10
  %21 = shl i32 1, %20
  %22 = xor i32 %18, %21
  %23 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %24 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  store i32 0, i32* %2, align 4
  br label %65

27:                                               ; preds = %14
  %28 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %29 = load i32, i32* @IER, align 4
  %30 = load i32, i32* @CODEC_CHECK_BITS, align 4
  %31 = call i32 @atiixp_write(%struct.atiixp* %28, i32 %29, i32 %30)
  store i32 50, i32* %4, align 4
  br label %32

32:                                               ; preds = %43, %27
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp sgt i32 %33, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = call i32 @mdelay(i32 1)
  %38 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %39 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %44

43:                                               ; preds = %36
  br label %32

44:                                               ; preds = %42, %32
  %45 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %46 = load i32, i32* @IER, align 4
  %47 = call i32 @atiixp_write(%struct.atiixp* %45, i32 %46, i32 0)
  %48 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %49 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ALL_CODEC_NOT_READY, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @ALL_CODEC_NOT_READY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %44
  %56 = load %struct.atiixp*, %struct.atiixp** %3, align 8
  %57 = getelementptr inbounds %struct.atiixp, %struct.atiixp* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %65

64:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %55, %17
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ac97_probing_bugs(i32) #1

declare dso_local i32 @atiixp_write(%struct.atiixp*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
