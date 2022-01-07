; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.tcp_cc_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.bbr = type { i32, i32, i32 }

@INET_DIAG_BBRINFO = common dso_local global i32 0, align 4
@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@BW_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* @bbr_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_get_info(%struct.sock* %0, i32 %1, i32* %2, %union.tcp_cc_info* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.tcp_cc_info*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca %struct.bbr*, align 8
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %union.tcp_cc_info* %3, %union.tcp_cc_info** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INET_DIAG_BBRINFO, align 4
  %15 = sub nsw i32 %14, 1
  %16 = shl i32 1, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %22 = sub nsw i32 %21, 1
  %23 = shl i32 1, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %19, %4
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %27)
  store %struct.tcp_sock* %28, %struct.tcp_sock** %10, align 8
  %29 = load %struct.sock*, %struct.sock** %6, align 8
  %30 = call %struct.bbr* @inet_csk_ca(%struct.sock* %29)
  store %struct.bbr* %30, %struct.bbr** %11, align 8
  %31 = load %struct.sock*, %struct.sock** %6, align 8
  %32 = call i32 @bbr_bw(%struct.sock* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %33, %36
  %38 = load i32, i32* @USEC_PER_SEC, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @BW_SCALE, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %43 = bitcast %union.tcp_cc_info* %42 to %struct.TYPE_2__*
  %44 = call i32 @memset(%struct.TYPE_2__* %43, i32 0, i32 20)
  %45 = load i32, i32* %12, align 4
  %46 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %47 = bitcast %union.tcp_cc_info* %46 to %struct.TYPE_2__*
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 32
  %51 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %52 = bitcast %union.tcp_cc_info* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i32 %50, i32* %53, align 4
  %54 = load %struct.bbr*, %struct.bbr** %11, align 8
  %55 = getelementptr inbounds %struct.bbr, %struct.bbr* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %58 = bitcast %union.tcp_cc_info* %57 to %struct.TYPE_2__*
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i32 %56, i32* %59, align 4
  %60 = load %struct.bbr*, %struct.bbr** %11, align 8
  %61 = getelementptr inbounds %struct.bbr, %struct.bbr* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %64 = bitcast %union.tcp_cc_info* %63 to %struct.TYPE_2__*
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load %struct.bbr*, %struct.bbr** %11, align 8
  %67 = getelementptr inbounds %struct.bbr, %struct.bbr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %70 = bitcast %union.tcp_cc_info* %69 to %struct.TYPE_2__*
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @INET_DIAG_BBRINFO, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  store i64 20, i64* %5, align 8
  br label %75

74:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  br label %75

75:                                               ; preds = %74, %26
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @bbr_bw(%struct.sock*) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
