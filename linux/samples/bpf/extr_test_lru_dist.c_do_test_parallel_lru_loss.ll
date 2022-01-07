; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_do_test_parallel_lru_loss.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_lru_dist.c_do_test_parallel_lru_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_cpus = common dso_local global i32 0, align 4
@BPF_NOEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"    task:%d nr_losses:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @do_test_parallel_lru_loss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_test_parallel_lru_loss(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 1000, i32* %5, align 4
  store i32 100000, i32* %6, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @nr_cpus, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %3, align 4
  %24 = mul i32 %23, 100000
  %25 = mul i32 %24, 2
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %12, align 8
  %29 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 1234, i64* %29, align 16
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %42, %2
  %31 = load i32, i32* %14, align 4
  %32 = icmp ult i32 %31, 1000
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @BPF_NOEXIST, align 4
  %36 = call i64 @bpf_map_update_elem(i32 %34, i64* %12, i64* %22, i32 %35)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i64, i64* %12, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %12, align 8
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %14, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %14, align 4
  br label %30

45:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %69, %45
  %47 = load i32, i32* %14, align 4
  %48 = icmp ult i32 %47, 100000
  br i1 %48, label %49, label %72

49:                                               ; preds = %46
  %50 = call i32 (...) @rand()
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = srem i32 %51, 10
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %15, align 4
  %56 = urem i32 %55, 1000
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %57, %58
  store i64 %59, i64* %9, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @bpf_map_lookup_elem(i32 %60, i64* %9, i64* %22)
  br label %68

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BPF_NOEXIST, align 4
  %65 = call i64 @bpf_map_update_elem(i32 %63, i64* %12, i64* %22, i32 %64)
  %66 = load i64, i64* %12, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %62, %54
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %46

72:                                               ; preds = %46
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %9, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %87, %72
  %75 = load i32, i32* %14, align 4
  %76 = icmp ult i32 %75, 1000
  br i1 %76, label %77, label %90

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @bpf_map_lookup_elem(i32 %78, i64* %9, i64* %22)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %77
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %14, align 4
  br label %74

90:                                               ; preds = %74
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @bpf_map_update_elem(i32, i64*, i64*, i32) #2

declare dso_local i32 @rand(...) #2

declare dso_local i64 @bpf_map_lookup_elem(i32, i64*, i64*) #2

declare dso_local i32 @printf(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
