; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_unk_param.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_make_chunk.c_sctp_process_unk_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sctp_chunk = type { i32 }
%union.sctp_params = type { %struct.TYPE_2__* }

@SCTP_IERROR_NO_ERROR = common dso_local global i32 0, align 4
@SCTP_PARAM_ACTION_MASK = common dso_local global i32 0, align 4
@SCTP_IERROR_ERROR = common dso_local global i32 0, align 4
@SCTP_IERROR_NOMEM = common dso_local global i32 0, align 4
@SCTP_ERROR_UNKNOWN_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.TYPE_2__*, %struct.sctp_chunk*, %struct.sctp_chunk**)* @sctp_process_unk_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_process_unk_param(%struct.sctp_association* %0, %struct.TYPE_2__* %1, %struct.sctp_chunk* %2, %struct.sctp_chunk** %3) #0 {
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
  %11 = load i32, i32* @SCTP_IERROR_NO_ERROR, align 4
  store i32 %11, i32* %9, align 4
  %12 = bitcast %union.sctp_params* %5 to %struct.TYPE_2__**
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SCTP_PARAM_ACTION_MASK, align 4
  %17 = and i32 %15, %16
  switch i32 %17, label %61 [
    i32 131, label %18
    i32 129, label %20
    i32 130, label %21
    i32 128, label %23
  ]

18:                                               ; preds = %4
  %19 = load i32, i32* @SCTP_IERROR_ERROR, align 4
  store i32 %19, i32* %9, align 4
  br label %62

20:                                               ; preds = %4
  br label %62

21:                                               ; preds = %4
  %22 = load i32, i32* @SCTP_IERROR_ERROR, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %4, %21
  %24 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %24, align 8
  %26 = icmp ne %struct.sctp_chunk* %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %30 = call %struct.sctp_chunk* @sctp_make_op_error_limited(%struct.sctp_association* %28, %struct.sctp_chunk* %29)
  %31 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  store %struct.sctp_chunk* %30, %struct.sctp_chunk** %31, align 8
  %32 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %33 = load %struct.sctp_chunk*, %struct.sctp_chunk** %32, align 8
  %34 = icmp ne %struct.sctp_chunk* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @SCTP_IERROR_NOMEM, align 4
  store i32 %36, i32* %9, align 4
  br label %62

37:                                               ; preds = %27
  br label %38

38:                                               ; preds = %37, %23
  %39 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %39, align 8
  %41 = load i32, i32* @SCTP_ERROR_UNKNOWN_PARAM, align 4
  %42 = bitcast %union.sctp_params* %5 to %struct.TYPE_2__**
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ntohs(i32 %45)
  %47 = call i32 @sctp_init_cause(%struct.sctp_chunk* %40, i32 %41, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %38
  %50 = load %struct.sctp_chunk**, %struct.sctp_chunk*** %8, align 8
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %50, align 8
  %52 = bitcast %union.sctp_params* %5 to %struct.TYPE_2__**
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ntohs(i32 %55)
  %57 = bitcast %union.sctp_params* %5 to i32*
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %51, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %49, %38
  br label %62

61:                                               ; preds = %4
  br label %62

62:                                               ; preds = %61, %60, %35, %20, %18
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local %struct.sctp_chunk* @sctp_make_op_error_limited(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
