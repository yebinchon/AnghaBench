; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_socketcall.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_socketcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AUDITSC_ARGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDIT_SOCKETCALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__audit_socketcall(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca %struct.audit_context*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %7, %struct.audit_context** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @AUDITSC_ARGS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %10, %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %38

20:                                               ; preds = %14
  %21 = load i32, i32* @AUDIT_SOCKETCALL, align 4
  %22 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %23 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %26 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %29 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64*, i64** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i32 %31, i64* %32, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %20, %17
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
