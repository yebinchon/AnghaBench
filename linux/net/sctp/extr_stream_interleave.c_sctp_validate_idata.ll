; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_validate_idata.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_interleave.c_sctp_validate_idata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_5__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.sctp_stream }
%struct.sctp_stream = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@SCTP_CID_I_DATA = common dso_local global i64 0, align 8
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_chunk*)* @sctp_validate_idata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_validate_idata(%struct.sctp_chunk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %3, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SCTP_CID_I_DATA, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %48

25:                                               ; preds = %15
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.sctp_stream* %29, %struct.sctp_stream** %4, align 8
  %30 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %31 = call i32 @sctp_chunk_stream_no(%struct.sctp_chunk* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %33 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %41 = load i32, i32* @in, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sctp_mid_peek(%struct.sctp_stream* %40, i32 %41, i32 %42)
  %44 = call i32 @MID_lt(i32 %39, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %25, %24, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @sctp_chunk_stream_no(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @MID_lt(i32, i32) #1

declare dso_local i32 @sctp_mid_peek(%struct.sctp_stream*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
