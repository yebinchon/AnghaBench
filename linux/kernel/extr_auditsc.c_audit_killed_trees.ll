; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_killed_trees.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c_audit_killed_trees.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.audit_context = type { %struct.list_head, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.list_head* @audit_killed_trees() #0 {
  %1 = alloca %struct.list_head*, align 8
  %2 = alloca %struct.audit_context*, align 8
  %3 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %3, %struct.audit_context** %2, align 8
  %4 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %5 = icmp ne %struct.audit_context* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %8 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %6, %0
  %13 = phi i1 [ true, %0 ], [ %11, %6 ]
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store %struct.list_head* null, %struct.list_head** %1, align 8
  br label %21

18:                                               ; preds = %12
  %19 = load %struct.audit_context*, %struct.audit_context** %2, align 8
  %20 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %19, i32 0, i32 0
  store %struct.list_head* %20, %struct.list_head** %1, align 8
  br label %21

21:                                               ; preds = %18, %17
  %22 = load %struct.list_head*, %struct.list_head** %1, align 8
  ret %struct.list_head* %22
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
