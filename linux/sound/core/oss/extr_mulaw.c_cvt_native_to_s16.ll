; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_cvt_native_to_s16.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_cvt_native_to_s16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mulaw_priv = type { i32, i32, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.mulaw_priv*, i8*)* @cvt_native_to_s16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @cvt_native_to_s16(%struct.mulaw_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.mulaw_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mulaw_priv* %0, %struct.mulaw_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  %6 = bitcast i64* %5 to i8*
  %7 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, i8* %6, i64 %10
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %14 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %12, i64 %16
  %18 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @memcpy(i8* %11, i8* %17, i32 %20)
  %22 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @swab16(i64 %27)
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = xor i64 %33, %32
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i16
  ret i16 %36
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @swab16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
