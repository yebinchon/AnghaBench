; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_test_static_keys.c_verify_keys.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_test_static_keys.c_verify_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test_key = type { i32, i32 (...)*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.test_key*, i32, i32)* @verify_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_keys(%struct.test_key* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.test_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.test_key* %0, %struct.test_key** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %76, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %79

15:                                               ; preds = %11
  %16 = load %struct.test_key*, %struct.test_key** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.test_key, %struct.test_key* %16, i64 %18
  %20 = getelementptr inbounds %struct.test_key, %struct.test_key* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @static_key_enabled(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.test_key*, %struct.test_key** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.test_key, %struct.test_key* %23, i64 %25
  %27 = getelementptr inbounds %struct.test_key, %struct.test_key* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %15
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  br label %39

37:                                               ; preds = %15
  %38 = load i32, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %36, %32 ], [ %38, %37 ]
  %41 = icmp ne i32 %29, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %80

45:                                               ; preds = %39
  %46 = load %struct.test_key*, %struct.test_key** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.test_key, %struct.test_key* %46, i64 %48
  %50 = getelementptr inbounds %struct.test_key, %struct.test_key* %49, i32 0, i32 1
  %51 = load i32 (...)*, i32 (...)** %50, align 8
  %52 = call i32 (...) %51()
  store i32 %52, i32* %9, align 4
  %53 = load %struct.test_key*, %struct.test_key** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.test_key, %struct.test_key* %53, i64 %55
  %57 = getelementptr inbounds %struct.test_key, %struct.test_key* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @static_key_enabled(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %45
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %80

67:                                               ; preds = %61
  br label %75

68:                                               ; preds = %45
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %80

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %11

79:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %71, %64, %42
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @static_key_enabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
