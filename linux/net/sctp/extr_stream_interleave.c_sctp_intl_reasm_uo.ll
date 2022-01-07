; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_reasm_uo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_intl_reasm_uo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_ulpevent = type { i32, i64, i64, i32 }
%struct.sctp_stream_in = type { i64, i64, i64 }

@SCTP_DATA_NOT_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_FRAG_MASK = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (%struct.sctp_ulpq*, %struct.sctp_ulpevent*)* @sctp_intl_reasm_uo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_intl_reasm_uo(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca %struct.sctp_stream_in*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  %8 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %9 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SCTP_DATA_FRAG_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_EOR, align 4
  %17 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* %21, %struct.sctp_ulpevent** %3, align 8
  br label %67

22:                                               ; preds = %2
  %23 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %24 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %25 = call i32 @sctp_intl_store_reasm_uo(%struct.sctp_ulpq* %23, %struct.sctp_ulpevent* %24)
  %26 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %27 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %31 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.sctp_stream_in* @sctp_stream_in(i32* %29, i32 %32)
  store %struct.sctp_stream_in* %33, %struct.sctp_stream_in** %7, align 8
  %34 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %22
  %39 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %40 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %43 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %48 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.sctp_stream_in*, %struct.sctp_stream_in** %7, align 8
  %51 = getelementptr inbounds %struct.sctp_stream_in, %struct.sctp_stream_in* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %56 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %57 = call %struct.sctp_ulpevent* @sctp_intl_retrieve_partial_uo(%struct.sctp_ulpq* %55, %struct.sctp_ulpevent* %56)
  store %struct.sctp_ulpevent* %57, %struct.sctp_ulpevent** %6, align 8
  br label %58

58:                                               ; preds = %54, %46, %38, %22
  %59 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  %60 = icmp ne %struct.sctp_ulpevent* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %63 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %64 = call %struct.sctp_ulpevent* @sctp_intl_retrieve_reassembled_uo(%struct.sctp_ulpq* %62, %struct.sctp_ulpevent* %63)
  store %struct.sctp_ulpevent* %64, %struct.sctp_ulpevent** %6, align 8
  br label %65

65:                                               ; preds = %61, %58
  %66 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  store %struct.sctp_ulpevent* %66, %struct.sctp_ulpevent** %3, align 8
  br label %67

67:                                               ; preds = %65, %15
  %68 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  ret %struct.sctp_ulpevent* %68
}

declare dso_local i32 @sctp_intl_store_reasm_uo(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_stream_in* @sctp_stream_in(i32*, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_retrieve_partial_uo(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_intl_retrieve_reassembled_uo(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
