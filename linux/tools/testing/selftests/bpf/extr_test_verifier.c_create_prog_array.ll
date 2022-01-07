; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_create_prog_array.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_create_prog_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_MAP_TYPE_PROG_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to create prog array '%s'!\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @create_prog_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_prog_array(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %12 = load i32, i32* @BPF_MAP_TYPE_PROG_ARRAY, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @bpf_create_map(i32 %12, i32 4, i32 4, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load i32, i32* @BPF_MAP_TYPE_PROG_ARRAY, align 4
  %19 = call i64 @skip_unsupported_map(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %64

22:                                               ; preds = %17
  %23 = load i32, i32* @errno, align 4
  %24 = call i8* @strerror(i32 %23)
  %25 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %4, align 4
  br label %64

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @create_prog_dummy1(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @create_prog_dummy2(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %26
  br label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BPF_ANY, align 4
  %42 = call i64 @bpf_map_update_elem(i32 %40, i32* %7, i32* %10, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %57

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @BPF_ANY, align 4
  %48 = call i64 @bpf_map_update_elem(i32 %46, i32* %8, i32* %11, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @close(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %64

57:                                               ; preds = %50, %44, %38
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @close(i32 %62)
  store i32 -1, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %51, %22, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @bpf_create_map(i32, i32, i32, i32, i32) #1

declare dso_local i64 @skip_unsupported_map(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @create_prog_dummy1(i32) #1

declare dso_local i32 @create_prog_dummy2(i32, i32, i32) #1

declare dso_local i64 @bpf_map_update_elem(i32, i32*, i32*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
