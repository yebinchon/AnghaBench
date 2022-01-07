; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_bprm.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i32 }
%struct.audit_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AUDIT_EXECVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__audit_bprm(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  %3 = alloca %struct.audit_context*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %4 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %4, %struct.audit_context** %3, align 8
  %5 = load i32, i32* @AUDIT_EXECVE, align 4
  %6 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %7 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %9 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.audit_context*, %struct.audit_context** %3, align 8
  %12 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  ret void
}

declare dso_local %struct.audit_context* @audit_context(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
