; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_init_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditfilter.c_audit_init_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.audit_field* }
%struct.audit_field = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.audit_entry* (i32)* @audit_init_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.audit_entry* @audit_init_entry(i32 %0) #0 {
  %2 = alloca %struct.audit_entry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.audit_entry*, align 8
  %5 = alloca %struct.audit_field*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.audit_entry* @kzalloc(i32 8, i32 %6)
  store %struct.audit_entry* %7, %struct.audit_entry** %4, align 8
  %8 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %9 = icmp ne %struct.audit_entry* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.audit_entry* null, %struct.audit_entry** %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.audit_field* @kcalloc(i32 %16, i32 4, i32 %17)
  store %struct.audit_field* %18, %struct.audit_field** %5, align 8
  %19 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %20 = icmp ne %struct.audit_field* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %27 = call i32 @kfree(%struct.audit_entry* %26)
  store %struct.audit_entry* null, %struct.audit_entry** %2, align 8
  br label %34

28:                                               ; preds = %15
  %29 = load %struct.audit_field*, %struct.audit_field** %5, align 8
  %30 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  %31 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.audit_field* %29, %struct.audit_field** %32, align 8
  %33 = load %struct.audit_entry*, %struct.audit_entry** %4, align 8
  store %struct.audit_entry* %33, %struct.audit_entry** %2, align 8
  br label %34

34:                                               ; preds = %28, %25, %14
  %35 = load %struct.audit_entry*, %struct.audit_entry** %2, align 8
  ret %struct.audit_entry* %35
}

declare dso_local %struct.audit_entry* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.audit_field* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.audit_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
