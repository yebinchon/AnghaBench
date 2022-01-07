; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_first_li.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_first_li.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_rx_sock = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"No RTT estimate available, using fallback RTT\0A\00", align 1
@DCCP_FALLBACK_RTT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"X_recv==0\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"stored value of X_recv is zero\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%s(%p), receive rate=%u bytes/s, implied loss rate=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @ccid3_first_li to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid3_first_li(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %9)
  store %struct.ccid3_hc_rx_sock* %10, %struct.ccid3_hc_rx_sock** %4, align 8
  %11 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %12 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* @DCCP_FALLBACK_RTT, align 8
  %18 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %19 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = call i32 (...) @ktime_get()
  %22 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %23 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ktime_us_delta(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ule i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %20
  %30 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %31 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i8* @scaled_div32(i32 %32, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %41 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @DCCP_BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %80

46:                                               ; preds = %38
  %47 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %48 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %29
  %52 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %53 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %4, align 8
  %56 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @scaled_div(i32 %54, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i8* @scaled_div32(i32 %60, i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @tfrc_calc_x_reverse_lookup(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.sock*, %struct.sock** %3, align 8
  %67 = call i32 @dccp_role(%struct.sock* %66)
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %67, %struct.sock* %68, i32 %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %51
  br label %78

75:                                               ; preds = %51
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @scaled_div(i32 1, i32 %76)
  br label %78

78:                                               ; preds = %75, %74
  %79 = phi i32 [ -1, %74 ], [ %77, %75 ]
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %44
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local i32 @DCCP_WARN(i8*) #1

declare dso_local i32 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i8* @scaled_div32(i32, i32) #1

declare dso_local i32 @DCCP_BUG(i8*) #1

declare dso_local i32 @scaled_div(i32, i32) #1

declare dso_local i32 @tfrc_calc_x_reverse_lookup(i32) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, %struct.sock*, i32, i32) #1

declare dso_local i32 @dccp_role(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
