; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_pkt_hdr = type { i64*, i32, i32, i32, i32, i64, i32, i64 }
%struct.ncsi_cmd_arg = type { i64, i32, i32, i32, i32 }

@NCSI_PKT_REVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncsi_pkt_hdr*, %struct.ncsi_cmd_arg*)* @ncsi_cmd_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncsi_cmd_build_header(%struct.ncsi_pkt_hdr* %0, %struct.ncsi_cmd_arg* %1) #0 {
  %3 = alloca %struct.ncsi_pkt_hdr*, align 8
  %4 = alloca %struct.ncsi_cmd_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.ncsi_pkt_hdr* %0, %struct.ncsi_pkt_hdr** %3, align 8
  store %struct.ncsi_cmd_arg* %1, %struct.ncsi_cmd_arg** %4, align 8
  %7 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %8 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @NCSI_PKT_REVISION, align 4
  %10 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %11 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %13 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %12, i32 0, i32 5
  store i64 0, i64* %13, align 8
  %14 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %15 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %18 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %20 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %25 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %28 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NCSI_TO_CHANNEL(i32 %26, i32 %29)
  %31 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %32 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %34 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @htons(i64 %35)
  %37 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %38 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %40 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %44 = getelementptr inbounds %struct.ncsi_pkt_hdr, %struct.ncsi_pkt_hdr* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %48 = bitcast %struct.ncsi_pkt_hdr* %47 to i8*
  %49 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %50 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add i64 48, %51
  %53 = call i32 @ncsi_calculate_checksum(i8* %48, i64 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ncsi_pkt_hdr*, %struct.ncsi_pkt_hdr** %3, align 8
  %55 = bitcast %struct.ncsi_pkt_hdr* %54 to i8*
  %56 = getelementptr i8, i8* %55, i64 48
  %57 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %58 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ALIGN(i64 %59, i32 4)
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %56, i64 %61
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %6, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @htonl(i32 %64)
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  ret void
}

declare dso_local i32 @NCSI_TO_CHANNEL(i32, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @ncsi_calculate_checksum(i8*, i64) #1

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
