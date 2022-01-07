; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_add_monitor_signal.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_playback.c_add_monitor_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*, i8*, i32, i32)* @add_monitor_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_monitor_signal(%struct.urb* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %65

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load %struct.urb*, %struct.urb** %5, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %59, %21
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = icmp ult i32* %36, %37
  br i1 %38, label %39, label %64

39:                                               ; preds = %35
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call signext i16 @le16_to_cpu(i32 %41)
  store i16 %42, i16* %12, align 2
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call signext i16 @le16_to_cpu(i32 %44)
  store i16 %45, i16* %13, align 2
  %46 = load i16, i16* %12, align 2
  %47 = sext i16 %46 to i32
  %48 = load i16, i16* %13, align 2
  %49 = sext i16 %48 to i32
  %50 = load i32, i32* %7, align 4
  %51 = mul nsw i32 %49, %50
  %52 = ashr i32 %51, 8
  %53 = add nsw i32 %47, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call signext i16 @clamp(i32 %54, i32 -32768, i32 32767)
  store i16 %55, i16* %12, align 2
  %56 = load i16, i16* %12, align 2
  %57 = call i32 @cpu_to_le16(i16 signext %56)
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %39
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %10, align 8
  br label %35

64:                                               ; preds = %35
  br label %65

65:                                               ; preds = %17, %64, %18
  ret void
}

declare dso_local signext i16 @le16_to_cpu(i32) #1

declare dso_local signext i16 @clamp(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
