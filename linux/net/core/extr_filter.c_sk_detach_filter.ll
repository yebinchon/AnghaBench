; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_detach_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_filter.c_sk_detach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_filter = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@SOCK_FILTER_LOCKED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_detach_filter(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_filter*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = load i32, i32* @SOCK_FILTER_LOCKED, align 4
  %10 = call i64 @sock_flag(%struct.sock* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EPERM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 @lockdep_sock_is_held(%struct.sock* %19)
  %21 = call %struct.sk_filter* @rcu_dereference_protected(i32 %18, i32 %20)
  store %struct.sk_filter* %21, %struct.sk_filter** %5, align 8
  %22 = load %struct.sk_filter*, %struct.sk_filter** %5, align 8
  %23 = icmp ne %struct.sk_filter* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.sock*, %struct.sock** %3, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RCU_INIT_POINTER(i32 %27, i32* null)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = load %struct.sk_filter*, %struct.sk_filter** %5, align 8
  %31 = call i32 @sk_filter_uncharge(%struct.sock* %29, %struct.sk_filter* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %15
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.sk_filter* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_sock_is_held(%struct.sock*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @sk_filter_uncharge(%struct.sock*, %struct.sk_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
