; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_lt_bw_interval_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_lt_bw_interval_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.bbr = type { i32, i32, i32, i64 }

@BBR_UNIT = common dso_local global i32 0, align 4
@bbr_lt_bw_ratio = common dso_local global i32 0, align 4
@bbr_lt_bw_diff = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @bbr_lt_bw_interval_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_lt_bw_interval_done(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bbr*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %5, align 8
  %9 = load %struct.bbr*, %struct.bbr** %5, align 8
  %10 = getelementptr inbounds %struct.bbr, %struct.bbr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.bbr*, %struct.bbr** %5, align 8
  %16 = getelementptr inbounds %struct.bbr, %struct.bbr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %14, %17
  %19 = call i32 @abs(i32 %18) #3
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @BBR_UNIT, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* @bbr_lt_bw_ratio, align 4
  %24 = load %struct.bbr*, %struct.bbr** %5, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %23, %26
  %28 = icmp sle i32 %22, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %13
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @BBR_UNIT, align 4
  %33 = call i64 @bbr_rate_bytes_per_sec(%struct.sock* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @bbr_lt_bw_diff, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %29, %13
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.bbr*, %struct.bbr** %5, align 8
  %39 = getelementptr inbounds %struct.bbr, %struct.bbr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %37, %40
  %42 = ashr i32 %41, 1
  %43 = load %struct.bbr*, %struct.bbr** %5, align 8
  %44 = getelementptr inbounds %struct.bbr, %struct.bbr* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bbr*, %struct.bbr** %5, align 8
  %46 = getelementptr inbounds %struct.bbr, %struct.bbr* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* @BBR_UNIT, align 4
  %48 = load %struct.bbr*, %struct.bbr** %5, align 8
  %49 = getelementptr inbounds %struct.bbr, %struct.bbr* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.bbr*, %struct.bbr** %5, align 8
  %51 = getelementptr inbounds %struct.bbr, %struct.bbr* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  br label %59

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.bbr*, %struct.bbr** %5, align 8
  %56 = getelementptr inbounds %struct.bbr, %struct.bbr* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = call i32 @bbr_reset_lt_bw_sampling_interval(%struct.sock* %57)
  br label %59

59:                                               ; preds = %53, %36
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i64 @bbr_rate_bytes_per_sec(%struct.sock*, i32, i32) #1

declare dso_local i32 @bbr_reset_lt_bw_sampling_interval(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
