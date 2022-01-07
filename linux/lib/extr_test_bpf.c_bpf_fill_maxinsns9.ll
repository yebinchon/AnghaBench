; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns9.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_JA = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns9(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_insn, align 4
  %8 = alloca %struct.bpf_insn, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %13 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bpf_insn* @kmalloc_array(i32 %14, i32 4, i32 %15)
  store %struct.bpf_insn* %16, %struct.bpf_insn** %5, align 8
  %17 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %18 = icmp ne %struct.bpf_insn* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %1
  %23 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %24 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %23, i64 0
  %25 = load i32, i32* @BPF_JA, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub i32 %26, 2
  %28 = call i32 @BPF_JMP_IMM(i32 %25, i32 0, i32 0, i32 %27)
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.bpf_insn* %24 to i8*
  %31 = bitcast %struct.bpf_insn* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %32, i64 1
  %34 = load i32, i32* @BPF_MOV, align 4
  %35 = load i32, i32* @R0, align 4
  %36 = call i32 @BPF_ALU32_IMM(i32 %34, i32 %35, i32 -877941845)
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.bpf_insn* %33 to i8*
  %39 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %41 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %40, i64 2
  %42 = call i32 (...) @BPF_EXIT_INSN()
  %43 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = bitcast %struct.bpf_insn* %41 to i8*
  %45 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  store i32 3, i32* %6, align 4
  br label %46

46:                                               ; preds = %62, %22
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = sub i32 %48, 2
  %50 = icmp ult i32 %47, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %52, i64 %54
  %56 = load i32, i32* @BPF_MOV, align 4
  %57 = load i32, i32* @R0, align 4
  %58 = call i32 @BPF_ALU32_IMM(i32 %56, i32 %57, i32 -16843010)
  %59 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = bitcast %struct.bpf_insn* %55 to i8*
  %61 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  br label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %46

65:                                               ; preds = %46
  %66 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sub i32 %67, 2
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %66, i64 %69
  %71 = call i32 (...) @BPF_EXIT_INSN()
  %72 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = bitcast %struct.bpf_insn* %70 to i8*
  %74 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sub i32 %76, 1
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i64 %78
  %80 = load i32, i32* @BPF_JA, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub i32 %81, 1
  %83 = sub i32 0, %82
  %84 = call i32 @BPF_JMP_IMM(i32 %80, i32 0, i32 0, i32 %83)
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %struct.bpf_insn* %79 to i8*
  %87 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %89 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %90 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store %struct.bpf_insn* %88, %struct.bpf_insn** %92, align 8
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %95 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %65, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.bpf_insn* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_ALU32_IMM(i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
