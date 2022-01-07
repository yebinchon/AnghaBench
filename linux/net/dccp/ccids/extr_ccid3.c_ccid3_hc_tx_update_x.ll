; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_x.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid3.c_ccid3_hc_tx_update_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid3_hc_tx_sock = type { i32, i32, i64, i64, i32, i64, i64 }

@TFRC_T_MBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"X_prev=%u, X_now=%u, X_calc=%u, X_recv=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32*)* @ccid3_hc_tx_update_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_tx_update_x(%struct.sock* %0, i32* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ccid3_hc_tx_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %9)
  store %struct.ccid3_hc_tx_sock* %10, %struct.ccid3_hc_tx_sock** %5, align 8
  %11 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %12 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = mul nsw i32 2, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %16 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  br label %25

23:                                               ; preds = %2
  %24 = call i32 (...) @ktime_get_real()
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32 [ %22, %20 ], [ %24, %23 ]
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ccid3_hc_tx_idle_rtt(%struct.ccid3_hc_tx_sock* %27, i32 %28)
  %30 = icmp sge i32 %29, 2
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sock*, %struct.sock** %3, align 8
  %33 = call i32 @rfc3390_initial_rate(%struct.sock* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %36 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 2, %37
  %39 = call i8* @max(i32 %34, i32 %38)
  %40 = ptrtoint i8* %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %43 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %48 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = shl i32 %50, 6
  %52 = load i32, i32* %6, align 4
  %53 = call i8* @min(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %56 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %58 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %61 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %60, i32 0, i32 6
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 %63, 6
  %65 = load i32, i32* @TFRC_T_MBI, align 4
  %66 = sdiv i32 %64, %65
  %67 = call i8* @max(i32 %59, i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %70 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %112

71:                                               ; preds = %41
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %74 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ktime_us_delta(i32 %72, i32 %75)
  %77 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %78 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %71
  %83 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %84 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 2, %85
  %87 = load i32, i32* %6, align 4
  %88 = call i8* @min(i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %91 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %93 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %96 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = shl i32 %98, 6
  %100 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %101 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @scaled_div(i32 %99, i64 %102)
  %104 = call i8* @max(i32 %94, i32 %103)
  %105 = ptrtoint i8* %104 to i32
  %106 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %107 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %110 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %82, %71
  br label %112

112:                                              ; preds = %111, %46
  %113 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %114 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = ashr i32 %119, 6
  %121 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %122 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = ashr i32 %123, 6
  %125 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %126 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %129 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = ashr i32 %130, 6
  %132 = call i32 @ccid3_pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %124, i64 %127, i32 %131)
  %133 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %5, align 8
  %134 = call i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock* %133)
  br label %135

135:                                              ; preds = %118, %112
  ret void
}

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @ccid3_hc_tx_idle_rtt(%struct.ccid3_hc_tx_sock*, i32) #1

declare dso_local i32 @rfc3390_initial_rate(%struct.sock*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i64 @ktime_us_delta(i32, i32) #1

declare dso_local i32 @scaled_div(i32, i64) #1

declare dso_local i32 @ccid3_pr_debug(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @ccid3_update_send_interval(%struct.ccid3_hc_tx_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
