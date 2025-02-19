; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_inv_mandatory.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_inv_mandatory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_ERROR_INV_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.sctp_chunk*, %struct.sctp_chunk**)* @sctp_process_inv_mandatory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_process_inv_mandatory(%struct.sctp_association* %0, %struct.sctp_chunk* %1, %struct.sctp_chunk** %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_chunk**, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store %struct.sctp_chunk** %2, %struct.sctp_chunk*** %6, align 8
  %7 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %6, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %9 = icmp ne %struct.sctp_chunk* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %13 = call %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %11, %struct.sctp_chunk* %12, i32 0)
  %14 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %6, align 8
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %14, align 8
  br label %15

15:                                               ; preds = %10, %3
  %16 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %6, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %18 = icmp ne %struct.sctp_chunk* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %6, align 8
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %20, align 8
  %22 = load i32, i32* @SCTP_ERROR_INV_PARAM, align 4
  %23 = call i32 @sctp_init_cause(%struct.sctp_chunk* %21, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %15
  ret i32 0
}

declare dso_local %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
