; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_fwdtsn.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_make_fwdtsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_fwdtsn_skip = type { i32, i32, i32 }
%struct.sctp_fwdtsn_hdr = type { i32, i32, i32 }

@SCTP_CID_FWD_TSN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_fwdtsn(%struct.sctp_association* %0, i32 %1, i64 %2, %struct.sctp_fwdtsn_skip* %3) #0 {
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_fwdtsn_skip*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_fwdtsn_hdr, align 4
  %12 = alloca %struct.sctp_fwdtsn_skip, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.sctp_fwdtsn_skip* %3, %struct.sctp_fwdtsn_skip** %9, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 4
  store i64 %17, i64* %13, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %19 = load i32, i32* @SCTP_CID_FWD_TSN, align 4
  %20 = load i64, i64* %13, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association* %18, i32 %19, i32 0, i64 %20, i32 %21)
  store %struct.sctp_chunk* %22, %struct.sctp_chunk** %10, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %24 = icmp ne %struct.sctp_chunk* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %5, align 8
  br label %63

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = getelementptr inbounds %struct.sctp_fwdtsn_hdr, %struct.sctp_fwdtsn_hdr* %11, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %31 = bitcast %struct.sctp_fwdtsn_hdr* %11 to %struct.sctp_fwdtsn_skip*
  %32 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %30, i32 12, %struct.sctp_fwdtsn_skip* %31)
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %34 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %58, %26
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load %struct.sctp_fwdtsn_skip*, %struct.sctp_fwdtsn_skip** %9, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %42, i64 %44
  %46 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sctp_fwdtsn_skip*, %struct.sctp_fwdtsn_skip** %9, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %49, i64 %51
  %53 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %12, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %57 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %56, i32 12, %struct.sctp_fwdtsn_skip* %12)
  br label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %62, %struct.sctp_chunk** %5, align 8
  br label %63

63:                                               ; preds = %61, %25
  %64 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %64
}

declare dso_local %struct.sctp_chunk* @sctp_make_control(%struct.sctp_association*, i32, i32, i64, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_fwdtsn_skip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
