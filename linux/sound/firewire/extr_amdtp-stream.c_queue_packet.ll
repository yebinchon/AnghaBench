; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_queue_packet.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_queue_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fw_iso_packet = type { i64, i32, i32 }

@INTERRUPT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"queueing error: %d\0A\00", align 1
@QUEUE_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.fw_iso_packet*)* @queue_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_packet(%struct.amdtp_stream* %0, %struct.fw_iso_packet* %1) #0 {
  %3 = alloca %struct.amdtp_stream*, align 8
  %4 = alloca %struct.fw_iso_packet*, align 8
  %5 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %3, align 8
  store %struct.fw_iso_packet* %1, %struct.fw_iso_packet** %4, align 8
  %6 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %7 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load i32, i32* @INTERRUPT_INTERVAL, align 4
  %11 = call i32 @IS_ALIGNED(i32 %9, i32 %10)
  %12 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %13 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %15 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %18 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %20 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %22 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fw_iso_packet*, %struct.fw_iso_packet** %4, align 8
  %25 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %26 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %29 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %33 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fw_iso_context_queue(i32 %23, %struct.fw_iso_packet* %24, i32* %27, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %2
  %43 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %44 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %61

49:                                               ; preds = %2
  %50 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %51 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @QUEUE_LENGTH, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.amdtp_stream*, %struct.amdtp_stream** %3, align 8
  %59 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %49
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @fw_iso_context_queue(i32, %struct.fw_iso_packet*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
