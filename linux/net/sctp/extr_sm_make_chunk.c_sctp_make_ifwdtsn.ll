; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_ifwdtsn.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_ifwdtsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_ifwdtsn_skip = type { i32 }
%struct.sctp_ifwdtsn_hdr = type { i32 }

@SCTP_CID_I_FWD_TSN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_ifwdtsn(%struct.sctp_association* %0, i32 %1, i64 %2, %struct.sctp_ifwdtsn_skip* %3) #0 {
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_ifwdtsn_skip*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_ifwdtsn_hdr, align 4
  %12 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.sctp_ifwdtsn_skip* %3, %struct.sctp_ifwdtsn_skip** %9, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %10, align 8
  %13 = load i64, i64* %8, align 8
  %14 = add i64 %13, 1
  %15 = mul i64 %14, 4
  store i64 %15, i64* %12, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %17 = load i32, i32* @SCTP_CID_I_FWD_TSN, align 4
  %18 = load i64, i64* %12, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %16, i32 %17, i32 0, i64 %18, i32 %19)
  store %struct.sctp_chunk* %20, %struct.sctp_chunk** %10, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %22 = icmp ne %struct.sctp_chunk* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %5, align 8
  br label %40

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = getelementptr inbounds %struct.sctp_ifwdtsn_hdr, %struct.sctp_ifwdtsn_hdr* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %29 = bitcast %struct.sctp_ifwdtsn_hdr* %11 to %struct.sctp_ifwdtsn_skip*
  %30 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %28, i64 4, %struct.sctp_ifwdtsn_skip* %29)
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %32 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %35 = load i64, i64* %8, align 8
  %36 = mul i64 %35, 4
  %37 = load %struct.sctp_ifwdtsn_skip*, %struct.sctp_ifwdtsn_skip** %9, align 8
  %38 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %34, i64 %36, %struct.sctp_ifwdtsn_skip* %37)
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %39, %struct.sctp_chunk** %5, align 8
  br label %40

40:                                               ; preds = %24, %23
  %41 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %41
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i64, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i64, %struct.sctp_ifwdtsn_skip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
