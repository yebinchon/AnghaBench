; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_abort_pd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_abort_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sctp_stream }
%struct.sctp_stream = type { i64 }
%struct.sctp_stream_in = type { i32, i64, i32, i64 }

@in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ulpq*, i32)* @sctp_intl_abort_pd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_intl_abort_pd(%struct.sctp_ulpq* %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_ulpq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_stream*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_stream_in*, align 8
  %8 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.sctp_stream* %12, %struct.sctp_stream** %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %63, %2
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %13
  %20 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call %struct.sctp_stream_in* @SCTP_SI(%struct.sctp_stream* %20, i64 %21)
  store %struct.sctp_stream_in* %22, %struct.sctp_stream_in** %7, align 8
  %23 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %24 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %19
  %28 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %31 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  %33 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq* %33, i64 %34, i32 %35, i32 1, i32 %36)
  br label %38

38:                                               ; preds = %27, %19
  %39 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %40 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %45 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq* %49, i64 %50, i32 %51, i32 0, i32 %52)
  %54 = load %struct.sctp_stream*, %struct.sctp_stream** %5, align 8
  %55 = load i32, i32* @in, align 4
  %56 = load i64, i64* %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @sctp_mid_skip(%struct.sctp_stream* %54, i32 %55, i64 %56, i32 %57)
  %59 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @sctp_intl_reap_ordered(%struct.sctp_ulpq* %59, i64 %60)
  br label %62

62:                                               ; preds = %43, %38
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %13

66:                                               ; preds = %13
  %67 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %3, align 8
  %68 = call i32 @sctp_ulpq_flush(%struct.sctp_ulpq* %67)
  ret void
}

declare dso_local %struct.sctp_stream_in* @SCTP_SI(%struct.sctp_stream*, i64) #1

declare dso_local i32 @sctp_intl_stream_abort_pd(%struct.sctp_ulpq*, i64, i32, i32, i32) #1

declare dso_local i32 @sctp_mid_skip(%struct.sctp_stream*, i32, i64, i32) #1

declare dso_local i32 @sctp_intl_reap_ordered(%struct.sctp_ulpq*, i64) #1

declare dso_local i32 @sctp_ulpq_flush(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
