; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_try_coalesce_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c_sk_msg_try_coalesce_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_msg*, i32)* @sk_msg_try_coalesce_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_msg_try_coalesce_ok(%struct.sk_msg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_msg* %0, %struct.sk_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %7 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %11 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %18 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %49

23:                                               ; preds = %15, %2
  %24 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %25 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %29 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %36 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %34, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sk_msg*, %struct.sk_msg** %4, align 8
  %43 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40, %33
  store i32 1, i32* %3, align 4
  br label %49

48:                                               ; preds = %40, %23
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %47, %22
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
