; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_set_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_set_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@amdtp_rate_table = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@amdtp_syt_intervals = common dso_local global i32* null, align 8
@AMDTP_OUT_STREAM = common dso_local global i64 0, align 8
@TRANSFER_DELAY_TICKS = common dso_local global i64 0, align 8
@TICKS_PER_CYCLE = common dso_local global i64 0, align 8
@CIP_BLOCKING = common dso_local global i32 0, align 4
@TICKS_PER_SECOND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdtp_stream_set_parameters(%struct.amdtp_stream* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32*, i32** @amdtp_rate_table, align 8
  %12 = call i32 @ARRAY_SIZE(i32* %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32*, i32** @amdtp_rate_table, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %9

27:                                               ; preds = %22, %9
  %28 = load i32, i32* %8, align 4
  %29 = load i32*, i32** @amdtp_rate_table, align 8
  %30 = call i32 @ARRAY_SIZE(i32* %29)
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %85

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %38 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %41 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32*, i32** @amdtp_syt_intervals, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %48 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %50 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AMDTP_OUT_STREAM, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %35
  %55 = load i64, i64* @TRANSFER_DELAY_TICKS, align 8
  %56 = load i64, i64* @TICKS_PER_CYCLE, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %59 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %63 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CIP_BLOCKING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %54
  %69 = load i32, i32* @TICKS_PER_SECOND, align 4
  %70 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %71 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = mul i32 %69, %72
  %74 = load i32, i32* %6, align 4
  %75 = udiv i32 %73, %74
  %76 = zext i32 %75 to i64
  %77 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %78 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %76
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %68, %54
  br label %84

84:                                               ; preds = %83, %35
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %32
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
