; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_reserve_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_reserve_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i64, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_stream_reserve_duplex(%struct.snd_efw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_efw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %10 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %11 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %10, i32 0, i32 2
  %12 = call i32 @check_connection_used_by_others(%struct.snd_efw* %9, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %100

17:                                               ; preds = %2
  %18 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %19 = call i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw* %18, i32* %6)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %35 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %34, i32 0, i32 5
  %36 = call i32 @amdtp_domain_stop(i32* %35)
  %37 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %38 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %37, i32 0, i32 4
  %39 = call i32 @cmp_connection_break(i32* %38)
  %40 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %41 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %40, i32 0, i32 1
  %42 = call i32 @cmp_connection_break(i32* %41)
  %43 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %44 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %43, i32 0, i32 4
  %45 = call i32 @cmp_connection_release(i32* %44)
  %46 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %47 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %46, i32 0, i32 1
  %48 = call i32 @cmp_connection_release(i32* %47)
  br label %49

49:                                               ; preds = %33, %29
  %50 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %51 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %54, %49
  %59 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @snd_efw_command_set_sampling_rate(%struct.snd_efw* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %100

66:                                               ; preds = %58
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @snd_efw_get_multiplier_mode(i32 %67, i32* %8)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %100

73:                                               ; preds = %66
  %74 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %75 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %76 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %75, i32 0, i32 3
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @keep_resources(%struct.snd_efw* %74, i32* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %100

84:                                               ; preds = %73
  %85 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %86 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %87 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %86, i32 0, i32 2
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @keep_resources(%struct.snd_efw* %85, i32* %87, i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load %struct.snd_efw*, %struct.snd_efw** %4, align 8
  %95 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %94, i32 0, i32 1
  %96 = call i32 @cmp_connection_release(i32* %95)
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %3, align 4
  br label %100

98:                                               ; preds = %84
  br label %99

99:                                               ; preds = %98, %54
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %99, %93, %82, %71, %64, %22, %15
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @check_connection_used_by_others(%struct.snd_efw*, i32*) #1

declare dso_local i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw*, i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @cmp_connection_release(i32*) #1

declare dso_local i32 @snd_efw_command_set_sampling_rate(%struct.snd_efw*, i32) #1

declare dso_local i32 @snd_efw_get_multiplier_mode(i32, i32*) #1

declare dso_local i32 @keep_resources(%struct.snd_efw*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
