; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_dctcp.c_dctcp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.tcp_cc_info = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.dctcp = type { i32, i32, i32, i64 }
%struct.tcp_sock = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@INET_DIAG_DCTCPINFO = common dso_local global i32 0, align 4
@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4
@dctcp_reno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* @dctcp_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dctcp_get_info(%struct.sock* %0, i32 %1, i32* %2, %union.tcp_cc_info* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.tcp_cc_info*, align 8
  %10 = alloca %struct.dctcp*, align 8
  %11 = alloca %struct.tcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %union.tcp_cc_info* %3, %union.tcp_cc_info** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.dctcp* @inet_csk_ca(%struct.sock* %12)
  store %struct.dctcp* %13, %struct.dctcp** %10, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @INET_DIAG_DCTCPINFO, align 4
  %18 = sub nsw i32 %17, 1
  %19 = shl i32 1, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %25 = sub nsw i32 %24, 1
  %26 = shl i32 1, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %85

29:                                               ; preds = %22, %4
  %30 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %31 = bitcast %union.tcp_cc_info* %30 to %struct.TYPE_3__*
  %32 = call i32 @memset(%struct.TYPE_3__* %31, i32 0, i32 24)
  %33 = load %struct.sock*, %struct.sock** %6, align 8
  %34 = call %struct.TYPE_4__* @inet_csk(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, @dctcp_reno
  br i1 %37, label %38, label %82

38:                                               ; preds = %29
  %39 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %40 = bitcast %union.tcp_cc_info* %39 to %struct.TYPE_3__*
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dctcp*, %struct.dctcp** %10, align 8
  %43 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %46 = bitcast %union.tcp_cc_info* %45 to %struct.TYPE_3__*
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 4
  store i64 %44, i64* %47, align 8
  %48 = load %struct.dctcp*, %struct.dctcp** %10, align 8
  %49 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %52 = bitcast %union.tcp_cc_info* %51 to %struct.TYPE_3__*
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 4
  %54 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %55 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %58 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.dctcp*, %struct.dctcp** %10, align 8
  %61 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  %64 = mul nsw i32 %56, %63
  %65 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %66 = bitcast %union.tcp_cc_info* %65 to %struct.TYPE_3__*
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %69 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.tcp_sock*, %struct.tcp_sock** %11, align 8
  %72 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.dctcp*, %struct.dctcp** %10, align 8
  %75 = getelementptr inbounds %struct.dctcp, %struct.dctcp* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %73, %76
  %78 = mul nsw i32 %70, %77
  %79 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %80 = bitcast %union.tcp_cc_info* %79 to %struct.TYPE_3__*
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  br label %82

82:                                               ; preds = %38, %29
  %83 = load i32, i32* @INET_DIAG_DCTCPINFO, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  store i64 24, i64* %5, align 8
  br label %86

85:                                               ; preds = %22
  store i64 0, i64* %5, align 8
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i64, i64* %5, align 8
  ret i64 %87
}

declare dso_local %struct.dctcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
