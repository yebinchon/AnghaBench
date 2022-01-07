; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_match.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_lpm_map.c_tlpm_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlpm_node = type { i64, i32*, %struct.tlpm_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tlpm_node* (%struct.tlpm_node*, i32*, i64)* @tlpm_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tlpm_node* @tlpm_match(%struct.tlpm_node* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.tlpm_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tlpm_node*, align 8
  %8 = alloca i64, align 8
  store %struct.tlpm_node* %0, %struct.tlpm_node** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.tlpm_node* null, %struct.tlpm_node** %7, align 8
  br label %9

9:                                                ; preds = %75, %3
  %10 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  %11 = icmp ne %struct.tlpm_node* %10, null
  br i1 %11, label %12, label %79

12:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %53, %12
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  %20 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br label %23

23:                                               ; preds = %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ]
  br i1 %24, label %25, label %56

25:                                               ; preds = %23
  %26 = load i32*, i32** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = udiv i64 %27, 8
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = urem i64 %31, 8
  %33 = sub i64 7, %32
  %34 = trunc i64 %33 to i32
  %35 = shl i32 1, %34
  %36 = and i32 %30, %35
  %37 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  %38 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = udiv i64 %40, 8
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %8, align 8
  %45 = urem i64 %44, 8
  %46 = sub i64 7, %45
  %47 = trunc i64 %46 to i32
  %48 = shl i32 1, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %36, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  br label %56

52:                                               ; preds = %25
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %13

56:                                               ; preds = %51, %23
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  %59 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp uge i64 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.tlpm_node*, %struct.tlpm_node** %7, align 8
  %64 = icmp ne %struct.tlpm_node* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.tlpm_node*, %struct.tlpm_node** %7, align 8
  %68 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ugt i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65, %62
  %72 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  store %struct.tlpm_node* %72, %struct.tlpm_node** %7, align 8
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %56
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.tlpm_node*, %struct.tlpm_node** %4, align 8
  %77 = getelementptr inbounds %struct.tlpm_node, %struct.tlpm_node* %76, i32 0, i32 2
  %78 = load %struct.tlpm_node*, %struct.tlpm_node** %77, align 8
  store %struct.tlpm_node* %78, %struct.tlpm_node** %4, align 8
  br label %9

79:                                               ; preds = %9
  %80 = load %struct.tlpm_node*, %struct.tlpm_node** %7, align 8
  ret %struct.tlpm_node* %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
