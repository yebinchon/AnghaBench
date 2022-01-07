; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_switch_fetching_mode.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/motu/extr_motu-protocol-v2.c_v2_switch_fetching_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_motu = type { i32* }

@snd_motu_spec_traveler = common dso_local global i32 0, align 4
@snd_motu_spec_8pre = common dso_local global i32 0, align 4
@V2_CLOCK_STATUS_OFFSET = common dso_local global i32 0, align 4
@V2_CLOCK_TRAVELER_FETCH_DISABLE = common dso_local global i32 0, align 4
@V2_CLOCK_TRAVELER_FETCH_ENABLE = common dso_local global i32 0, align 4
@V2_CLOCK_8PRE_FETCH_DISABLE = common dso_local global i32 0, align 4
@V2_CLOCK_8PRE_FETCH_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_motu*, i32)* @v2_switch_fetching_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_switch_fetching_mode(%struct.snd_motu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_motu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_motu* %0, %struct.snd_motu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %10 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, @snd_motu_spec_traveler
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %15 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @snd_motu_spec_8pre
  br i1 %17, label %18, label %81

18:                                               ; preds = %13, %2
  %19 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %20 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %21 = call i32 @snd_motu_transaction_read(%struct.snd_motu* %19, i32 %20, i32* %6, i32 4)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %30 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, @snd_motu_spec_traveler
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_DISABLE, align 4
  %35 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_ENABLE, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_ENABLE, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* @V2_CLOCK_TRAVELER_FETCH_DISABLE, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %75

51:                                               ; preds = %26
  %52 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %53 = getelementptr inbounds %struct.snd_motu, %struct.snd_motu* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, @snd_motu_spec_8pre
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load i32, i32* @V2_CLOCK_8PRE_FETCH_DISABLE, align 4
  %58 = load i32, i32* @V2_CLOCK_8PRE_FETCH_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @V2_CLOCK_8PRE_FETCH_DISABLE, align 4
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %73

69:                                               ; preds = %56
  %70 = load i32, i32* @V2_CLOCK_8PRE_FETCH_ENABLE, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %51
  br label %75

75:                                               ; preds = %74, %50
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cpu_to_be32(i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load %struct.snd_motu*, %struct.snd_motu** %4, align 8
  %79 = load i32, i32* @V2_CLOCK_STATUS_OFFSET, align 4
  %80 = call i32 @snd_motu_transaction_write(%struct.snd_motu* %78, i32 %79, i32* %6, i32 4)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %75, %13
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

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
