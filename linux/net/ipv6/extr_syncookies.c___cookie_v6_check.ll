; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c___cookie_v6_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c___cookie_v6_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@msstab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cookie_v6_check(%struct.ipv6hdr* %0, %struct.tcphdr* %1, i64 %2) #0 {
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %10 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ntohl(i32 %11)
  %13 = sub i64 %12, 1
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %16 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %15, i32 0, i32 1
  %17 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %17, i32 0, i32 0
  %19 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %20 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %23 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @check_tcp_syn_cookie(i64 %14, i32* %16, i32* %18, i32 %21, i32 %24, i64 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i32*, i32** @msstab, align 8
  %29 = call i64 @ARRAY_SIZE(i32* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32*, i32** @msstab, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %35, %31 ], [ 0, %36 ]
  ret i32 %38
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @check_tcp_syn_cookie(i64, i32*, i32*, i32, i32, i64) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
