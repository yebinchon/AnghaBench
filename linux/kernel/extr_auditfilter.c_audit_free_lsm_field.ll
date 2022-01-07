; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_free_lsm_field.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_free_lsm_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_field = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_field*)* @audit_free_lsm_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_free_lsm_field(%struct.audit_field* %0) #0 {
  %2 = alloca %struct.audit_field*, align 8
  store %struct.audit_field* %0, %struct.audit_field** %2, align 8
  %3 = load %struct.audit_field*, %struct.audit_field** %2, align 8
  %4 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %15 [
    i32 128, label %6
    i32 131, label %6
    i32 129, label %6
    i32 130, label %6
    i32 132, label %6
    i32 133, label %6
    i32 135, label %6
    i32 134, label %6
    i32 136, label %6
    i32 137, label %6
  ]

6:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %7 = load %struct.audit_field*, %struct.audit_field** %2, align 8
  %8 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @kfree(i32 %9)
  %11 = load %struct.audit_field*, %struct.audit_field** %2, align 8
  %12 = getelementptr inbounds %struct.audit_field, %struct.audit_field* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @security_audit_rule_free(i32 %13)
  br label %15

15:                                               ; preds = %6, %1
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @security_audit_rule_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
