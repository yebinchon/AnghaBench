; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_amdtp-tascam.c_amdtp_tscm_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_amdtp-tascam.c_amdtp_tscm_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i64, %struct.amdtp_tscm* }
%struct.amdtp_tscm = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@AMDTP_IN_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_tscm_set_parameters(%struct.amdtp_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdtp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdtp_tscm*, align 8
  %7 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %9 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %8, i32 0, i32 1
  %10 = load %struct.amdtp_tscm*, %struct.amdtp_tscm** %9, align 8
  store %struct.amdtp_tscm* %10, %struct.amdtp_tscm** %6, align 8
  %11 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %12 = call i64 @amdtp_stream_running(%struct.amdtp_stream* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.amdtp_tscm*, %struct.amdtp_tscm** %6, align 8
  %19 = getelementptr inbounds %struct.amdtp_tscm, %struct.amdtp_tscm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %22 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AMDTP_IN_STREAM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.amdtp_stream*, %struct.amdtp_stream** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @amdtp_stream_set_parameters(%struct.amdtp_stream* %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @amdtp_stream_running(%struct.amdtp_stream*) #1

declare dso_local i32 @amdtp_stream_set_parameters(%struct.amdtp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
