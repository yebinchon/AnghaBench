; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_ali_codec_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ALI_CAS = common dso_local global i32 0, align 4
@ALI_CAS_SEM_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ali_codec_semaphore timeout\0A\00", align 1
@ALI_CSPSR_CODEC_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*)* @snd_intel8x0_ali_codec_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_intel8x0_ali_codec_semaphore(%struct.intel8x0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  store i32 100, i32* %4, align 4
  %5 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %6 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %17 = load i32, i32* @ALI_CAS, align 4
  %18 = call i32 @ICHREG(i32 %17)
  %19 = call i32 @igetdword(%struct.intel8x0* %16, i32 %18)
  %20 = load i32, i32* @ALI_CAS_SEM_BUSY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = call i32 @udelay(i32 1)
  br label %11

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %32 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %37 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_warn(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %35, %30, %27
  %43 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %44 = load i32, i32* @ALI_CSPSR_CODEC_READY, align 4
  %45 = call i32 @snd_intel8x0_ali_codec_ready(%struct.intel8x0* %43, i32 %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @snd_intel8x0_ali_codec_ready(%struct.intel8x0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
