; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_notify.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_mq_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigevent = type { i64 }
%struct.audit_context = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@AUDIT_MQ_NOTIFY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_mq_notify(i32 %0, %struct.sigevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigevent*, align 8
  %5 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.sigevent* %1, %struct.sigevent** %4, align 8
  %6 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %6, %struct.audit_context** %5, align 8
  %7 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %8 = icmp ne %struct.sigevent* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.sigevent*, %struct.sigevent** %4, align 8
  %11 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %14 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 %12, i64* %15, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %18 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @AUDIT_MQ_NOTIFY, align 4
  %26 = load %struct.audit_context*, %struct.audit_context** %5, align 8
  %27 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
