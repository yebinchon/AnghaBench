; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_find_algo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_find_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_desc = type { i32, i32 }
%struct.xfrm_algo_list = type { i32, i32, i32, %struct.xfrm_algo_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_algo_desc* (%struct.xfrm_algo_list*, i32 (%struct.xfrm_algo_desc*, i8*)*, i8*, i32)* @xfrm_find_algo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_algo_desc* @xfrm_find_algo(%struct.xfrm_algo_list* %0, i32 (%struct.xfrm_algo_desc*, i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xfrm_algo_desc*, align 8
  %6 = alloca %struct.xfrm_algo_list*, align 8
  %7 = alloca i32 (%struct.xfrm_algo_desc*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xfrm_algo_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfrm_algo_list* %0, %struct.xfrm_algo_list** %6, align 8
  store i32 (%struct.xfrm_algo_desc*, i8*)* %1, i32 (%struct.xfrm_algo_desc*, i8*)** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.xfrm_algo_list*, %struct.xfrm_algo_list** %6, align 8
  %14 = getelementptr inbounds %struct.xfrm_algo_list, %struct.xfrm_algo_list* %13, i32 0, i32 3
  %15 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %14, align 8
  store %struct.xfrm_algo_desc* %15, %struct.xfrm_algo_desc** %10, align 8
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %77, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.xfrm_algo_list*, %struct.xfrm_algo_list** %6, align 8
  %19 = getelementptr inbounds %struct.xfrm_algo_list, %struct.xfrm_algo_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %80

22:                                               ; preds = %16
  %23 = load i32 (%struct.xfrm_algo_desc*, i8*)*, i32 (%struct.xfrm_algo_desc*, i8*)** %7, align 8
  %24 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %24, i64 %26
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 %23(%struct.xfrm_algo_desc* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %77

32:                                               ; preds = %22
  %33 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %33, i64 %35
  %37 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %41, i64 %43
  store %struct.xfrm_algo_desc* %44, %struct.xfrm_algo_desc** %5, align 8
  br label %81

45:                                               ; preds = %32
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %80

49:                                               ; preds = %45
  %50 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %50, i64 %52
  %54 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfrm_algo_list*, %struct.xfrm_algo_list** %6, align 8
  %57 = getelementptr inbounds %struct.xfrm_algo_list, %struct.xfrm_algo_list* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.xfrm_algo_list*, %struct.xfrm_algo_list** %6, align 8
  %60 = getelementptr inbounds %struct.xfrm_algo_list, %struct.xfrm_algo_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @crypto_has_alg(i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %49
  br label %80

66:                                               ; preds = %49
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %68, i64 %70
  %72 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %73, i64 %75
  store %struct.xfrm_algo_desc* %76, %struct.xfrm_algo_desc** %5, align 8
  br label %81

77:                                               ; preds = %31
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %16

80:                                               ; preds = %65, %48, %16
  store %struct.xfrm_algo_desc* null, %struct.xfrm_algo_desc** %5, align 8
  br label %81

81:                                               ; preds = %80, %66, %40
  %82 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %5, align 8
  ret %struct.xfrm_algo_desc* %82
}

declare dso_local i32 @crypto_has_alg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
