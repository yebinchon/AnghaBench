; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_task_fd_query.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_task_fd_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i32, i8* }

@BPF_TASK_FD_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_task_fd_query(i32 %0, i32 %1, i8* %2, i8* %3, i8** %4, i8** %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %union.bpf_attr, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i8** %6, i8*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %21 = bitcast %union.bpf_attr* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 56, i1 false)
  %22 = load i32, i32* %10, align 4
  %23 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i32 @ptr_to_u64(i8* %31)
  %33 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load i8**, i8*** %14, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @BPF_TASK_FD_QUERY, align 4
  %40 = call i32 @sys_bpf(i32 %39, %union.bpf_attr* %19, i32 56)
  store i32 %40, i32* %20, align 4
  %41 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = load i8**, i8*** %14, align 8
  store i8* %43, i8** %44, align 8
  %45 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 5
  %47 = load i8*, i8** %46, align 8
  %48 = load i8**, i8*** %15, align 8
  store i8* %47, i8** %48, align 8
  %49 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 4
  %51 = load i8*, i8** %50, align 8
  %52 = load i8**, i8*** %16, align 8
  store i8* %51, i8** %52, align 8
  %53 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %17, align 8
  store i32 %55, i32* %56, align 4
  %57 = bitcast %union.bpf_attr* %19 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %18, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %20, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ptr_to_u64(i8*) #2

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
