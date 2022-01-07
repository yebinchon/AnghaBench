; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32 }

@CLOCK_CONFIG_MASK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_CLOCK_STATUS = common dso_local global i64 0, align 8
@TSCM_OFFSET_MULTIPLEX_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*, i32, i32)* @set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_clock(%struct.snd_tscm* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_tscm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %12 = call i32 @get_clock(%struct.snd_tscm* %11, i32* %8)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %101

17:                                               ; preds = %3
  %18 = load i32, i32* @CLOCK_CONFIG_MASK, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %58

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = urem i32 %26, 44100
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, 256
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = udiv i32 %32, 44100
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, 32768
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %57

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  %41 = urem i32 %40, 48000
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 512
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = udiv i32 %46, 48000
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, 32768
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %49, %43
  br label %56

53:                                               ; preds = %39
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %101

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %56, %38
  br label %58

58:                                               ; preds = %57, %17
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @INT_MAX, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 65280
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, 1
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %62, %58
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @cpu_to_be32(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %73 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %76 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %77 = load i64, i64* @TSCM_OFFSET_CLOCK_STATUS, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @snd_fw_transaction(i32 %74, i32 %75, i64 %78, i32* %9, i32 4, i32 0)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %69
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %101

84:                                               ; preds = %69
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 32768
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 @cpu_to_be32(i32 26)
  store i32 %89, i32* %9, align 4
  br label %92

90:                                               ; preds = %84
  %91 = call i32 @cpu_to_be32(i32 13)
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = load %struct.snd_tscm*, %struct.snd_tscm** %5, align 8
  %94 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %97 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %98 = load i64, i64* @TSCM_OFFSET_MULTIPLEX_MODE, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @snd_fw_transaction(i32 %95, i32 %96, i64 %99, i32* %9, i32 4, i32 0)
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %82, %53, %15
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @get_clock(%struct.snd_tscm*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
