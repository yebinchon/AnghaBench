; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_packets_in_net_at_edt.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_packets_in_net_at_edt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.bbr = type { i64 }

@NSEC_PER_USEC = common dso_local global i32 0, align 4
@BW_SCALE = common dso_local global i32 0, align 4
@BBR_UNIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @bbr_packets_in_net_at_edt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_packets_in_net_at_edt(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcp_sock*, align 8
  %7 = alloca %struct.bbr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.bbr* @inet_csk_ca(%struct.sock* %15)
  store %struct.bbr* %16, %struct.bbr** %7, align 8
  %17 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %18 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %6, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @max(i32 %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* @NSEC_PER_USEC, align 4
  %29 = call i32 @div_u64(i32 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call i64 @bbr_bw(%struct.sock* %30)
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* %10, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @BW_SCALE, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.bbr*, %struct.bbr** %7, align 8
  %39 = getelementptr inbounds %struct.bbr, %struct.bbr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BBR_UNIT, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = call i64 @bbr_tso_segs_goal(%struct.sock* %44)
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %43, %2
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %54
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @bbr_bw(%struct.sock*) #1

declare dso_local i64 @bbr_tso_segs_goal(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
