; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_sendrecv.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_sendrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }
%struct.audit_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.timespec64 }

@AUDIT_MQ_SENDRECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_sendrecv(i32 %0, i64 %1, i32 %2, %struct.timespec64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64*, align 8
  %9 = alloca %struct.audit_context*, align 8
  %10 = alloca %struct.timespec64*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.timespec64* %3, %struct.timespec64** %8, align 8
  %11 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %11, %struct.audit_context** %9, align 8
  %12 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %13 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store %struct.timespec64* %14, %struct.timespec64** %10, align 8
  %15 = load %struct.timespec64*, %struct.timespec64** %8, align 8
  %16 = icmp ne %struct.timespec64* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.timespec64*, %struct.timespec64** %10, align 8
  %19 = load %struct.timespec64*, %struct.timespec64** %8, align 8
  %20 = call i32 @memcpy(%struct.timespec64* %18, %struct.timespec64* %19, i32 4)
  br label %24

21:                                               ; preds = %4
  %22 = load %struct.timespec64*, %struct.timespec64** %10, align 8
  %23 = call i32 @memset(%struct.timespec64* %22, i32 0, i32 4)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %27 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %31 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %35 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load i32, i32* @AUDIT_MQ_SENDRECV, align 4
  %38 = load %struct.audit_context*, %struct.audit_context** %9, align 8
  %39 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i32 @memcpy(%struct.timespec64*, %struct.timespec64*, i32) #1

declare dso_local i32 @memset(%struct.timespec64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
