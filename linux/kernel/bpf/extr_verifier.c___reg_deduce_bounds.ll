; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___reg_deduce_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___reg_deduce_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i64, i64, i64, i64 }

@u64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*)* @__reg_deduce_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__reg_deduce_bounds(%struct.bpf_reg_state* %0) #0 {
  %2 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %2, align 8
  %3 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %4 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @u64, align 4
  %14 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i8* @max_t(i32 %13, i64 %16, i64 %19)
  %21 = ptrtoint i8* %20 to i64
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %23 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %24, i32 0, i32 0
  store i64 %21, i64* %25, align 8
  %26 = load i32, i32* @u64, align 4
  %27 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %28 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %31 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @min_t(i32 %26, i64 %29, i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 1
  store i64 %34, i64* %38, align 8
  br label %88

39:                                               ; preds = %7
  %40 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %41 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %39
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @u64, align 4
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %55 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @min_t(i32 %50, i64 %53, i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %60 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %62 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %61, i32 0, i32 1
  store i64 %58, i64* %62, align 8
  br label %88

63:                                               ; preds = %39
  %64 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %65 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = load i32, i32* @u64, align 4
  %70 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %71 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %74 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i8* @max_t(i32 %69, i64 %72, i64 %75)
  %77 = ptrtoint i8* %76 to i64
  %78 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %79 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %81 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %80, i32 0, i32 0
  store i64 %77, i64* %81, align 8
  %82 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %83 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %2, align 8
  %86 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %68, %63
  br label %88

88:                                               ; preds = %12, %87, %44
  ret void
}

declare dso_local i8* @max_t(i32, i64, i64) #1

declare dso_local i8* @min_t(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
