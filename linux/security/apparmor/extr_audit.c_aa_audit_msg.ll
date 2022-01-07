; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_msg.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_audit_data = type { i32 }
%struct.audit_buffer = type opaque
%struct.TYPE_2__ = type { i32 }
%struct.audit_buffer.0 = type opaque

@audit_pre = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_audit_msg(i32 %0, %struct.common_audit_data* %1, void (%struct.audit_buffer*, i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.common_audit_data*, align 8
  %6 = alloca void (%struct.audit_buffer*, i8*)*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.common_audit_data* %1, %struct.common_audit_data** %5, align 8
  store void (%struct.audit_buffer*, i8*)* %2, void (%struct.audit_buffer*, i8*)** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %9 = call %struct.TYPE_2__* @aad(%struct.common_audit_data* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %12 = load i32, i32* @audit_pre, align 4
  %13 = load void (%struct.audit_buffer*, i8*)*, void (%struct.audit_buffer*, i8*)** %6, align 8
  %14 = bitcast void (%struct.audit_buffer*, i8*)* %13 to void (%struct.audit_buffer.0*, i8*)*
  %15 = call i32 @common_lsm_audit(%struct.common_audit_data* %11, i32 %12, void (%struct.audit_buffer.0*, i8*)* %14)
  ret void
}

declare dso_local %struct.TYPE_2__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @common_lsm_audit(%struct.common_audit_data*, i32, void (%struct.audit_buffer.0*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
