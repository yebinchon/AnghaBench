; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_get_meter_comp_index.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_snd_get_meter_comp_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_us16x08_meter_store = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

@SND_US16X08_ID_COMP_SWITCH = common dso_local global i32 0, align 4
@SND_US16X08_MAX_CHANNELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_us16x08_meter_store*)* @snd_get_meter_comp_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_get_meter_comp_index(%struct.snd_us16x08_meter_store* %0) #0 {
  %2 = alloca %struct.snd_us16x08_meter_store*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_us16x08_meter_store* %0, %struct.snd_us16x08_meter_store** %2, align 8
  %4 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %5 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %10 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  %15 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %16 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %19 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %17, %20
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %14
  %24 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %25 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %28 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %31 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = and i32 %32, 31
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %8
  %36 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %37 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %29
  br label %88

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %68, %40
  %42 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %43 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* @SND_US16X08_ID_COMP_SWITCH, align 4
  %48 = call i64 @COMP_STORE_IDX(i32 %47)
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %52 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %41
  %60 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %61 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* @SND_US16X08_MAX_CHANNELS, align 8
  %65 = icmp ule i64 %63, %64
  br label %66

66:                                               ; preds = %59, %41
  %67 = phi i1 [ false, %41 ], [ %65, %59 ]
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %70 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %41

73:                                               ; preds = %66
  %74 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %75 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  store i32 %76, i32* %3, align 4
  %78 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %79 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* @SND_US16X08_MAX_CHANNELS, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %73
  %85 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %2, align 8
  %86 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %73
  br label %88

88:                                               ; preds = %87, %39
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @COMP_STORE_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
