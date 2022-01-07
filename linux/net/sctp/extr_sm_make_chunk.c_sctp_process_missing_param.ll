; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_missing_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_missing_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.__sctp_missing = type { i32, i32 }

@SCTP_ERROR_MISS_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, i32, %struct.sctp_chunk*, %struct.sctp_chunk**)* @sctp_process_missing_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_process_missing_param(%struct.sctp_association* %0, i32 %1, %struct.sctp_chunk* %2, %struct.sctp_chunk** %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca %struct.sctp_chunk**, align 8
  %9 = alloca %struct.__sctp_missing, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %7, align 8
  store %struct.sctp_chunk** %3, %struct.sctp_chunk*** %8, align 8
  %11 = call i32 @SCTP_PAD4(i32 8)
  store i32 %11, i32* %10, align 4
  %12 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %14 = icmp ne %struct.sctp_chunk* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %16, %struct.sctp_chunk* %17, i32 %18)
  %20 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  store %struct.sctp_chunk* %19, %struct.sctp_chunk** %20, align 8
  br label %21

21:                                               ; preds = %15, %4
  %22 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %22, align 8
  %24 = icmp ne %struct.sctp_chunk* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = call i32 @htonl(i32 1)
  %27 = getelementptr inbounds %struct.__sctp_missing, %struct.__sctp_missing* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.__sctp_missing, %struct.__sctp_missing* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %30, align 8
  %32 = load i32, i32* @SCTP_ERROR_MISS_PARAM, align 4
  %33 = call i32 @sctp_init_cause(%struct.sctp_chunk* %31, i32 %32, i32 8)
  %34 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %34, align 8
  %36 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %35, i32 8, %struct.__sctp_missing* %9)
  br label %37

37:                                               ; preds = %25, %21
  ret i32 0
}

declare dso_local i32 @SCTP_PAD4(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.__sctp_missing*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
