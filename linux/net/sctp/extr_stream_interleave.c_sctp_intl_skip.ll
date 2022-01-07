; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_skip.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sctp_stream }
%struct.sctp_stream = type { i32 }
%struct.sctp_stream_in = type { i64, i64, i32 }

@SCTP_FTSN_U_BIT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, i32, i32, i32)* @sctp_intl_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_intl_skip(%struct.sctp_ulpq* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_ulpq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sctp_stream_in*, align 8
  %10 = alloca %struct.sctp_stream*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.sctp_stream_in* @sctp_stream_in(%struct.sctp_stream* %14, i32 %15)
  store %struct.sctp_stream_in* %16, %struct.sctp_stream_in** %9, align 8
  %17 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.sctp_stream* %20, %struct.sctp_stream** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SCTP_FTSN_U_BIT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %4
  %26 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %9, align 8
  %27 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %9, align 8
  %32 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @MID_lt(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %9, align 8
  %39 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq* %40, i32 %41, i32 %42, i32 1, i32 %43)
  br label %45

45:                                               ; preds = %37, %30, %25
  br label %77

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.sctp_stream*, %struct.sctp_stream** %10, align 8
  %49 = load i32, i32* @in, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @sctp_mid_peek(%struct.sctp_stream* %48, i32 %49, i32 %50)
  %52 = call i64 @MID_lt(i32 %47, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %77

55:                                               ; preds = %46
  %56 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %9, align 8
  %57 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %9, align 8
  %62 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq* %63, i32 %64, i32 %65, i32 0, i32 %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.sctp_stream*, %struct.sctp_stream** %10, align 8
  %70 = load i32, i32* @in, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @sctp_mid_skip(%struct.sctp_stream* %69, i32 %70, i32 %71, i32 %72)
  %74 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @sctp_intl_reap_ordered(%struct.sctp_ulpq* %74, i32 %75)
  br label %77

77:                                               ; preds = %68, %54, %45
  ret void
}

declare dso_local %struct.sctp_stream_in* @sctp_stream_in(%struct.sctp_stream*, i32) #1

declare dso_local i64 @MID_lt(i32, i32) #1

declare dso_local i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq*, i32, i32, i32, i32) #1

declare dso_local i32 @sctp_mid_peek(%struct.sctp_stream*, i32, i32) #1

declare dso_local i32 @sctp_mid_skip(%struct.sctp_stream*, i32, i32, i32) #1

declare dso_local i32 @sctp_intl_reap_ordered(%struct.sctp_ulpq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
