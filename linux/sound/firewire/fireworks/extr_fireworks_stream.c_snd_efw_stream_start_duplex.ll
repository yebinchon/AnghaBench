; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_start_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_stream.c_snd_efw_stream_start_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_efw = type { i64, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@CALLBACK_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_efw_stream_start_duplex(%struct.snd_efw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_efw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_efw* %0, %struct.snd_efw** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %7 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %98

13:                                               ; preds = %1
  %14 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %15 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %14, i32 0, i32 5
  %16 = call i64 @amdtp_streaming_error(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %20 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %19, i32 0, i32 4
  %21 = call i64 @amdtp_streaming_error(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %13
  %24 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %25 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %24, i32 0, i32 3
  %26 = call i32 @amdtp_domain_stop(i32* %25)
  %27 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %28 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %27, i32 0, i32 2
  %29 = call i32 @cmp_connection_break(i32* %28)
  %30 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %31 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %30, i32 0, i32 1
  %32 = call i32 @cmp_connection_break(i32* %31)
  br label %33

33:                                               ; preds = %23, %18
  %34 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %35 = call i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw* %34, i32* %4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %98

40:                                               ; preds = %33
  %41 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %42 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %41, i32 0, i32 5
  %43 = call i32 @amdtp_stream_running(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %86, label %45

45:                                               ; preds = %40
  %46 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %47 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %48 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %47, i32 0, i32 5
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @start_stream(%struct.snd_efw* %46, i32* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %87

54:                                               ; preds = %45
  %55 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %56 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %57 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %56, i32 0, i32 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @start_stream(%struct.snd_efw* %55, i32* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %87

63:                                               ; preds = %54
  %64 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %65 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %64, i32 0, i32 3
  %66 = call i32 @amdtp_domain_start(i32* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %87

70:                                               ; preds = %63
  %71 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %72 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %71, i32 0, i32 5
  %73 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %74 = call i32 @amdtp_stream_wait_callback(i32* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %78 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %77, i32 0, i32 4
  %79 = load i32, i32* @CALLBACK_TIMEOUT, align 4
  %80 = call i32 @amdtp_stream_wait_callback(i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %76, %70
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %87

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %40
  store i32 0, i32* %2, align 4
  br label %98

87:                                               ; preds = %82, %69, %62, %53
  %88 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %89 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %88, i32 0, i32 3
  %90 = call i32 @amdtp_domain_stop(i32* %89)
  %91 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %92 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %91, i32 0, i32 2
  %93 = call i32 @cmp_connection_break(i32* %92)
  %94 = load %struct.snd_efw*, %struct.snd_efw** %3, align 8
  %95 = getelementptr inbounds %struct.snd_efw, %struct.snd_efw* %94, i32 0, i32 1
  %96 = call i32 @cmp_connection_break(i32* %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %87, %86, %38, %10
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i64 @amdtp_streaming_error(i32*) #1

declare dso_local i32 @amdtp_domain_stop(i32*) #1

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @snd_efw_command_get_sampling_rate(%struct.snd_efw*, i32*) #1

declare dso_local i32 @amdtp_stream_running(i32*) #1

declare dso_local i32 @start_stream(%struct.snd_efw*, i32*, i32) #1

declare dso_local i32 @amdtp_domain_start(i32*) #1

declare dso_local i32 @amdtp_stream_wait_callback(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
