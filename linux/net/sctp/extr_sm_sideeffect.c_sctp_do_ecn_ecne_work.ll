; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_do_ecn_ecne_work.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_sideeffect.c_sctp_do_ecn_ecne_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_transport = type { i32 }

@SCTP_LOWER_CWND_ECNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, i32, %struct.sctp_chunk*)* @sctp_do_ecn_ecne_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_do_ecn_ecne_work(%struct.sctp_association* %0, i32 %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TSN_lt(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.sctp_transport* @sctp_assoc_lookup_tsn(%struct.sctp_association* %16, i32 %17)
  store %struct.sctp_transport* %18, %struct.sctp_transport** %8, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %20 = icmp ne %struct.sctp_transport* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %23 = load i32, i32* @SCTP_LOWER_CWND_ECNE, align 4
  %24 = call i32 @sctp_transport_lower_cwnd(%struct.sctp_transport* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %31 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %35 = call %struct.sctp_chunk* @sctp_make_cwr(%struct.sctp_association* %30, i32 %33, %struct.sctp_chunk* %34)
  store %struct.sctp_chunk* %35, %struct.sctp_chunk** %7, align 8
  %36 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %36
}

declare dso_local i64 @TSN_lt(i32, i32) #1

declare dso_local %struct.sctp_transport* @sctp_assoc_lookup_tsn(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_transport_lower_cwnd(%struct.sctp_transport*, i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_cwr(%struct.sctp_association*, i32, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
