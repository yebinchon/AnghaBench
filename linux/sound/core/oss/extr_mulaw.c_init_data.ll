; ModuleID = '/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/oss/extr_mulaw.c_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mulaw_priv = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mulaw_priv*, i32)* @init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_data(%struct.mulaw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mulaw_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mulaw_priv* %0, %struct.mulaw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @snd_pcm_format_little_endian(i32 %5)
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @snd_pcm_format_signed(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %15, i32 0, i32 1
  store i32 32768, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @snd_pcm_format_physical_width(i32 %18)
  %20 = sdiv i32 %19, 8
  %21 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 2
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 2
  %29 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i64 @snd_pcm_format_little_endian(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %17
  %35 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %37, %40
  %42 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 2, %46
  %48 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %49 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %60

50:                                               ; preds = %17
  %51 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @snd_pcm_format_width(i32 %54)
  %56 = sdiv i32 %55, 8
  %57 = sub nsw i32 %53, %56
  %58 = load %struct.mulaw_priv*, %struct.mulaw_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mulaw_priv, %struct.mulaw_priv* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %50, %34
  ret void
}

declare dso_local i64 @snd_pcm_format_little_endian(i32) #1

declare dso_local i32 @snd_pcm_format_signed(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
