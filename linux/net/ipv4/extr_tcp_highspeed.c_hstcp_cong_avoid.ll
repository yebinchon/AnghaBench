; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_highspeed.c_hstcp_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_highspeed.c_hstcp_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sock = type { i32 }
%struct.tcp_sock = type { i64, i64, i64 }
%struct.hstcp = type { i64 }

@hstcp_aimd_vals = common dso_local global %struct.TYPE_2__* null, align 8
@HSTCP_AIMD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @hstcp_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hstcp_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.hstcp*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sock*, %struct.sock** %4, align 8
  %10 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %9)
  store %struct.tcp_sock* %10, %struct.tcp_sock** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = call %struct.hstcp* @inet_csk_ca(%struct.sock* %11)
  store %struct.hstcp* %12, %struct.hstcp** %8, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i32 @tcp_is_cwnd_limited(%struct.sock* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %150

17:                                               ; preds = %3
  %18 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %19 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @tcp_slow_start(%struct.tcp_sock* %22, i32 %23)
  br label %150

25:                                               ; preds = %17
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %30 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %31 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %28, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %60, %37
  %39 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %40 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %43 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %44 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %41, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %52 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* @HSTCP_AIMD_MAX, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %53, %56
  br label %58

58:                                               ; preds = %50, %38
  %59 = phi i1 [ false, %38 ], [ %57, %50 ]
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %62 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %38

65:                                               ; preds = %58
  br label %112

66:                                               ; preds = %25
  %67 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %68 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %111

71:                                               ; preds = %66
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %73 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %76 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %77 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %74, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %105, %84
  %86 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %87 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hstcp_aimd_vals, align 8
  %95 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %96 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub i64 %97, 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sle i64 %93, %101
  br label %103

103:                                              ; preds = %90, %85
  %104 = phi i1 [ false, %85 ], [ %102, %90 ]
  br i1 %104, label %105, label %110

105:                                              ; preds = %103
  %106 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %107 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add i64 %108, -1
  store i64 %109, i64* %107, align 8
  br label %85

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110, %71, %66
  br label %112

112:                                              ; preds = %111, %65
  %113 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %114 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %117 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %120, label %149

120:                                              ; preds = %112
  %121 = load %struct.hstcp*, %struct.hstcp** %8, align 8
  %122 = getelementptr inbounds %struct.hstcp, %struct.hstcp* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 1
  %125 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %126 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %130 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %133 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp sge i64 %131, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %120
  %137 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %138 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %141 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = sub nsw i64 %142, %139
  store i64 %143, i64* %141, align 8
  %144 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %145 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1
  store i64 %147, i64* %145, align 8
  br label %148

148:                                              ; preds = %136, %120
  br label %149

149:                                              ; preds = %148, %112
  br label %150

150:                                              ; preds = %16, %149, %21
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.hstcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
