; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_init_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_syncookies.c_cookie_init_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_sock = type { i32 }
%struct.inet_request_sock = type { i32, i64, i64, i64 }

@TS_OPT_WSCALE_MASK = common dso_local global i32 0, align 4
@TS_OPT_SACK = common dso_local global i32 0, align 4
@TS_OPT_ECN = common dso_local global i32 0, align 4
@TSMASK = common dso_local global i32 0, align 4
@TSBITS = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@TCP_TS_HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cookie_init_timestamp(%struct.request_sock* %0) #0 {
  %2 = alloca %struct.request_sock*, align 8
  %3 = alloca %struct.inet_request_sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.request_sock* %0, %struct.request_sock** %2, align 8
  %7 = call i32 (...) @tcp_time_stamp_raw()
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.request_sock*, %struct.request_sock** %2, align 8
  %9 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %8)
  store %struct.inet_request_sock* %9, %struct.inet_request_sock** %3, align 8
  %10 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %11 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %16 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @TS_OPT_WSCALE_MASK, align 4
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %17, %14 ], [ %19, %18 ]
  store i32 %21, i32* %6, align 4
  %22 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %23 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* @TS_OPT_SACK, align 4
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.inet_request_sock*, %struct.inet_request_sock** %3, align 8
  %32 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @TS_OPT_ECN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @TSMASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load i32, i32* @TSBITS, align 4
  %52 = load i32, i32* %4, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @TSBITS, align 4
  %57 = load i32, i32* %4, align 4
  %58 = shl i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %50, %39
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @NSEC_PER_SEC, align 4
  %65 = load i32, i32* @TCP_TS_HZ, align 4
  %66 = sdiv i32 %64, %65
  %67 = mul nsw i32 %63, %66
  ret i32 %67
}

declare dso_local i32 @tcp_time_stamp_raw(...) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
