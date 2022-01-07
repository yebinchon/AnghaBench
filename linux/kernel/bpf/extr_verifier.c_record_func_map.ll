; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_record_func_map.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_record_func_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map = type { i32, i32 }
%struct.bpf_verifier_env = type { %struct.bpf_insn_aux_data* }
%struct.bpf_insn_aux_data = type { i32 }
%struct.bpf_call_arg_meta = type { %struct.bpf_map* }

@BPF_FUNC_tail_call = common dso_local global i32 0, align 4
@BPF_FUNC_map_lookup_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_update_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_delete_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_push_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_pop_elem = common dso_local global i32 0, align 4
@BPF_FUNC_map_peek_elem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"kernel subsystem misconfigured verifier\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BPF_F_RDONLY_PROG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"write into map forbidden\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@BPF_MAP_PTR_POISON = common dso_local global %struct.bpf_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_call_arg_meta*, i32, i32)* @record_func_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_func_map(%struct.bpf_verifier_env* %0, %struct.bpf_call_arg_meta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca %struct.bpf_call_arg_meta*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_insn_aux_data*, align 8
  %11 = alloca %struct.bpf_map*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store %struct.bpf_call_arg_meta* %1, %struct.bpf_call_arg_meta** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 0
  %14 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %13, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %14, i64 %16
  store %struct.bpf_insn_aux_data* %17, %struct.bpf_insn_aux_data** %10, align 8
  %18 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %18, i32 0, i32 0
  %20 = load %struct.bpf_map*, %struct.bpf_map** %19, align 8
  store %struct.bpf_map* %20, %struct.bpf_map** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @BPF_FUNC_tail_call, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @BPF_FUNC_map_lookup_elem, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BPF_FUNC_map_update_elem, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BPF_FUNC_map_delete_elem, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @BPF_FUNC_map_push_elem, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @BPF_FUNC_map_pop_elem, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BPF_FUNC_map_peek_elem, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %122

49:                                               ; preds = %44, %40, %36, %32, %28, %24, %4
  %50 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %51 = icmp eq %struct.bpf_map* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %54 = call i32 @verbose(%struct.bpf_verifier_env* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %122

57:                                               ; preds = %49
  %58 = load %struct.bpf_map*, %struct.bpf_map** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BPF_F_RDONLY_PROG, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @BPF_FUNC_map_delete_elem, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %80, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @BPF_FUNC_map_update_elem, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @BPF_FUNC_map_push_elem, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @BPF_FUNC_map_pop_elem, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76, %72, %68, %64
  %81 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %82 = call i32 @verbose(%struct.bpf_verifier_env* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EACCES, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %122

85:                                               ; preds = %76, %57
  %86 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %87 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call %struct.bpf_map* @BPF_MAP_PTR(i32 %88)
  %90 = icmp ne %struct.bpf_map* %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %85
  %92 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %93 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %7, align 8
  %94 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %93, i32 0, i32 0
  %95 = load %struct.bpf_map*, %struct.bpf_map** %94, align 8
  %96 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %7, align 8
  %97 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %96, i32 0, i32 0
  %98 = load %struct.bpf_map*, %struct.bpf_map** %97, align 8
  %99 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @bpf_map_ptr_store(%struct.bpf_insn_aux_data* %92, %struct.bpf_map* %95, i32 %100)
  br label %121

102:                                              ; preds = %85
  %103 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %104 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call %struct.bpf_map* @BPF_MAP_PTR(i32 %105)
  %107 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %7, align 8
  %108 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %107, i32 0, i32 0
  %109 = load %struct.bpf_map*, %struct.bpf_map** %108, align 8
  %110 = icmp ne %struct.bpf_map* %106, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  %113 = load %struct.bpf_map*, %struct.bpf_map** @BPF_MAP_PTR_POISON, align 8
  %114 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %7, align 8
  %115 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %114, i32 0, i32 0
  %116 = load %struct.bpf_map*, %struct.bpf_map** %115, align 8
  %117 = getelementptr inbounds %struct.bpf_map, %struct.bpf_map* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bpf_map_ptr_store(%struct.bpf_insn_aux_data* %112, %struct.bpf_map* %113, i32 %118)
  br label %120

120:                                              ; preds = %111, %102
  br label %121

121:                                              ; preds = %120, %91
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %121, %80, %52, %48
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*) #1

declare dso_local %struct.bpf_map* @BPF_MAP_PTR(i32) #1

declare dso_local i32 @bpf_map_ptr_store(%struct.bpf_insn_aux_data*, %struct.bpf_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
