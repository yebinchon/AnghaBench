; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_curacc.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_access.c_smk_curacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smack_known = type { i32 }
%struct.smk_audit_info = type { i32 }
%struct.task_smack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smk_curacc(%struct.smack_known* %0, i32 %1, %struct.smk_audit_info* %2) #0 {
  %4 = alloca %struct.smack_known*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smk_audit_info*, align 8
  %7 = alloca %struct.task_smack*, align 8
  store %struct.smack_known* %0, %struct.smack_known** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.smk_audit_info* %2, %struct.smk_audit_info** %6, align 8
  %8 = call i32 (...) @current_cred()
  %9 = call %struct.task_smack* @smack_cred(i32 %8)
  store %struct.task_smack* %9, %struct.task_smack** %7, align 8
  %10 = load %struct.task_smack*, %struct.task_smack** %7, align 8
  %11 = load %struct.smack_known*, %struct.smack_known** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.smk_audit_info*, %struct.smk_audit_info** %6, align 8
  %14 = call i32 @smk_tskacc(%struct.task_smack* %10, %struct.smack_known* %11, i32 %12, %struct.smk_audit_info* %13)
  ret i32 %14
}

declare dso_local %struct.task_smack* @smack_cred(i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @smk_tskacc(%struct.task_smack*, %struct.smack_known*, i32, %struct.smk_audit_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
