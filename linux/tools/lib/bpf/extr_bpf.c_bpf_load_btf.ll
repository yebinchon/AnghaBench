; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_load_btf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_load_btf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i8* }

@__const.bpf_load_btf.attr = private unnamed_addr constant { i32, [4 x i8] } { i32 0, [4 x i8] undef }, align 8
@BPF_BTF_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_load_btf(i8* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.bpf_attr, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = bitcast %union.bpf_attr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast ({ i32, [4 x i8] }* @__const.bpf_load_btf.attr to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %6, align 8
  %15 = call i8* @ptr_to_u64(i8* %14)
  %16 = bitcast %union.bpf_attr* %11 to i8**
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast %union.bpf_attr* %11 to i8**
  store i8* %17, i8** %18, align 8
  br label %19

19:                                               ; preds = %49, %5
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = bitcast %union.bpf_attr* %11 to i32*
  store i32 1, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast %union.bpf_attr* %11 to i8**
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i8* @ptr_to_u64(i8* %32)
  %34 = bitcast %union.bpf_attr* %11 to i8**
  store i8* %33, i8** %34, align 8
  br label %35

35:                                               ; preds = %28, %25, %22, %19
  %36 = load i32, i32* @BPF_BTF_LOAD, align 4
  %37 = call i32 @sys_bpf(i32 %36, %union.bpf_attr* %11, i32 8)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* %10, align 4
  br label %19

50:                                               ; preds = %46, %43, %40, %35
  %51 = load i32, i32* %12, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @ptr_to_u64(i8*) #2

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
