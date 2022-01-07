; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inetpeer.c_inet_peer_xrlim_allow.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inetpeer.c_inet_peer_xrlim_allow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_peer = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@XRLIM_BURST_FACTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_peer_xrlim_allow(%struct.inet_peer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_peer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.inet_peer* %0, %struct.inet_peer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %10 = icmp ne %struct.inet_peer* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %53

12:                                               ; preds = %2
  %13 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %14 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %19 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %22, %21
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %26 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @XRLIM_BURST_FACTOR, align 4
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = icmp ugt i64 %27, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %12
  %34 = load i32, i32* @XRLIM_BURST_FACTOR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i64, i64* %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %46, %45
  store i64 %47, i64* %7, align 8
  store i32 1, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.inet_peer*, %struct.inet_peer** %4, align 8
  %51 = getelementptr inbounds %struct.inet_peer, %struct.inet_peer* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
