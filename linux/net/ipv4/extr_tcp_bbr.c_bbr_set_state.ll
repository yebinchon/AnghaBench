; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_bbr.c_bbr_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_sample = type { i32 }
%struct.sock = type { i32 }
%struct.bbr = type { i32, i64, i64 }

@TCP_CA_Loss = common dso_local global i64 0, align 8
@__const.bbr_set_state.rs = private unnamed_addr constant %struct.rate_sample { i32 1 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @bbr_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_state(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bbr*, align 8
  %6 = alloca %struct.rate_sample, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.bbr* @inet_csk_ca(%struct.sock* %7)
  store %struct.bbr* %8, %struct.bbr** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @TCP_CA_Loss, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = bitcast %struct.rate_sample* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.rate_sample* @__const.bbr_set_state.rs to i8*), i64 4, i1 false)
  %14 = load i64, i64* @TCP_CA_Loss, align 8
  %15 = load %struct.bbr*, %struct.bbr** %5, align 8
  %16 = getelementptr inbounds %struct.bbr, %struct.bbr* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.bbr*, %struct.bbr** %5, align 8
  %18 = getelementptr inbounds %struct.bbr, %struct.bbr* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.bbr*, %struct.bbr** %5, align 8
  %20 = getelementptr inbounds %struct.bbr, %struct.bbr* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = call i32 @bbr_lt_bw_sampling(%struct.sock* %21, %struct.rate_sample* %6)
  br label %23

23:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.bbr* @inet_csk_ca(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bbr_lt_bw_sampling(%struct.sock*, %struct.rate_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
