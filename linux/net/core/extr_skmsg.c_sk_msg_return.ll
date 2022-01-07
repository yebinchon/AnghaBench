; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_return.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_msg_return(%struct.sock* %0, %struct.sk_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %11 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %43, %3
  %15 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %16 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %18, i64 %20
  store %struct.scatterlist* %21, %struct.scatterlist** %8, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %24 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  br label %33

29:                                               ; preds = %14
  %30 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %31 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = phi i32 [ %28, %27 ], [ %32, %29 ]
  store i32 %34, i32* %9, align 4
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @sk_mem_uncharge(%struct.sock* %35, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @sk_msg_iter_var_next(i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.sk_msg*, %struct.sk_msg** %5, align 8
  %46 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %44, %48
  br i1 %49, label %14, label %50

50:                                               ; preds = %43
  ret void
}

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
