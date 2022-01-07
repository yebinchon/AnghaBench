; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns10.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c_bpf_fill_maxinsns10.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*)* @bpf_fill_maxinsns10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_fill_maxinsns10(%struct.bpf_test* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_test*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %3, align 8
  %13 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.bpf_insn* @kmalloc_array(i32 %16, i32 4, i32 %17)
  store %struct.bpf_insn* %18, %struct.bpf_insn** %6, align 8
  %19 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %20 = icmp ne %struct.bpf_insn* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %45, %24
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = udiv i32 %27, 2
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i64 %33
  %35 = load i32, i32* @BPF_JA, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub i32 %36, 2
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 2, %38
  %40 = sub i32 %37, %39
  %41 = call i32 @BPF_JMP_IMM(i32 %35, i32 0, i32 0, i32 %40)
  %42 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = bitcast %struct.bpf_insn* %34 to i8*
  %44 = bitcast %struct.bpf_insn* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %25

48:                                               ; preds = %25
  %49 = load i32, i32* %5, align 4
  %50 = sub i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %71, %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = udiv i32 %53, 2
  %55 = icmp ugt i32 %52, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %57, i64 %59
  %61 = load i32, i32* @BPF_JA, align 4
  %62 = load i32, i32* %5, align 4
  %63 = sub i32 %62, 1
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 2, %64
  %66 = sub i32 %63, %65
  %67 = call i32 @BPF_JMP_IMM(i32 %61, i32 0, i32 0, i32 %66)
  %68 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = bitcast %struct.bpf_insn* %60 to i8*
  %70 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 %70, i64 4, i1 false)
  br label %71

71:                                               ; preds = %56
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = udiv i32 %76, 2
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %75, i64 %78
  %80 = load i32, i32* @BPF_JA, align 4
  %81 = load i32, i32* %5, align 4
  %82 = udiv i32 %81, 2
  %83 = sub i32 %82, 1
  %84 = call i32 @BPF_JMP_IMM(i32 %80, i32 0, i32 0, i32 %83)
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %struct.bpf_insn* %79 to i8*
  %87 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  %88 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %88, i64 %90
  %92 = load i32, i32* @BPF_MOV, align 4
  %93 = load i32, i32* @R0, align 4
  %94 = call i32 @BPF_ALU32_IMM(i32 %92, i32 %93, i32 -1414812756)
  %95 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %94, i32* %95, align 4
  %96 = bitcast %struct.bpf_insn* %91 to i8*
  %97 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 4, i1 false)
  %98 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %99 = load i32, i32* %5, align 4
  %100 = add i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %98, i64 %101
  %103 = call i32 (...) @BPF_EXIT_INSN()
  %104 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = bitcast %struct.bpf_insn* %102 to i8*
  %106 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  %107 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %108 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %109 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store %struct.bpf_insn* %107, %struct.bpf_insn** %111, align 8
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.bpf_test*, %struct.bpf_test** %3, align 8
  %114 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i32 %112, i32* %116, align 8
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %74, %21
  %118 = load i32, i32* %2, align 4
  ret i32 %118
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
