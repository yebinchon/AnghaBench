; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__find_prog_by_idx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_object__find_prog_by_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i64, %struct.bpf_program* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_program* (%struct.bpf_object*, i32)* @bpf_object__find_prog_by_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_program* @bpf_object__find_prog_by_idx(%struct.bpf_object* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_program*, align 8
  %4 = alloca %struct.bpf_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_program*, align 8
  %7 = alloca i64, align 8
  store %struct.bpf_object* %0, %struct.bpf_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.bpf_object*, %struct.bpf_object** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_object, %struct.bpf_object* %15, i32 0, i32 1
  %17 = load %struct.bpf_program*, %struct.bpf_program** %16, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %17, i64 %18
  store %struct.bpf_program* %19, %struct.bpf_program** %6, align 8
  %20 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load %struct.bpf_program*, %struct.bpf_program** %6, align 8
  store %struct.bpf_program* %26, %struct.bpf_program** %3, align 8
  br label %32

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %7, align 8
  br label %8

31:                                               ; preds = %8
  store %struct.bpf_program* null, %struct.bpf_program** %3, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.bpf_program*, %struct.bpf_program** %3, align 8
  ret %struct.bpf_program* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
