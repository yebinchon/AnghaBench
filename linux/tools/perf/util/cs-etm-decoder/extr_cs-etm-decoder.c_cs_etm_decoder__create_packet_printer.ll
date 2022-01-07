; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_packet_printer.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/cs-etm-decoder/extr_cs-etm-decoder.c_cs_etm_decoder__create_packet_printer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_etm_decoder = type { i32 }

@OCSD_CREATE_FLG_PACKET_PROC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cs_etm_decoder*, i8*, i8*)* @cs_etm_decoder__create_packet_printer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_etm_decoder__create_packet_printer(%struct.cs_etm_decoder* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs_etm_decoder*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.cs_etm_decoder* %0, %struct.cs_etm_decoder** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %10 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* @OCSD_CREATE_FLG_PACKET_PROC, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @ocsd_dt_create_decoder(i32 %11, i8* %12, i32 %13, i8* %14, i32* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.cs_etm_decoder*, %struct.cs_etm_decoder** %5, align 8
  %20 = getelementptr inbounds %struct.cs_etm_decoder, %struct.cs_etm_decoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @ocsd_dt_set_pkt_protocol_printer(i32 %21, i32 %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %26, %25, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i64 @ocsd_dt_create_decoder(i32, i8*, i32, i8*, i32*) #1

declare dso_local i64 @ocsd_dt_set_pkt_protocol_printer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
