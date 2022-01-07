; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_coerce_reg_to_size.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_coerce_reg_to_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*, i32)* @coerce_reg_to_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coerce_reg_to_size(%struct.bpf_reg_state* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_reg_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @tnum_cast(i32 %8, i32 %9)
  %11 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 %13, 8
  %15 = shl i32 1, %14
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %33 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %30
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %3, align 8
  %57 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @tnum_cast(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
