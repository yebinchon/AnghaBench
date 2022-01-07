; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_cwnd_to_recover_or_restore.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_cwnd_to_recover_or_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rate_sample = type { i64 }
%struct.tcp_sock = type { i64, i32 }
%struct.bbr = type { i64, i32, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@s32 = common dso_local global i32 0, align 4
@TCP_CA_Recovery = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.rate_sample*, i64, i64*)* @bbr_set_cwnd_to_recover_or_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_set_cwnd_to_recover_or_restore(%struct.sock* %0, %struct.rate_sample* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.rate_sample*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.tcp_sock*, align 8
  %11 = alloca %struct.bbr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.rate_sample* %1, %struct.rate_sample** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %15)
  store %struct.tcp_sock* %16, %struct.tcp_sock** %10, align 8
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = call %struct.bbr* @inet_csk_ca(%struct.sock* %17)
  store %struct.bbr* %18, %struct.bbr** %11, align 8
  %19 = load %struct.bbr*, %struct.bbr** %11, align 8
  %20 = getelementptr inbounds %struct.bbr, %struct.bbr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %27 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = load %struct.rate_sample*, %struct.rate_sample** %7, align 8
  %30 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load i32, i32* @s32, align 4
  %35 = load i64, i64* %14, align 8
  %36 = load %struct.rate_sample*, %struct.rate_sample** %7, align 8
  %37 = getelementptr inbounds %struct.rate_sample, %struct.rate_sample* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i64 @max_t(i32 %34, i64 %39, i32 1)
  store i64 %40, i64* %14, align 8
  br label %41

41:                                               ; preds = %33, %4
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @TCP_CA_Recovery, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @TCP_CA_Recovery, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.bbr*, %struct.bbr** %11, align 8
  %51 = getelementptr inbounds %struct.bbr, %struct.bbr* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %53 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bbr*, %struct.bbr** %11, align 8
  %56 = getelementptr inbounds %struct.bbr, %struct.bbr* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %58 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %57)
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %14, align 8
  br label %78

61:                                               ; preds = %45, %41
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* @TCP_CA_Recovery, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @TCP_CA_Recovery, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.bbr*, %struct.bbr** %11, align 8
  %72 = getelementptr inbounds %struct.bbr, %struct.bbr* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @max(i64 %70, i64 %73)
  store i64 %74, i64* %14, align 8
  %75 = load %struct.bbr*, %struct.bbr** %11, align 8
  %76 = getelementptr inbounds %struct.bbr, %struct.bbr* %75, i32 0, i32 1
  store i32 0, i32* %76, align 8
  br label %77

77:                                               ; preds = %69, %65, %61
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i64, i64* %13, align 8
  %80 = load %struct.bbr*, %struct.bbr** %11, align 8
  %81 = getelementptr inbounds %struct.bbr, %struct.bbr* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.bbr*, %struct.bbr** %11, align 8
  %83 = getelementptr inbounds %struct.bbr, %struct.bbr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load i64, i64* %14, align 8
  %88 = load %struct.tcp_sock*, %struct.tcp_sock** %10, align 8
  %89 = call i64 @tcp_packets_in_flight(%struct.tcp_sock* %88)
  %90 = load i64, i64* %8, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i64 @max(i64 %87, i64 %91)
  %93 = load i64*, i64** %9, align 8
  store i64 %92, i64* %93, align 8
  store i32 1, i32* %5, align 4
  br label %97

94:                                               ; preds = %78
  %95 = load i64, i64* %14, align 8
  %96 = load i64*, i64** %9, align 8
  store i64 %95, i64* %96, align 8
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %94, %86
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @max_t(i32, i64, i32) #1

declare dso_local i64 @tcp_packets_in_flight(%struct.tcp_sock*) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
