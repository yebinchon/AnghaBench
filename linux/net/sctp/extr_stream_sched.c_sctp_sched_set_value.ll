; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream_sched.c_sctp_sched_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i64, i64, i32)* }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sched_set_value(%struct.sctp_association* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %11, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %51

20:                                               ; preds = %4
  %21 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call %struct.TYPE_10__* @SCTP_SO(%struct.TYPE_9__* %22, i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %20
  %29 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @sctp_stream_init_ext(%struct.TYPE_9__* %30, i64 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %51

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_9__*, i64, i64, i32)*, i32 (%struct.TYPE_9__*, i64, i64, i32)** %43, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 %44(%struct.TYPE_9__* %46, i64 %47, i64 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %38, %35, %17
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_10__* @SCTP_SO(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @sctp_stream_init_ext(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
