; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_verifier_remove_insns.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_verifier_remove_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__*, %struct.bpf_insn_aux_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bpf_insn_aux_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32)* @verifier_remove_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verifier_remove_insns(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn_aux_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %12 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %11, i32 0, i32 1
  %13 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %12, align 8
  store %struct.bpf_insn_aux_data* %13, %struct.bpf_insn_aux_data** %8, align 8
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bpf_prog_is_dev_bound(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bpf_prog_offload_remove_insns(%struct.bpf_verifier_env* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @bpf_remove_insns(%struct.TYPE_2__* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %81

42:                                               ; preds = %31
  %43 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @adjust_subprog_starts_after_remove(%struct.bpf_verifier_env* %43, i32 %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %81

51:                                               ; preds = %42
  %52 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @bpf_adj_linfo_after_remove(%struct.bpf_verifier_env* %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %81

60:                                               ; preds = %51
  %61 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %61, i64 %63
  %65 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %8, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %65, i64 %67
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %68, i64 %70
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = sub i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memmove(%struct.bpf_insn_aux_data* %64, %struct.bpf_insn_aux_data* %71, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %60, %58, %49, %40
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @bpf_prog_is_dev_bound(i32) #1

declare dso_local i32 @bpf_prog_offload_remove_insns(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i32 @bpf_remove_insns(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @adjust_subprog_starts_after_remove(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i32 @bpf_adj_linfo_after_remove(%struct.bpf_verifier_env*, i32, i32) #1

declare dso_local i32 @memmove(%struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
