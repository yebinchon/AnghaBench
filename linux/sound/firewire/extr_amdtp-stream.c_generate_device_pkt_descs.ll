; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_device_pkt_descs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_device_pkt_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pkt_desc = type { i32, i32, i32, i32, i32 }

@QUEUE_LENGTH = common dso_local global i32 0, align 4
@CIP_DBC_IS_END_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdtp_stream*, %struct.pkt_desc*, i32*, i32)* @generate_device_pkt_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_device_pkt_descs(%struct.amdtp_stream* %0, %struct.pkt_desc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdtp_stream*, align 8
  %7 = alloca %struct.pkt_desc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pkt_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %6, align 8
  store %struct.pkt_desc* %1, %struct.pkt_desc** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %20 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %98, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %101

26:                                               ; preds = %22
  %27 = load %struct.pkt_desc*, %struct.pkt_desc** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %27, i64 %29
  store %struct.pkt_desc* %30, %struct.pkt_desc** %13, align 8
  %31 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %32 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* @QUEUE_LENGTH, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @compute_cycle_count(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @parse_ir_ctx_header(%struct.amdtp_stream* %42, i32 %43, i32* %44, i32* %16, i32* %17, i32* %10, i32* %18, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %105

51:                                               ; preds = %26
  %52 = load i32, i32* %15, align 4
  %53 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %54 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %18, align 4
  %56 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %57 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %60 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %63 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %65 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %14, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %74 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %76 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CIP_DBC_IS_END_EVENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %51
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.pkt_desc*, %struct.pkt_desc** %13, align 8
  %84 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add i32 %82, %85
  %87 = and i32 %86, 255
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %81, %51
  %89 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %90 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = load i32*, i32** %8, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %8, align 8
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %22

101:                                              ; preds = %22
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.amdtp_stream*, %struct.amdtp_stream** %6, align 8
  %104 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %49
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @compute_cycle_count(i32) #1

declare dso_local i32 @parse_ir_ctx_header(%struct.amdtp_stream*, i32, i32*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
