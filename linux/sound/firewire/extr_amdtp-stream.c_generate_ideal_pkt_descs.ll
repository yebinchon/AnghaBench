; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_ideal_pkt_descs.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_amdtp-stream.c_generate_ideal_pkt_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdtp_stream = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pkt_desc = type { i32, i32, i32, i32, i32 }

@QUEUE_LENGTH = common dso_local global i32 0, align 4
@CIP_DBC_IS_END_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdtp_stream*, %struct.pkt_desc*, i32*, i32)* @generate_ideal_pkt_descs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_ideal_pkt_descs(%struct.amdtp_stream* %0, %struct.pkt_desc* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.amdtp_stream*, align 8
  %6 = alloca %struct.pkt_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pkt_desc*, align 8
  %12 = alloca i32, align 4
  store %struct.amdtp_stream* %0, %struct.amdtp_stream** %5, align 8
  store %struct.pkt_desc* %1, %struct.pkt_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %14 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %95, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %98

20:                                               ; preds = %16
  %21 = load %struct.pkt_desc*, %struct.pkt_desc** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %21, i64 %23
  store %struct.pkt_desc* %24, %struct.pkt_desc** %11, align 8
  %25 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %26 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @QUEUE_LENGTH, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @compute_it_cycle(i32 %33)
  %35 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %36 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %38 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %39 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @calculate_syt(%struct.amdtp_stream* %37, i32 %40)
  %42 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %43 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %45 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %46 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @calculate_data_blocks(%struct.amdtp_stream* %44, i32 %47)
  %49 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %50 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %52 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CIP_DBC_IS_END_EVENT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %20
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %60 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %58, %61
  %63 = and i32 %62, 255
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %57, %20
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %67 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %69 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CIP_DBC_IS_END_EVENT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %77 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add i32 %75, %78
  %80 = and i32 %79, 255
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %74, %64
  %82 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %83 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pkt_desc*, %struct.pkt_desc** %11, align 8
  %92 = getelementptr inbounds %struct.pkt_desc, %struct.pkt_desc* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %7, align 8
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %16

98:                                               ; preds = %16
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.amdtp_stream*, %struct.amdtp_stream** %5, align 8
  %101 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret void
}

declare dso_local i32 @compute_it_cycle(i32) #1

declare dso_local i32 @calculate_syt(%struct.amdtp_stream*, i32) #1

declare dso_local i32 @calculate_data_blocks(%struct.amdtp_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
