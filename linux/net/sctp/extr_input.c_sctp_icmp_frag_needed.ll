; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_icmp_frag_needed.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_input.c_sctp_icmp_frag_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_association = type { i32, i32 }
%struct.sctp_transport = type { i64, i32, i32, i32 }

@SPP_PMTUD_ENABLE = common dso_local global i32 0, align 4
@SCTP_RTXR_PMTUD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_icmp_frag_needed(%struct.sock* %0, %struct.sctp_association* %1, %struct.sctp_transport* %2, i64 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %10 = icmp ne %struct.sctp_transport* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %4
  br label %53

18:                                               ; preds = %11
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = call i64 @sock_owned_by_user(%struct.sock* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %24 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %23, i32 0, i32 3
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @atomic_set(i32* %24, i64 %25)
  %27 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 1
  store i32 1, i32* %30, align 8
  br label %53

31:                                               ; preds = %18
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %33 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SPP_PMTUD_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %53

39:                                               ; preds = %31
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @sctp_transport_update_pmtu(%struct.sctp_transport* %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %53

45:                                               ; preds = %39
  %46 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %47 = call i32 @sctp_assoc_sync_pmtu(%struct.sctp_association* %46)
  %48 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 1
  %50 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %51 = load i32, i32* @SCTP_RTXR_PMTUD, align 4
  %52 = call i32 @sctp_retransmit(i32* %49, %struct.sctp_transport* %50, i32 %51)
  br label %53

53:                                               ; preds = %45, %44, %38, %22, %17
  ret void
}

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @sctp_transport_update_pmtu(%struct.sctp_transport*, i64) #1

declare dso_local i32 @sctp_assoc_sync_pmtu(%struct.sctp_association*) #1

declare dso_local i32 @sctp_retransmit(i32*, %struct.sctp_transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
