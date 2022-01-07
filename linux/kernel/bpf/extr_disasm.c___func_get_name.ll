; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c___func_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_disasm.c___func_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_cbs = type { i8* (i32, %struct.bpf_insn*)*, i32 }
%struct.bpf_insn = type opaque
%struct.bpf_insn.0 = type { i64, i64 }

@func_id_str = common dso_local global i8** null, align 8
@__BPF_FUNC_MAX_ID = common dso_local global i64 0, align 8
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%+d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bpf_insn_cbs*, %struct.bpf_insn.0*, i8*, i64)* @__func_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__func_get_name(%struct.bpf_insn_cbs* %0, %struct.bpf_insn.0* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_insn_cbs*, align 8
  %7 = alloca %struct.bpf_insn.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.bpf_insn_cbs* %0, %struct.bpf_insn_cbs** %6, align 8
  store %struct.bpf_insn.0* %1, %struct.bpf_insn.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8**, i8*** @func_id_str, align 8
  %11 = call i64 @ARRAY_SIZE(i8** %10)
  %12 = load i64, i64* @__BPF_FUNC_MAX_ID, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUILD_BUG_ON(i32 %14)
  %16 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %17 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %4
  %22 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %28 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @__BPF_FUNC_MAX_ID, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load i8**, i8*** @func_id_str, align 8
  %34 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %35 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8*, i8** %33, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i8**, i8*** @func_id_str, align 8
  %42 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %5, align 8
  br label %80

47:                                               ; preds = %32, %26, %21, %4
  %48 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %6, align 8
  %49 = icmp ne %struct.bpf_insn_cbs* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %6, align 8
  %52 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %51, i32 0, i32 0
  %53 = load i8* (i32, %struct.bpf_insn*)*, i8* (i32, %struct.bpf_insn*)** %52, align 8
  %54 = icmp ne i8* (i32, %struct.bpf_insn*)* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %6, align 8
  %57 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %56, i32 0, i32 0
  %58 = load i8* (i32, %struct.bpf_insn*)*, i8* (i32, %struct.bpf_insn*)** %57, align 8
  %59 = load %struct.bpf_insn_cbs*, %struct.bpf_insn_cbs** %6, align 8
  %60 = getelementptr inbounds %struct.bpf_insn_cbs, %struct.bpf_insn_cbs* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %63 = bitcast %struct.bpf_insn.0* %62 to %struct.bpf_insn*
  %64 = call i8* %58(i32 %61, %struct.bpf_insn* %63)
  store i8* %64, i8** %5, align 8
  br label %80

65:                                               ; preds = %50, %47
  %66 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %67 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.bpf_insn.0*, %struct.bpf_insn.0** %7, align 8
  %75 = getelementptr inbounds %struct.bpf_insn.0, %struct.bpf_insn.0* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @snprintf(i8* %72, i64 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %71, %65
  %79 = load i8*, i8** %8, align 8
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %78, %55, %40
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
