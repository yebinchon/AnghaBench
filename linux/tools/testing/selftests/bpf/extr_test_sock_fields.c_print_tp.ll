; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_print_tp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_fields.c_print_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_tcp_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [314 x i8] c"snd_cwnd:%u srtt_us:%u rtt_min:%u snd_ssthresh:%u rcv_nxt:%u snd_nxt:%u snd:una:%u mss_cache:%u ecn_flags:%u rate_delivered:%u rate_interval_us:%u packets_out:%u retrans_out:%u total_retrans:%u segs_in:%u data_segs_in:%u segs_out:%u data_segs_out:%u lost_out:%u sacked_out:%u bytes_received:%llu bytes_acked:%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_tcp_sock*)* @print_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tp(%struct.bpf_tcp_sock* %0) #0 {
  %2 = alloca %struct.bpf_tcp_sock*, align 8
  store %struct.bpf_tcp_sock* %0, %struct.bpf_tcp_sock** %2, align 8
  %3 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %7 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %10 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %13 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %16 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %19 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %22 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %25 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %28 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %31 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %34 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %37 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %40 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %43 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %46 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %49 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %52 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %55 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %54, i32 0, i32 17
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %58 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %61 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %60, i32 0, i32 19
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %64 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %63, i32 0, i32 21
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %2, align 8
  %67 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %66, i32 0, i32 20
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
