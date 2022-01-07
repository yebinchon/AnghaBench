; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_bw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_update_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i64, i32, i32, i32 }
%struct.tcp_sock = type { i32 }
%struct.bbr = type { i32, i32, i32, i64, i32 }

@BW_UNIT = common dso_local global i32 0, align 4
@bbr_bw_rtts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_update_bw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_update_bw(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bbr*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.bbr* @inet_csk_ca(%struct.sock* %10)
  store %struct.bbr* %11, %struct.bbr** %6, align 8
  %12 = load %struct.bbr*, %struct.bbr** %6, align 8
  %13 = getelementptr inbounds %struct.bbr, %struct.bbr* %12, i32 0, i32 0
  store i32 0, i32* %13, align 8
  %14 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %15 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %20 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  br label %80

24:                                               ; preds = %18
  %25 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %26 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.bbr*, %struct.bbr** %6, align 8
  %29 = getelementptr inbounds %struct.bbr, %struct.bbr* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @before(i32 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %24
  %34 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %35 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bbr*, %struct.bbr** %6, align 8
  %38 = getelementptr inbounds %struct.bbr, %struct.bbr* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bbr*, %struct.bbr** %6, align 8
  %40 = getelementptr inbounds %struct.bbr, %struct.bbr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.bbr*, %struct.bbr** %6, align 8
  %44 = getelementptr inbounds %struct.bbr, %struct.bbr* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.bbr*, %struct.bbr** %6, align 8
  %46 = getelementptr inbounds %struct.bbr, %struct.bbr* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  br label %47

47:                                               ; preds = %33, %24
  %48 = load %struct.sock*, %struct.sock** %3, align 8
  %49 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %50 = call i32 @bbr_lt_bw_sampling(%struct.sock* %48, %struct.rate_sample* %49)
  %51 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %52 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @BW_UNIT, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %59 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @do_div(i32 %57, i32 %60)
  %62 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %63 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %47
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = call i32 @bbr_max_bw(%struct.sock* %68)
  %70 = icmp sge i32 %67, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %66, %47
  %72 = load %struct.bbr*, %struct.bbr** %6, align 8
  %73 = getelementptr inbounds %struct.bbr, %struct.bbr* %72, i32 0, i32 2
  %74 = load i32, i32* @bbr_bw_rtts, align 4
  %75 = load %struct.bbr*, %struct.bbr** %6, align 8
  %76 = getelementptr inbounds %struct.bbr, %struct.bbr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @minmax_running_max(i32* %73, i32 %74, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %23, %71, %66
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @before(i32, i32) #1

declare dso_local i32 @bbr_lt_bw_sampling(%struct.sock*, %struct.rate_sample*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @bbr_max_bw(%struct.sock*) #1

declare dso_local i32 @minmax_running_max(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
