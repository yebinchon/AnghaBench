; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%union.tcp_cc_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }
%struct.illinois = type { i64, i32, i32 }

@INET_DIAG_VEGASINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i32, i32*, %union.tcp_cc_info*)* @tcp_illinois_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_illinois_info(%struct.sock* %0, i32 %1, i32* %2, %union.tcp_cc_info* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %union.tcp_cc_info*, align 8
  %10 = alloca %struct.illinois*, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %union.tcp_cc_info* %3, %union.tcp_cc_info** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = call %struct.illinois* @inet_csk_ca(%struct.sock* %12)
  store %struct.illinois* %13, %struct.illinois** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %16 = sub nsw i32 %15, 1
  %17 = shl i32 1, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %4
  %21 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %22 = bitcast %union.tcp_cc_info* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.illinois*, %struct.illinois** %10, align 8
  %25 = getelementptr inbounds %struct.illinois, %struct.illinois* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %28 = bitcast %union.tcp_cc_info* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.illinois*, %struct.illinois** %10, align 8
  %31 = getelementptr inbounds %struct.illinois, %struct.illinois* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %34 = bitcast %union.tcp_cc_info* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %37 = bitcast %union.tcp_cc_info* %36 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %40 = bitcast %union.tcp_cc_info* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %20
  %45 = load %struct.illinois*, %struct.illinois** %10, align 8
  %46 = getelementptr inbounds %struct.illinois, %struct.illinois* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %50 = bitcast %union.tcp_cc_info* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @do_div(i64 %48, i32 %52)
  %54 = load i64, i64* %11, align 8
  %55 = load %union.tcp_cc_info*, %union.tcp_cc_info** %9, align 8
  %56 = bitcast %union.tcp_cc_info* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %44, %20
  %59 = load i32, i32* @INET_DIAG_VEGASINFO, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  store i64 4, i64* %5, align 8
  br label %62

61:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %61, %58
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
