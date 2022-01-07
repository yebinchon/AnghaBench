; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_set_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32* }

@snd_motu_clock_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V2_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V2_CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@V2_CLOCK_RATE_SHIFT = common dso_local global i32 0, align 4
@snd_motu_spec_traveler = common dso_local global i32 0, align 4
@V2_CLOCK_TRAVELER_FETCH_ENABLE = common dso_local global i32 0, align 4
@V2_CLOCK_TRAVELER_FETCH_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32)* @v2_set_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_set_clock_rate(%struct.snd_motu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32*, i32** @snd_motu_clock_rates, align 8
  %13 = call i32 @ARRAY_SIZE(i32* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i32*, i32** @snd_motu_clock_rates, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %8, align 4
  br label %10

28:                                               ; preds = %23, %10
  %29 = load i32, i32* %8, align 4
  %30 = load i32*, i32** @snd_motu_clock_rates, align 8
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %28
  %37 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %38 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %39 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %37, i32 %38, i32* %6, i32 4)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %74

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @be32_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @V2_CLOCK_RATE_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @V2_CLOCK_RATE_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %57 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, @snd_motu_spec_traveler
  br i1 %59, label %60, label %68

60:                                               ; preds = %44
  %61 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_ENABLE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_DISABLE, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %60, %44
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @cpu_to_be32(i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %72 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %73 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %71, i32 %72, i32* %6, i32 4)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %68, %42, %33
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
