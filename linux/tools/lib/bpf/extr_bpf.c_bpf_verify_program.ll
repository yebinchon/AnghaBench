; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_verify_program.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_verify_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type opaque
%union.bpf_attr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_verify_program(i32 %0, %struct.bpf_insn* %1, i64 %2, i8* %3, i8* %4, i8* %5, i8* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_insn*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.bpf_attr, align 8
  store i32 %0, i32* %10, align 4
  store %struct.bpf_insn* %1, %struct.bpf_insn** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %20 = call i32 @memset(%union.bpf_attr* %19, i32 0, i32 8)
  %21 = load i32, i32* %10, align 4
  %22 = bitcast %union.bpf_attr* %19 to i32*
  store i32 %21, i32* %22, align 8
  %23 = load i64, i64* %12, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %24, i8** %25, align 8
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %11, align 8
  %27 = bitcast %struct.bpf_insn* %26 to i8*
  %28 = call i8* @ptr_to_u64(i8* %27)
  %29 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %28, i8** %29, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i8* @ptr_to_u64(i8* %30)
  %32 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = call i8* @ptr_to_u64(i8* %33)
  %35 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %34, i8** %35, align 8
  %36 = load i64, i64* %17, align 8
  %37 = bitcast %union.bpf_attr* %19 to i64*
  store i64 %36, i64* %37, align 8
  %38 = load i32, i32* %18, align 4
  %39 = bitcast %union.bpf_attr* %19 to i32*
  store i32 %38, i32* %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %15, align 8
  %43 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = bitcast %union.bpf_attr* %19 to i8**
  store i8* %44, i8** %45, align 8
  %46 = call i32 @sys_bpf_prog_load(%union.bpf_attr* %19, i32 8)
  ret i32 %46
}

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #1

declare dso_local i8* @ptr_to_u64(i8*) #1

declare dso_local i32 @sys_bpf_prog_load(%union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
