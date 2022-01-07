; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_query_pcm_param.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_query_pcm_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i64 }

@AC_WCAP_FORMAT_OVRD = common dso_local global i32 0, align 4
@AC_PAR_PCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i64)* @query_pcm_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_pcm_param(%struct.hdac_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @get_wcaps(%struct.hdac_device* %13, i64 %14)
  %16 = load i32, i32* @AC_WCAP_FORMAT_OVRD, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i32, i32* @AC_PAR_PCM, align 4
  %23 = call i32 @snd_hdac_read_parm(%struct.hdac_device* %20, i64 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %12, %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %24
  %31 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %32 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %33 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @AC_PAR_PCM, align 4
  %36 = call i32 @snd_hdac_read_parm(%struct.hdac_device* %31, i64 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30, %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %37
  store i32 0, i32* %3, align 4
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @get_wcaps(%struct.hdac_device*, i64) #1

declare dso_local i32 @snd_hdac_read_parm(%struct.hdac_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
