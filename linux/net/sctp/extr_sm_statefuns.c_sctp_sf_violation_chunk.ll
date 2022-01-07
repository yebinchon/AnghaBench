; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }

@sctp_sf_violation_chunk.err_str = internal constant [39 x i8] c"The following chunk violates protocol:\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*)* @sctp_sf_violation_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_violation_chunk(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %14, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %16 = icmp ne %struct.sctp_association* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %6
  %18 = load %struct.net*, %struct.net** %9, align 8
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %23 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sctp_sf_violation(%struct.net* %18, %struct.sctp_endpoint* %19, %struct.sctp_association* %20, i32 %24, i8* %21, %struct.sctp_cmd_seq* %22)
  store i32 %25, i32* %7, align 4
  br label %33

26:                                               ; preds = %6
  %27 = load %struct.net*, %struct.net** %9, align 8
  %28 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %29 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %32 = call i32 @sctp_sf_abort_violation(%struct.net* %27, %struct.sctp_endpoint* %28, %struct.sctp_association* %29, i8* %30, %struct.sctp_cmd_seq* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @sctp_sf_violation_chunk.err_str, i64 0, i64 0), i32 39)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %26, %17
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @sctp_sf_violation(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_abort_violation(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i8*, %struct.sctp_cmd_seq*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
