; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_v3_set_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v3.c_v3_set_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32 }

@snd_motu_clock_rates = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@V3_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V3_CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@V3_FETCH_PCM_FRAMES = common dso_local global i32 0, align 4
@V3_CLOCK_RATE_SHIFT = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32)* @v3_set_clock_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3_set_clock_rate(%struct.snd_motu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32, i32* %9, align 4
  %13 = load i32*, i32** @snd_motu_clock_rates, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32*, i32** @snd_motu_clock_rates, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %11

29:                                               ; preds = %24, %11
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** @snd_motu_clock_rates, align 8
  %32 = call i32 @ARRAY_SIZE(i32* %31)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %84

37:                                               ; preds = %29
  %38 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %39 = load i32, i32* @V3_CLOCK_STATUS_OFFSET, align 4
  %40 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %38, i32 %39, i32* %6, i32 4)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %84

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @be32_to_cpu(i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* @V3_CLOCK_RATE_MASK, align 4
  %49 = load i32, i32* @V3_FETCH_PCM_FRAMES, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @V3_CLOCK_RATE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = icmp ne i32 %59, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @cpu_to_be32(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %67 = load i32, i32* @V3_CLOCK_STATUS_OFFSET, align 4
  %68 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %66, i32 %67, i32* %6, i32 4)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %84

73:                                               ; preds = %45
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = call i64 @msleep_interruptible(i32 4000)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EINTR, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %84

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %73
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %79, %71, %43, %34
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @snd_motu_transaction_read(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_motu_transaction_write(%struct.snd_motu*, i32, i32*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
