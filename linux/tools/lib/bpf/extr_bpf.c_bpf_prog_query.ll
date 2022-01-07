; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_prog_query.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_prog_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i32, i8* }

@BPF_PROG_QUERY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog_query(i32 %0, i32 %1, i8* %2, i8** %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %union.bpf_attr, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i8** %5, i8*** %12, align 8
  %15 = call i32 @memset(%union.bpf_attr* %13, i32 0, i32 40)
  %16 = load i32, i32* %7, align 4
  %17 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %12, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i8**, i8*** %11, align 8
  %30 = call i32 @ptr_to_u64(i8** %29)
  %31 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @BPF_PROG_QUERY, align 4
  %34 = call i32 @sys_bpf(i32 %33, %union.bpf_attr* %13, i32 40)
  store i32 %34, i32* %14, align 4
  %35 = load i8**, i8*** %10, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %6
  %38 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = load i8**, i8*** %10, align 8
  store i8* %40, i8** %41, align 8
  br label %42

42:                                               ; preds = %37, %6
  %43 = bitcast %union.bpf_attr* %13 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %12, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32, i32* %14, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #1

declare dso_local i32 @ptr_to_u64(i8**) #1

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
