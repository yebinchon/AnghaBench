; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_smm_test.c_self_smi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_smm_test.c_self_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_BASE_MSR = common dso_local global i64 0, align 8
@APIC_ICR = common dso_local global i32 0, align 4
@APIC_DEST_SELF = common dso_local global i32 0, align 4
@APIC_INT_ASSERT = common dso_local global i32 0, align 4
@APIC_DM_SMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @self_smi() #0 {
  %1 = load i64, i64* @APIC_BASE_MSR, align 8
  %2 = load i32, i32* @APIC_ICR, align 4
  %3 = ashr i32 %2, 4
  %4 = sext i32 %3 to i64
  %5 = add nsw i64 %1, %4
  %6 = load i32, i32* @APIC_DEST_SELF, align 4
  %7 = load i32, i32* @APIC_INT_ASSERT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @APIC_DM_SMI, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @wrmsr(i64 %5, i32 %10)
  ret void
}

declare dso_local i32 @wrmsr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
