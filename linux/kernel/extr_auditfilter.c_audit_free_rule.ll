; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_free_rule.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_free_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.audit_krule }
%struct.audit_krule = type { i32, %struct.audit_entry*, %struct.audit_entry*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_entry*)* @audit_free_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_free_rule(%struct.audit_entry* %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_krule*, align 8
  store %struct.audit_entry* %0, %struct.audit_entry** %2, align 8
  %5 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %6 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %5, i32 0, i32 0
  store %struct.audit_krule* %6, %struct.audit_krule** %4, align 8
  %7 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %8 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %13 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @audit_put_watch(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %18 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %17, i32 0, i32 2
  %19 = load %struct.audit_entry*, %struct.audit_entry** %18, align 8
  %20 = icmp ne %struct.audit_entry* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %36, %21
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %25 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %30 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %29, i32 0, i32 2
  %31 = load %struct.audit_entry*, %struct.audit_entry** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %31, i64 %33
  %35 = call i32 @audit_free_lsm_field(%struct.audit_entry* %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %22

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %42 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %41, i32 0, i32 2
  %43 = load %struct.audit_entry*, %struct.audit_entry** %42, align 8
  %44 = call i32 @kfree(%struct.audit_entry* %43)
  %45 = load %struct.audit_krule*, %struct.audit_krule** %4, align 8
  %46 = getelementptr inbounds %struct.audit_krule, %struct.audit_krule* %45, i32 0, i32 1
  %47 = load %struct.audit_entry*, %struct.audit_entry** %46, align 8
  %48 = call i32 @kfree(%struct.audit_entry* %47)
  %49 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  %50 = call i32 @kfree(%struct.audit_entry* %49)
  ret void
}

declare dso_local i32 @audit_put_watch(i64) #1

declare dso_local i32 @audit_free_lsm_field(%struct.audit_entry*) #1

declare dso_local i32 @kfree(%struct.audit_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
