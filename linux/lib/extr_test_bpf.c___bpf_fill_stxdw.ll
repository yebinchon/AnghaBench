; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___bpf_fill_stxdw.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_bpf.c___bpf_fill_stxdw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_MAXINSNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_test*, i32)* @__bpf_fill_stxdw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bpf_fill_stxdw(%struct.bpf_test* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_insn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_insn, align 4
  %10 = alloca %struct.bpf_insn, align 4
  %11 = alloca %struct.bpf_insn, align 4
  %12 = alloca %struct.bpf_insn, align 4
  %13 = alloca %struct.bpf_insn, align 4
  store %struct.bpf_test* %0, %struct.bpf_test** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @BPF_MAXINSNS, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.bpf_insn* @kmalloc_array(i32 %15, i32 4, i32 %16)
  store %struct.bpf_insn* %17, %struct.bpf_insn** %7, align 8
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %19 = icmp ne %struct.bpf_insn* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %94

23:                                               ; preds = %2
  %24 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %25 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %24, i64 0
  %26 = load i32, i32* @BPF_MOV, align 4
  %27 = load i32, i32* @R0, align 4
  %28 = call i32 @BPF_ALU32_IMM(i32 %26, i32 %27, i32 1)
  %29 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = bitcast %struct.bpf_insn* %25 to i8*
  %31 = bitcast %struct.bpf_insn* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %33 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %32, i64 1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @R10, align 4
  %36 = call i32 @BPF_ST_MEM(i32 %34, i32 %35, i32 -40, i32 42)
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %10, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.bpf_insn* %33 to i8*
  %39 = bitcast %struct.bpf_insn* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  store i32 2, i32* %8, align 4
  br label %40

40:                                               ; preds = %57, %23
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub i32 %42, 2
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %46, i64 %48
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @R10, align 4
  %52 = load i32, i32* @R0, align 4
  %53 = call i32 @BPF_STX_XADD(i32 %50, i32 %51, i32 %52, i32 -40)
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %11, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = bitcast %struct.bpf_insn* %49 to i8*
  %56 = bitcast %struct.bpf_insn* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 4 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %61, i64 %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @R0, align 4
  %68 = load i32, i32* @R10, align 4
  %69 = call i32 @BPF_LDX_MEM(i32 %66, i32 %67, i32 %68, i32 -40)
  %70 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %69, i32* %70, align 4
  %71 = bitcast %struct.bpf_insn* %65 to i8*
  %72 = bitcast %struct.bpf_insn* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 4, i1 false)
  %73 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub i32 %74, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %73, i64 %76
  %78 = call i32 (...) @BPF_EXIT_INSN()
  %79 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %13, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = bitcast %struct.bpf_insn* %77 to i8*
  %81 = bitcast %struct.bpf_insn* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.bpf_insn*, %struct.bpf_insn** %7, align 8
  %83 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %84 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store %struct.bpf_insn* %82, %struct.bpf_insn** %86, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %89 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 %87, i32* %91, align 8
  %92 = load %struct.bpf_test*, %struct.bpf_test** %4, align 8
  %93 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %92, i32 0, i32 0
  store i32 40, i32* %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %60, %20
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.bpf_insn* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @BPF_ALU32_IMM(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BPF_ST_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_STX_XADD(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_LDX_MEM(i32, i32, i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
