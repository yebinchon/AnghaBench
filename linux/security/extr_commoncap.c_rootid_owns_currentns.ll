; ModuleID = '/home/carl/AnghaBench/linux/security/extr_commoncap.c_rootid_owns_currentns.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_commoncap.c_rootid_owns_currentns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.user_namespace* }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rootid_owns_currentns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rootid_owns_currentns(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.user_namespace*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @uid_valid(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = call %struct.user_namespace* (...) @current_user_ns()
  store %struct.user_namespace* %10, %struct.user_namespace** %4, align 8
  br label %11

11:                                               ; preds = %22, %9
  %12 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @from_kuid(%struct.user_namespace* %12, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %27

17:                                               ; preds = %11
  %18 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %19 = icmp eq %struct.user_namespace* %18, @init_user_ns
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %26

21:                                               ; preds = %17
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %24 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %23, i32 0, i32 0
  %25 = load %struct.user_namespace*, %struct.user_namespace** %24, align 8
  store %struct.user_namespace* %25, %struct.user_namespace** %4, align 8
  br label %11

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %16, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @uid_valid(i32) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i64 @from_kuid(%struct.user_namespace*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
