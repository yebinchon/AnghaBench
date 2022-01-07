; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_aead_name_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_algo.c_xfrm_aead_name_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_algo_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.xfrm_aead_name = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_algo_desc*, i8*)* @xfrm_aead_name_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_aead_name_match(%struct.xfrm_algo_desc* %0, i8* %1) #0 {
  %3 = alloca %struct.xfrm_algo_desc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xfrm_aead_name*, align 8
  %6 = alloca i8*, align 8
  store %struct.xfrm_algo_desc* %0, %struct.xfrm_algo_desc** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.xfrm_aead_name*
  store %struct.xfrm_aead_name* %8, %struct.xfrm_aead_name** %5, align 8
  %9 = load %struct.xfrm_aead_name*, %struct.xfrm_aead_name** %5, align 8
  %10 = getelementptr inbounds %struct.xfrm_aead_name, %struct.xfrm_aead_name* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.xfrm_aead_name*, %struct.xfrm_aead_name** %5, align 8
  %13 = getelementptr inbounds %struct.xfrm_aead_name, %struct.xfrm_aead_name* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %14, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcmp(i8* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %24, %21, %2
  %33 = phi i1 [ false, %21 ], [ false, %2 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
