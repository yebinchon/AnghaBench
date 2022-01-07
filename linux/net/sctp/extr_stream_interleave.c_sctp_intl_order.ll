; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_order.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sctp_stream }
%struct.sctp_stream = type { i32 }
%struct.sctp_ulpevent = type { i64, i32 }

@in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (%struct.sctp_ulpq*, %struct.sctp_ulpevent*)* @sctp_intl_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_intl_order(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %5, align 8
  %8 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.sctp_stream* %11, %struct.sctp_stream** %6, align 8
  %12 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %19 = load i32, i32* @in, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @sctp_mid_peek(%struct.sctp_stream* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %25 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %26 = call i32 @sctp_intl_store_ordered(%struct.sctp_ulpq* %24, %struct.sctp_ulpevent* %25)
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %3, align 8
  br label %36

27:                                               ; preds = %2
  %28 = load %struct.sctp_stream*, %struct.sctp_stream** %6, align 8
  %29 = load i32, i32* @in, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @sctp_mid_next(%struct.sctp_stream* %28, i32 %29, i32 %30)
  %32 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %33 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %34 = call i32 @sctp_intl_retrieve_ordered(%struct.sctp_ulpq* %32, %struct.sctp_ulpevent* %33)
  %35 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* %35, %struct.sctp_ulpevent** %3, align 8
  br label %36

36:                                               ; preds = %27, %23
  %37 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  ret %struct.sctp_ulpevent* %37
}

declare dso_local i64 @sctp_mid_peek(%struct.sctp_stream*, i32, i32) #1

declare dso_local i32 @sctp_intl_store_ordered(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_mid_next(%struct.sctp_stream*, i32, i32) #1

declare dso_local i32 @sctp_intl_retrieve_ordered(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
