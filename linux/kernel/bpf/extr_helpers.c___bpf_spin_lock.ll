; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_helpers.c___bpf_spin_lock.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_helpers.c___bpf_spin_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_spin_lock = type { i32 }

@VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_spin_lock*)* @__bpf_spin_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__bpf_spin_lock(%struct.bpf_spin_lock* %0) #0 {
  %2 = alloca %struct.bpf_spin_lock*, align 8
  %3 = alloca i32*, align 8
  store %struct.bpf_spin_lock* %0, %struct.bpf_spin_lock** %2, align 8
  %4 = load %struct.bpf_spin_lock*, %struct.bpf_spin_lock** %2, align 8
  %5 = bitcast %struct.bpf_spin_lock* %4 to i8*
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = call i32 @BUILD_BUG_ON(i32 0)
  br label %8

8:                                                ; preds = %15, %1
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* @VAL, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @atomic_cond_read_relaxed(i32* %9, i32 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @atomic_xchg(i32* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %15
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @atomic_cond_read_relaxed(i32*, i32) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
