; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reset_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reset_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.sctp_chunk*, i32, %struct.TYPE_3__, %struct.sctp_stream }
%struct.sctp_chunk = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_stream = type { i64 }
%struct.TYPE_4__ = type { i32 }

@SCTP_ENABLE_RESET_ASSOC_REQ = common dso_local global i32 0, align 4
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_STREAM_CLOSED = common dso_local global i32 0, align 4
@SCTP_STREAM_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_send_reset_assoc(%struct.sctp_association* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_stream*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 5
  store %struct.sctp_stream* %9, %struct.sctp_stream** %4, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %5, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SCTP_ENABLE_RESET_ASSOC_REQ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* @ENOPROTOOPT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %15
  %26 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINPROGRESS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %105

33:                                               ; preds = %25
  %34 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 3
  %36 = call i32 @sctp_outq_is_empty(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %105

41:                                               ; preds = %33
  %42 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %43 = call %struct.sctp_chunk* @sctp_make_strreset_tsnreq(%struct.sctp_association* %42)
  store %struct.sctp_chunk* %43, %struct.sctp_chunk** %5, align 8
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %45 = icmp ne %struct.sctp_chunk* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %105

49:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i32, i32* @SCTP_STREAM_CLOSED, align 4
  %58 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %58, i64 %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %7, align 8
  br label %50

65:                                               ; preds = %50
  %66 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %67 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %68 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %67, i32 0, i32 2
  store %struct.sctp_chunk* %66, %struct.sctp_chunk** %68, align 8
  %69 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 2
  %71 = load %struct.sctp_chunk*, %struct.sctp_chunk** %70, align 8
  %72 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %71)
  %73 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %74 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %75 = call i32 @sctp_send_reconf(%struct.sctp_association* %73, %struct.sctp_chunk* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %65
  %79 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 2
  %81 = load %struct.sctp_chunk*, %struct.sctp_chunk** %80, align 8
  %82 = call i32 @sctp_chunk_put(%struct.sctp_chunk* %81)
  %83 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %84 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %83, i32 0, i32 2
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %84, align 8
  store i64 0, i64* %7, align 8
  br label %85

85:                                               ; preds = %97, %78
  %86 = load i64, i64* %7, align 8
  %87 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %88 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %85
  %92 = load i32, i32* @SCTP_STREAM_OPEN, align 4
  %93 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream* %93, i64 %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  br label %97

97:                                               ; preds = %91
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %7, align 8
  br label %85

100:                                              ; preds = %85
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %105

102:                                              ; preds = %65
  %103 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %104 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %100, %46, %38, %30, %22
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @sctp_outq_is_empty(i32*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_strreset_tsnreq(%struct.sctp_association*) #1

declare dso_local %struct.TYPE_4__* @SCTP_SO(%struct.sctp_stream*, i64) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_send_reconf(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_put(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
