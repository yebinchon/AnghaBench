; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_full_bw_reached.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_check_full_bw_reached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i64 }
%struct.bbr = type { i32, i64, i32, i32 }

@bbr_full_bw_thresh = common dso_local global i32 0, align 4
@BBR_SCALE = common dso_local global i32 0, align 4
@bbr_full_bw_cnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.rate_sample*)* @bbr_check_full_bw_reached to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_check_full_bw_reached(%struct.sock* %0, %struct.rate_sample* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.rate_sample*, align 8
  %5 = alloca %struct.bbr*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i64 @bbr_full_bw_reached(%struct.sock* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.bbr*, %struct.bbr** %5, align 8
  %14 = getelementptr inbounds %struct.bbr, %struct.bbr* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.rate_sample*, %struct.rate_sample** %4, align 8
  %19 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %12, %2
  br label %55

23:                                               ; preds = %17
  %24 = load %struct.bbr*, %struct.bbr** %5, align 8
  %25 = getelementptr inbounds %struct.bbr, %struct.bbr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @bbr_full_bw_thresh, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* @BBR_SCALE, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call i32 @bbr_max_bw(%struct.sock* %31)
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %23
  %36 = load %struct.sock*, %struct.sock** %3, align 8
  %37 = call i32 @bbr_max_bw(%struct.sock* %36)
  %38 = load %struct.bbr*, %struct.bbr** %5, align 8
  %39 = getelementptr inbounds %struct.bbr, %struct.bbr* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bbr*, %struct.bbr** %5, align 8
  %41 = getelementptr inbounds %struct.bbr, %struct.bbr* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %55

42:                                               ; preds = %23
  %43 = load %struct.bbr*, %struct.bbr** %5, align 8
  %44 = getelementptr inbounds %struct.bbr, %struct.bbr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.bbr*, %struct.bbr** %5, align 8
  %48 = getelementptr inbounds %struct.bbr, %struct.bbr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @bbr_full_bw_cnt, align 8
  %51 = icmp sge i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load %struct.bbr*, %struct.bbr** %5, align 8
  %54 = getelementptr inbounds %struct.bbr, %struct.bbr* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %42, %35, %22
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bbr_full_bw_reached(%struct.sock*) #1

declare dso_local i32 @bbr_max_bw(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
