; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_hn_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_hn_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%union.sctp_params = type { %struct.TYPE_2__* }

@SCTP_ERROR_DNS_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.TYPE_2__*, %struct.sctp_chunk*, %struct.sctp_chunk**)* @sctp_process_hn_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_process_hn_param(%struct.sctp_association* %0, %struct.TYPE_2__* %1, %struct.sctp_chunk* %2, %struct.sctp_chunk** %3) #0 {
  %5 = alloca %union.sctp_params, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_chunk**, align 8
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %5, i32 0, i32 0
  store %struct.TYPE_2__* %1, %struct.TYPE_2__** %10, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %7, align 8
  store %struct.sctp_chunk** %3, %struct.sctp_chunk*** %8, align 8
  %11 = bitcast %union.sctp_params* %5 to %struct.TYPE_2__**
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %18 = icmp ne %struct.sctp_chunk* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %22 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %26 = load i32, i32* @SCTP_ERROR_DNS_FAILED, align 4
  %27 = bitcast %union.sctp_params* %5 to i32*
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %24, %struct.sctp_chunk* %25, i32 %26, i32 %28, i32 %29, i32 0)
  %31 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  store %struct.sctp_chunk* %30, %struct.sctp_chunk** %31, align 8
  ret i32 0
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
