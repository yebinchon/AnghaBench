; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_clear.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_stream_clear(%struct.sctp_stream* %0) #0 {
  %2 = alloca %struct.sctp_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.sctp_stream* %0, %struct.sctp_stream** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_3__* @SCTP_SO(%struct.sctp_stream* %11, i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.TYPE_3__* @SCTP_SO(%struct.sctp_stream* %15, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %34, %22
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load %struct.sctp_stream*, %struct.sctp_stream** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.TYPE_4__* @SCTP_SI(%struct.sctp_stream* %30, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %23

37:                                               ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_3__* @SCTP_SO(%struct.sctp_stream*, i32) #1

declare dso_local %struct.TYPE_4__* @SCTP_SI(%struct.sctp_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
