; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_compare_stack_ips.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_compare_stack_ips.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_stack_ips(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %12, align 8
  store i32* null, i32** %9, align 8
  store i32* %7, i32** %10, align 8
  br label %19

19:                                               ; preds = %65, %3
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = call i64 @bpf_map_get_next_key(i32 %20, i32* %21, i32* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @bpf_map_lookup_elem(i32 %26, i32* %27, i8* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %74

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @bpf_map_lookup_elem(i32 %34, i32* %35, i8* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %74

41:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %62, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8*, i8** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %52, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %46
  store i32 -1, i32* %14, align 4
  br label %74

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %42

65:                                               ; preds = %42
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %7, align 4
  store i32* %7, i32** %9, align 8
  store i32* %8, i32** %10, align 8
  br label %19

68:                                               ; preds = %19
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOENT, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 -1, i32* %14, align 4
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %60, %40, %32
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32, i32* %14, align 4
  ret i32 %79
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @bpf_map_get_next_key(i32, i32*, i32*) #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
