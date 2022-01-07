; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_first_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_amdtp_stream_first_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)* }
%struct.fw_iso_context.0 = type opaque
%struct.amdtp_stream = type opaque
%struct.amdtp_stream.1 = type { i32, i64, i32, i32 }

@AMDTP_IN_STREAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @amdtp_stream_first_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdtp_stream_first_callback(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.amdtp_stream.1*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.amdtp_stream.1*
  store %struct.amdtp_stream.1* %15, %struct.amdtp_stream.1** %11, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  %18 = load %struct.amdtp_stream.1*, %struct.amdtp_stream.1** %11, align 8
  %19 = getelementptr inbounds %struct.amdtp_stream.1, %struct.amdtp_stream.1* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.amdtp_stream.1*, %struct.amdtp_stream.1** %11, align 8
  %21 = getelementptr inbounds %struct.amdtp_stream.1, %struct.amdtp_stream.1* %20, i32 0, i32 3
  %22 = call i32 @wake_up(i32* %21)
  %23 = load %struct.amdtp_stream.1*, %struct.amdtp_stream.1** %11, align 8
  %24 = getelementptr inbounds %struct.amdtp_stream.1, %struct.amdtp_stream.1* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AMDTP_IN_STREAM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @compute_cycle_count(i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.fw_iso_context*, %struct.fw_iso_context** %6, align 8
  %34 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)* bitcast (i32 (%struct.fw_iso_context*, i32, i64, i8*, %struct.amdtp_stream.1*)* @in_stream_callback to i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)*), i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)** %35, align 8
  br label %43

36:                                               ; preds = %5
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @compute_it_cycle(i32 %38)
  store i32 %39, i32* %13, align 4
  %40 = load %struct.fw_iso_context*, %struct.fw_iso_context** %6, align 8
  %41 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)* bitcast (i32 (%struct.fw_iso_context*, i32, i64, i8*, %struct.amdtp_stream.1*)* @out_stream_callback to i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)*), i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)** %42, align 8
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.amdtp_stream.1*, %struct.amdtp_stream.1** %11, align 8
  %46 = getelementptr inbounds %struct.amdtp_stream.1, %struct.amdtp_stream.1* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.fw_iso_context*, %struct.fw_iso_context** %6, align 8
  %48 = getelementptr inbounds %struct.fw_iso_context, %struct.fw_iso_context* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)*, i32 (%struct.fw_iso_context.0*, i32, i64, i8*, %struct.amdtp_stream*)** %49, align 8
  %51 = load %struct.fw_iso_context*, %struct.fw_iso_context** %6, align 8
  %52 = bitcast %struct.fw_iso_context* %51 to %struct.fw_iso_context.0*
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.amdtp_stream.1*, %struct.amdtp_stream.1** %11, align 8
  %57 = bitcast %struct.amdtp_stream.1* %56 to %struct.amdtp_stream*
  %58 = call i32 %50(%struct.fw_iso_context.0* %52, i32 %53, i64 %54, i8* %55, %struct.amdtp_stream* %57)
  ret void
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @compute_cycle_count(i32) #1

declare dso_local i32 @in_stream_callback(%struct.fw_iso_context*, i32, i64, i8*, %struct.amdtp_stream.1*) #1

declare dso_local i32 @compute_it_cycle(i32) #1

declare dso_local i32 @out_stream_callback(%struct.fw_iso_context*, i32, i64, i8*, %struct.amdtp_stream.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
