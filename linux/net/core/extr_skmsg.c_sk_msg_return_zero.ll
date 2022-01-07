; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_return_zero.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_return_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_msg_return_zero(%struct.sock* %0, %struct.sk_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %10 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %64, %3
  %14 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %14, i32 %15)
  store %struct.scatterlist* %16, %struct.scatterlist** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %19 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sk_mem_uncharge(%struct.sock* %34, i32 %35)
  br label %66

37:                                               ; preds = %13
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @sk_mem_uncharge(%struct.sock* %38, i32 %41)
  %43 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %49 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @sk_msg_iter_var_next(i32 %52)
  br label %54

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %60 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %58, %62
  br label %64

64:                                               ; preds = %57, %54
  %65 = phi i1 [ false, %54 ], [ %63, %57 ]
  br i1 %65, label %13, label %66

66:                                               ; preds = %64, %22
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %69 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  ret void
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
