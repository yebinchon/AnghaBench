; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_create_map_in_map_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_create_map_in_map_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@BPF_OBJ_NAME_LEN = common dso_local global i64 0, align 8
@BPF_F_NUMA_NODE = common dso_local global i32 0, align 4
@BPF_MAP_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_create_map_in_map_node(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.bpf_attr, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = call i32 @memset(%union.bpf_attr* %15, i8 signext 0, i32 4)
  %17 = load i32, i32* %8, align 4
  %18 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %19, i32* %20, align 4
  %21 = bitcast %union.bpf_attr* %15 to i32*
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %12, align 4
  %25 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %13, align 4
  %27 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %7
  %31 = bitcast %union.bpf_attr* %15 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i64, i64* @BPF_OBJ_NAME_LEN, align 8
  %37 = sub nsw i64 %36, 1
  %38 = call i32 @min(i32 %35, i64 %37)
  %39 = call i32 @memcpy(i32 %32, i8* %33, i32 %38)
  br label %40

40:                                               ; preds = %30, %7
  %41 = load i32, i32* %14, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* @BPF_F_NUMA_NODE, align 4
  %45 = bitcast %union.bpf_attr* %15 to i32*
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %14, align 4
  %49 = bitcast %union.bpf_attr* %15 to i32*
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %40
  %51 = load i32, i32* @BPF_MAP_CREATE, align 4
  %52 = call i32 @sys_bpf(i32 %51, %union.bpf_attr* %15, i32 4)
  ret i32 %52
}

declare dso_local i32 @memset(%union.bpf_attr*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
