; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_fast_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_fast_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcphdr = type { i32 }
%struct.tcp_sock = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@TCPOLEN_TSTAMP_ALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, %struct.tcphdr*, %struct.tcp_sock*)* @tcp_fast_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_fast_parse_options(%struct.net* %0, %struct.sk_buff* %1, %struct.tcphdr* %2, %struct.tcp_sock* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.tcp_sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store %struct.tcp_sock* %3, %struct.tcp_sock** %9, align 8
  %10 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %11 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %17 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  store i32 0, i32* %5, align 4
  br label %70

19:                                               ; preds = %4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %27 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i32, i32* @TCPOLEN_TSTAMP_ALIGNED, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 4, %31
  %33 = udiv i64 %32, 4
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %37 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %38 = call i64 @tcp_parse_aligned_timestamp(%struct.tcp_sock* %36, %struct.tcphdr* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %5, align 4
  br label %70

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %25, %19
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.net*, %struct.net** %6, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = call i32 @tcp_parse_options(%struct.net* %44, %struct.sk_buff* %45, %struct.TYPE_2__* %47, i32 1, i32* null)
  %49 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %50 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %43
  %55 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %56 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tcp_sock*, %struct.tcp_sock** %9, align 8
  %65 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %63
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %60, %54, %43
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %40, %15
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i64 @tcp_parse_aligned_timestamp(%struct.tcp_sock*, %struct.tcphdr*) #1

declare dso_local i32 @tcp_parse_options(%struct.net*, %struct.sk_buff*, %struct.TYPE_2__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
