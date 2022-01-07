; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_update_rx_mux_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_update_rx_mux_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcm_mux = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.kcm_psock = type { %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kcm_mux*, %struct.kcm_psock*)* @kcm_update_rx_mux_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kcm_update_rx_mux_stats(%struct.kcm_mux* %0, %struct.kcm_psock* %1) #0 {
  %3 = alloca %struct.kcm_mux*, align 8
  %4 = alloca %struct.kcm_psock*, align 8
  store %struct.kcm_mux* %0, %struct.kcm_mux** %3, align 8
  store %struct.kcm_psock* %1, %struct.kcm_psock** %4, align 8
  %5 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %6 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %10 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %15 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = call i32 @STRP_STATS_ADD(i32 %8, i64 %17)
  %19 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %20 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %25 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = load %struct.kcm_mux*, %struct.kcm_mux** %3, align 8
  %29 = getelementptr inbounds %struct.kcm_mux, %struct.kcm_mux* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %27
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %36 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %41 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %43 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.kcm_psock*, %struct.kcm_psock** %4, align 8
  %48 = getelementptr inbounds %struct.kcm_psock, %struct.kcm_psock* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  ret void
}

declare dso_local i32 @STRP_STATS_ADD(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
