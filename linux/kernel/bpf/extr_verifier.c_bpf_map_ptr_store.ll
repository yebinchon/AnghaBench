; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_map_ptr_store.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_map_ptr_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_aux_data = type { i64 }
%struct.bpf_map = type { i32 }

@BPF_MAP_PTR_POISON = common dso_local global i64 0, align 8
@BPF_MAP_PTR_UNPRIV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_insn_aux_data*, %struct.bpf_map*, i32)* @bpf_map_ptr_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_map_ptr_store(%struct.bpf_insn_aux_data* %0, %struct.bpf_map* %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_insn_aux_data*, align 8
  %5 = alloca %struct.bpf_map*, align 8
  %6 = alloca i32, align 4
  store %struct.bpf_insn_aux_data* %0, %struct.bpf_insn_aux_data** %4, align 8
  store %struct.bpf_map* %1, %struct.bpf_map** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i64, i64* @BPF_MAP_PTR_POISON, align 8
  %8 = load i64, i64* @BPF_MAP_PTR_UNPRIV, align 8
  %9 = and i64 %7, %8
  %10 = call i32 @BUILD_BUG_ON(i64 %9)
  %11 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %4, align 8
  %12 = call i32 @bpf_map_ptr_unpriv(%struct.bpf_insn_aux_data* %11)
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load %struct.bpf_map*, %struct.bpf_map** %5, align 8
  %16 = ptrtoint %struct.bpf_map* %15 to i64
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @BPF_MAP_PTR_UNPRIV, align 8
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ 0, %21 ]
  %24 = or i64 %16, %23
  %25 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %4, align 8
  %26 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i64) #1

declare dso_local i32 @bpf_map_ptr_unpriv(%struct.bpf_insn_aux_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
