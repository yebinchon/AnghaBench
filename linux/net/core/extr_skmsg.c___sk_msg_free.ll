; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skmsg.c___sk_msg_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skmsg.c___sk_msg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_msg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.scatterlist = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_msg*, i32, i32)* @__sk_msg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sk_msg_free(%struct.sock* %0, %struct.sk_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_msg* %1, %struct.sk_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %11, i32 %12)
  store %struct.scatterlist* %13, %struct.scatterlist** %9, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %20, %4
  %15 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %16 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %14
  %21 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %25 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %27, %23
  store i64 %28, i64* %26, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @sk_msg_free_elem(%struct.sock* %29, %struct.sk_msg* %30, i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @sk_msg_iter_var_next(i32 %38)
  %40 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %43 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sk_msg_check_to_free(%struct.sk_msg* %40, i32 %41, i64 %45)
  %47 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.scatterlist* @sk_msg_elem(%struct.sk_msg* %47, i32 %48)
  store %struct.scatterlist* %49, %struct.scatterlist** %9, align 8
  br label %14

50:                                               ; preds = %14
  %51 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %52 = getelementptr inbounds %struct.sk_msg, %struct.sk_msg* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @consume_skb(i32 %53)
  %55 = load %struct.sk_msg*, %struct.sk_msg** %6, align 8
  %56 = call i32 @sk_msg_init(%struct.sk_msg* %55)
  %57 = load i32, i32* %10, align 4
  ret i32 %57
}

declare dso_local %struct.scatterlist* @sk_msg_elem(%struct.sk_msg*, i32) #1

declare dso_local i64 @sk_msg_free_elem(%struct.sock*, %struct.sk_msg*, i32, i32) #1

declare dso_local i32 @sk_msg_iter_var_next(i32) #1

declare dso_local i32 @sk_msg_check_to_free(%struct.sk_msg*, i32, i64) #1

declare dso_local i32 @consume_skb(i32) #1

declare dso_local i32 @sk_msg_init(%struct.sk_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
