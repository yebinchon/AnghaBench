; ModuleID = '/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_cleanup_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/usb/line6/extr_pcm.c_cleanup_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line6_pcm_stream = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.line6_pcm_stream*, i32)* @cleanup_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_urbs(%struct.line6_pcm_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.line6_pcm_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.line6_pcm_stream* %0, %struct.line6_pcm_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %7 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %53

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %18 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %16
  %26 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %27 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @usb_kill_urb(i64 %32)
  %34 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %35 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @usb_free_urb(i64 %40)
  br label %42

42:                                               ; preds = %25, %16
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %12

46:                                               ; preds = %12
  %47 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %48 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = call i32 @kfree(i64* %49)
  %51 = load %struct.line6_pcm_stream*, %struct.line6_pcm_stream** %3, align 8
  %52 = getelementptr inbounds %struct.line6_pcm_stream, %struct.line6_pcm_stream* %51, i32 0, i32 0
  store i64* null, i64** %52, align 8
  br label %53

53:                                               ; preds = %46, %10
  ret void
}

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @usb_free_urb(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
