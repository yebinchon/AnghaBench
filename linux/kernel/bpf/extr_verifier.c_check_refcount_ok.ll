; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_refcount_ok.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_refcount_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_proto = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_proto*, i32)* @check_refcount_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_refcount_ok(%struct.bpf_func_proto* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_func_proto*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bpf_func_proto* %0, %struct.bpf_func_proto** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @arg_type_may_be_refcounted(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %4, align 8
  %17 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @arg_type_may_be_refcounted(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %4, align 8
  %26 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @arg_type_may_be_refcounted(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %4, align 8
  %35 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @arg_type_may_be_refcounted(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.bpf_func_proto*, %struct.bpf_func_proto** %4, align 8
  %44 = getelementptr inbounds %struct.bpf_func_proto, %struct.bpf_func_proto* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @arg_type_may_be_refcounted(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @is_acquire_function(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %63

59:                                               ; preds = %55, %51
  %60 = load i32, i32* %6, align 4
  %61 = icmp sle i32 %60, 1
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @arg_type_may_be_refcounted(i32) #1

declare dso_local i64 @is_acquire_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
