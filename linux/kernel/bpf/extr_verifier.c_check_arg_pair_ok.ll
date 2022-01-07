; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_arg_pair_ok.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_arg_pair_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_proto*)* @check_arg_pair_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_arg_pair_ok(%struct.bpf_func_proto* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_func_proto*, align 8
  store %struct.bpf_func_proto* %0, %struct.bpf_func_proto** %3, align 8
  %4 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %5 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @arg_type_is_mem_size(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %51, label %9

9:                                                ; preds = %1
  %10 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @arg_type_is_mem_ptr(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %51, label %15

15:                                               ; preds = %9
  %16 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @check_args_pair_invalid(i32 %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %51, label %24

24:                                               ; preds = %15
  %25 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %26 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @check_args_pair_invalid(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %24
  %34 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %35 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @check_args_pair_invalid(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %33
  %43 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %44 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @check_args_pair_invalid(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42, %33, %24, %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %53

52:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @arg_type_is_mem_size(i32) #1

declare dso_local i64 @arg_type_is_mem_ptr(i32) #1

declare dso_local i64 @check_args_pair_invalid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
