; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_set_loginuid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_set_loginuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@AUDIT_SID_UNSET = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@session_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_set_loginuid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @AUDIT_SID_UNSET, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %9 = call i32 @audit_get_loginuid(%struct.TYPE_4__* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = call i32 @audit_get_sessionid(%struct.TYPE_4__* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @audit_set_loginuid_perm(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @uid_valid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = call i64 @atomic_inc_return(i32* @session_id)
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @AUDIT_SID_UNSET, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = call i64 @atomic_inc_return(i32* @session_id)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %21
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %16
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @audit_log_set_loginuid(i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @audit_get_loginuid(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_get_sessionid(%struct.TYPE_4__*) #1

declare dso_local i32 @audit_set_loginuid_perm(i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_log_set_loginuid(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
