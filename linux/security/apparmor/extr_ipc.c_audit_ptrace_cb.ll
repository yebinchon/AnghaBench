; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_ptrace_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_ipc.c_audit_ptrace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@AA_PTRACE_PERM_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c" requested_mask=\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" denied_mask=\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" peer=\00", align 1
@FLAGS_NONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i8*)* @audit_ptrace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_ptrace_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AA_PTRACE_PERM_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %2
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %17 = call i32 @audit_log_format(%struct.audit_buffer* %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %19 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %20 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @audit_ptrace_mask(%struct.audit_buffer* %18, i32 %22)
  %24 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %25 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AA_PTRACE_PERM_MASK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %15
  %32 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %33 = call i32 @audit_log_format(%struct.audit_buffer* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %35 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %36 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @audit_ptrace_mask(%struct.audit_buffer* %34, i32 %38)
  br label %40

40:                                               ; preds = %31, %15
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %43 = call i32 @audit_log_format(%struct.audit_buffer* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %45 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %46 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @labels_ns(i32 %48)
  %50 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %51 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @FLAGS_NONE, align 4
  %55 = load i32, i32* @GFP_ATOMIC, align 4
  %56 = call i32 @aa_label_xaudit(%struct.audit_buffer* %44, i32 %49, i32 %53, i32 %54, i32 %55)
  ret void
}

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

declare dso_local i32 @audit_ptrace_mask(%struct.audit_buffer*, i32) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, i32, i32, i32, i32) #1

declare dso_local i32 @labels_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
