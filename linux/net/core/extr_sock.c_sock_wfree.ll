; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_wfree.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock.c_sock_wfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.sock* }
%struct.sock = type { i32, i32 (%struct.sock*)* }

@SOCK_USE_WRITE_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_wfree(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load i32, i32* @SOCK_USE_WRITE_QUEUE, align 4
  %13 = call i32 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = sub i32 %16, 1
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = call i64 @refcount_sub_and_test(i32 %17, i32* %19)
  %21 = call i32 @WARN_ON(i64 %20)
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %23, align 8
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = call i32 %24(%struct.sock* %25)
  store i32 1, i32* %4, align 4
  br label %27

27:                                               ; preds = %15, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = call i64 @refcount_sub_and_test(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = call i32 @__sk_free(%struct.sock* %34)
  br label %36

36:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @WARN_ON(i64) #1

declare dso_local i64 @refcount_sub_and_test(i32, i32*) #1

declare dso_local i32 @__sk_free(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
