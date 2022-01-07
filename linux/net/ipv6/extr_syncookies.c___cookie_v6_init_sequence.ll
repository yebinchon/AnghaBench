; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c___cookie_v6_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_syncookies.c___cookie_v6_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6hdr = type { i32, i32 }
%struct.tcphdr = type { i32, i32, i32 }

@msstab = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cookie_v6_init_sequence(%struct.ipv6hdr* %0, %struct.tcphdr* %1, i64* %2) #0 {
  %4 = alloca %struct.ipv6hdr*, align 8
  %5 = alloca %struct.tcphdr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ipv6hdr* %0, %struct.ipv6hdr** %4, align 8
  store %struct.tcphdr* %1, %struct.tcphdr** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i64*, i64** @msstab, align 8
  %12 = call i32 @ARRAY_SIZE(i64* %11)
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** @msstab, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  br label %14

30:                                               ; preds = %25, %14
  %31 = load i64*, i64** @msstab, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %38 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %37, i32 0, i32 1
  %39 = load %struct.ipv6hdr*, %struct.ipv6hdr** %4, align 8
  %40 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %39, i32 0, i32 0
  %41 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %42 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %45 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tcphdr*, %struct.tcphdr** %5, align 8
  %48 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohl(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @secure_tcp_syn_cookie(i32* %38, i32* %40, i32 %43, i32 %46, i32 %50, i32 %51)
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @secure_tcp_syn_cookie(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
