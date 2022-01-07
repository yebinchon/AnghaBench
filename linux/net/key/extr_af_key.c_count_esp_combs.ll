; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_count_esp_combs.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_count_esp_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_tmpl = type { i32 }
%struct.xfrm_algo_desc = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_tmpl*)* @count_esp_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_esp_combs(%struct.xfrm_tmpl* %0) #0 {
  %2 = alloca %struct.xfrm_tmpl*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_algo_desc*, align 8
  %7 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.xfrm_tmpl* %0, %struct.xfrm_tmpl** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %64, %1
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32 %9)
  store %struct.xfrm_algo_desc* %10, %struct.xfrm_algo_desc** %6, align 8
  %11 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %12 = icmp ne %struct.xfrm_algo_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %67

14:                                               ; preds = %8
  %15 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %16 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %64

20:                                               ; preds = %14
  %21 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %2, align 8
  %22 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %23 = call i64 @ealg_tmpl_set(%struct.xfrm_tmpl* %21, %struct.xfrm_algo_desc* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %6, align 8
  %27 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %20
  br label %64

31:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %60, %31
  %33 = load i32, i32* %4, align 4
  %34 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %33)
  store %struct.xfrm_algo_desc* %34, %struct.xfrm_algo_desc** %7, align 8
  %35 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %36 = icmp ne %struct.xfrm_algo_desc* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %63

38:                                               ; preds = %32
  %39 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %40 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %60

44:                                               ; preds = %38
  %45 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %2, align 8
  %46 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %47 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %45, %struct.xfrm_algo_desc* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %49, %44
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %32

63:                                               ; preds = %37
  br label %64

64:                                               ; preds = %63, %30, %19
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %8

67:                                               ; preds = %13
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  ret i32 %71
}

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32) #1

declare dso_local i64 @ealg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
