; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_get_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_get_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32 }

@V2_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V2_CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@V2_CLOCK_RATE_SHIFT = common dso_local global i32 0, align 4
@snd_motu_clock_rates = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32*)* @v2_get_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_get_clock_rate(%struct.snd_motu* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %10 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %11 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %9, i32 %10, i32* %6, i32 4)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = load i32, i32* @V2_CLOCK_RATE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @V2_CLOCK_RATE_SHIFT, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** @snd_motu_clock_rates, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp uge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %37

30:                                               ; preds = %16
  %31 = load i32*, i32** @snd_motu_clock_rates, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %27, %14
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
