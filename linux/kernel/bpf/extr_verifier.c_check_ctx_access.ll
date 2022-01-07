; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ctx_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ctx_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)* }
%struct.bpf_insn_access_aux = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"invalid bpf_context access off=%d size=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32, i32, i32, i32*)* @check_ctx_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ctx_access(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_verifier_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.bpf_insn_access_aux, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %15 = getelementptr inbounds %struct.bpf_insn_access_aux, %struct.bpf_insn_access_aux* %14, i32 0, i32 0
  %16 = load i32*, i32** %13, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.bpf_insn_access_aux, %struct.bpf_insn_access_aux* %14, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)*, i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)** %22, align 8
  %24 = icmp ne i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %6
  %26 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)*, i64 (i32, i32, i32, %struct.TYPE_8__*, %struct.bpf_insn_access_aux*)** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %35 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = call i64 %30(i32 %31, i32 %32, i32 %33, %struct.TYPE_8__* %36, %struct.bpf_insn_access_aux* %14)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.bpf_insn_access_aux, %struct.bpf_insn_access_aux* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %13, align 8
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.bpf_insn_access_aux, %struct.bpf_insn_access_aux* %14, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %44, i32* %51, align 4
  %52 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %53 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %39
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %64, %65
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %68 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %63, %39
  store i32 0, i32* %7, align 4
  br label %81

74:                                               ; preds = %25, %6
  %75 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @verbose(%struct.bpf_verifier_env* %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* @EACCES, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %74, %73
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
