; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_cr4_cpuid_sync_test.c_guest_code.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_cr4_cpuid_sync_test.c_guest_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_CR4_OSXSAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @guest_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guest_code() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @get_cr4()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @X86_CR4_OSXSAVE, align 4
  %4 = load i32, i32* %1, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @set_cr4(i32 %6)
  %8 = call i32 (...) @cr4_cpuid_is_sync()
  %9 = call i32 @GUEST_ASSERT(i32 %8)
  %10 = call i32 @GUEST_SYNC(i32 0)
  %11 = call i32 (...) @cr4_cpuid_is_sync()
  %12 = call i32 @GUEST_ASSERT(i32 %11)
  %13 = call i32 (...) @GUEST_DONE()
  ret void
}

declare dso_local i32 @get_cr4(...) #1

declare dso_local i32 @set_cr4(i32) #1

declare dso_local i32 @GUEST_ASSERT(i32) #1

declare dso_local i32 @cr4_cpuid_is_sync(...) #1

declare dso_local i32 @GUEST_SYNC(i32) #1

declare dso_local i32 @GUEST_DONE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
