; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_alg_name_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_alg_name_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_desc*, i8*)* @xfrm_alg_name_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_alg_name_match(%struct.xfrm_algo_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.xfrm_algo_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.xfrm_algo_desc* %0, %struct.xfrm_algo_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strcmp(i8* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %9
  %17 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strcmp(i8* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %21, %16
  %30 = phi i1 [ false, %16 ], [ %28, %21 ]
  br label %31

31:                                               ; preds = %29, %9
  %32 = phi i1 [ true, %9 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i1 [ false, %2 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
