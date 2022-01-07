; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_begin_session.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/tascam/extr_tascam-stream.c_begin_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_tscm = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TSCM_ADDR_BASE = common dso_local global i64 0, align 8
@TSCM_OFFSET_ISOC_TX_CH = common dso_local global i64 0, align 8
@TSCM_OFFSET_UNKNOWN = common dso_local global i64 0, align 8
@TSCM_OFFSET_ISOC_RX_CH = common dso_local global i64 0, align 8
@TSCM_OFFSET_START_STREAMING = common dso_local global i64 0, align 8
@TSCM_OFFSET_ISOC_RX_ON = common dso_local global i64 0, align 8
@TSCM_OFFSET_SET_OPTION = common dso_local global i64 0, align 8
@TSCM_OFFSET_ISOC_TX_ON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_tscm*)* @begin_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_session(%struct.snd_tscm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_tscm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_tscm* %0, %struct.snd_tscm** %3, align 8
  %6 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %7 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @cpu_to_be32(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %12 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %15 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %16 = load i64, i64* @TSCM_OFFSET_ISOC_TX_CH, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @snd_fw_transaction(i32 %13, i32 %14, i64 %17, i32* %4, i32 4, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = call i32 @cpu_to_be32(i32 2)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %26 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %29 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %30 = load i64, i64* @TSCM_OFFSET_UNKNOWN, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @snd_fw_transaction(i32 %27, i32 %28, i64 %31, i32* %4, i32 4, i32 0)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %107

37:                                               ; preds = %23
  %38 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %39 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_be32(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %44 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %47 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %48 = load i64, i64* @TSCM_OFFSET_ISOC_RX_CH, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @snd_fw_transaction(i32 %45, i32 %46, i64 %49, i32* %4, i32 4, i32 0)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %107

55:                                               ; preds = %37
  %56 = call i32 @cpu_to_be32(i32 1)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %58 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %61 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %62 = load i64, i64* @TSCM_OFFSET_START_STREAMING, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @snd_fw_transaction(i32 %59, i32 %60, i64 %63, i32* %4, i32 4, i32 0)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %107

69:                                               ; preds = %55
  %70 = call i32 @cpu_to_be32(i32 1)
  store i32 %70, i32* %4, align 4
  %71 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %72 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %75 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %76 = load i64, i64* @TSCM_OFFSET_ISOC_RX_ON, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @snd_fw_transaction(i32 %73, i32 %74, i64 %77, i32* %4, i32 4, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %107

83:                                               ; preds = %69
  %84 = call i32 @cpu_to_be32(i32 8192)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %86 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %89 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %90 = load i64, i64* @TSCM_OFFSET_SET_OPTION, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @snd_fw_transaction(i32 %87, i32 %88, i64 %91, i32* %4, i32 4, i32 0)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %107

97:                                               ; preds = %83
  %98 = call i32 @cpu_to_be32(i32 1)
  store i32 %98, i32* %4, align 4
  %99 = load %struct.snd_tscm*, %struct.snd_tscm** %3, align 8
  %100 = getelementptr inbounds %struct.snd_tscm, %struct.snd_tscm* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %103 = load i64, i64* @TSCM_ADDR_BASE, align 8
  %104 = load i64, i64* @TSCM_OFFSET_ISOC_TX_ON, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @snd_fw_transaction(i32 %101, i32 %102, i64 %105, i32* %4, i32 4, i32 0)
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %97, %95, %81, %67, %53, %35, %21
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @snd_fw_transaction(i32, i32, i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
