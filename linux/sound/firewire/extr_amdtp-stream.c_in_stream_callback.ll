; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_in_stream_callback.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_in_stream_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.amdtp_stream = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.fw_iso_packet = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @in_stream_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_stream_callback(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.amdtp_stream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fw_iso_packet, align 4
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.amdtp_stream*
  store %struct.amdtp_stream* %18, %struct.amdtp_stream** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %13, align 8
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %22 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  br label %82

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %29 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = udiv i64 %27, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %36 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %37 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @generate_device_pkt_descs(%struct.amdtp_stream* %35, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %26
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %51 = call i32 @cancel_stream(%struct.amdtp_stream* %50)
  br label %82

52:                                               ; preds = %44
  br label %60

53:                                               ; preds = %26
  %54 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %55 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %56 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @process_ctx_payloads(%struct.amdtp_stream* %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %53, %52
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %74, %60
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = bitcast %struct.fw_iso_packet* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %66, i8 0, i64 4, i1 false)
  %67 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %68 = call i64 @queue_in_packet(%struct.amdtp_stream* %67, %struct.fw_iso_packet* %16)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %72 = call i32 @cancel_stream(%struct.amdtp_stream* %71)
  br label %82

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %61

77:                                               ; preds = %61
  %78 = load %struct.amdtp_stream*, %struct.amdtp_stream** %11, align 8
  %79 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @fw_iso_context_queue_flush(i32 %80)
  br label %82

82:                                               ; preds = %77, %70, %49, %25
  ret void
}

declare dso_local i32 @generate_device_pkt_descs(%struct.amdtp_stream*, i32, i32*, i32) #1

declare dso_local i32 @cancel_stream(%struct.amdtp_stream*) #1

declare dso_local i32 @process_ctx_payloads(%struct.amdtp_stream*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @queue_in_packet(%struct.amdtp_stream*, %struct.fw_iso_packet*) #1

declare dso_local i32 @fw_iso_context_queue_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
