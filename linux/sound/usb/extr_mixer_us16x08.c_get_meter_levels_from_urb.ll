; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_get_meter_levels_from_urb.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/extr_mixer_us16x08.c_get_meter_levels_from_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_us16x08_meter_store = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.snd_us16x08_meter_store*, i32*)* @get_meter_levels_from_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_meter_levels_from_urb(i32 %0, %struct.snd_us16x08_meter_store* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_us16x08_meter_store*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.snd_us16x08_meter_store* %1, %struct.snd_us16x08_meter_store** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @MUC2(i32* %8, i32 %9)
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MUC3(i32* %11, i32 %12)
  %14 = shl i32 %13, 8
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @MUA0(i32* %16, i32 %17)
  %19 = icmp eq i32 %18, 97
  br i1 %19, label %20, label %68

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @MUA1(i32* %21, i32 %22)
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %68

25:                                               ; preds = %20
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @MUA2(i32* %26, i32 %27)
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %68

30:                                               ; preds = %25
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @MUB0(i32* %31, i32 %32)
  %34 = icmp eq i32 %33, 98
  br i1 %34, label %35, label %68

35:                                               ; preds = %30
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MUC0(i32* %36, i32 %37)
  %39 = icmp eq i32 %38, 114
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %5, align 8
  %43 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MUB2(i32* %45, i32 %46)
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %44, i64 %49
  store i32 %41, i32* %50, align 4
  br label %51

51:                                               ; preds = %40, %35
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @MUC0(i32* %52, i32 %53)
  %55 = icmp eq i32 %54, 178
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %5, align 8
  %59 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @MUB2(i32* %61, i32 %62)
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  store i32 %57, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %51
  br label %68

68:                                               ; preds = %67, %30, %25, %20, %3
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @MUA0(i32* %69, i32 %70)
  %72 = icmp eq i32 %71, 97
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @MUA1(i32* %74, i32 %75)
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %99

78:                                               ; preds = %73
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @MUA2(i32* %79, i32 %80)
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %99

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @MUB0(i32* %84, i32 %85)
  %87 = icmp eq i32 %86, 98
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.snd_us16x08_meter_store*, %struct.snd_us16x08_meter_store** %5, align 8
  %91 = getelementptr inbounds %struct.snd_us16x08_meter_store, %struct.snd_us16x08_meter_store* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @MUB2(i32* %93, i32 %94)
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  store i32 %89, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %83, %78, %73, %68
  ret void
}

declare dso_local i32 @MUC2(i32*, i32) #1

declare dso_local i32 @MUC3(i32*, i32) #1

declare dso_local i32 @MUA0(i32*, i32) #1

declare dso_local i32 @MUA1(i32*, i32) #1

declare dso_local i32 @MUA2(i32*, i32) #1

declare dso_local i32 @MUB0(i32*, i32) #1

declare dso_local i32 @MUC0(i32*, i32) #1

declare dso_local i32 @MUB2(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
