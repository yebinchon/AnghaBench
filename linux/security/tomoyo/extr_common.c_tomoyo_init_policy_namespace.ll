; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_init_policy_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_init_policy_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_policy_namespace = type { i32, i32, i32*, i32*, i32* }

@TOMOYO_MAX_ACL_GROUPS = common dso_local global i32 0, align 4
@TOMOYO_MAX_GROUP = common dso_local global i32 0, align 4
@TOMOYO_MAX_POLICY = common dso_local global i32 0, align 4
@tomoyo_namespace_list = common dso_local global i32 0, align 4
@tomoyo_namespace_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tomoyo_init_policy_namespace(%struct.tomoyo_policy_namespace* %0) #0 {
  %2 = alloca %struct.tomoyo_policy_namespace*, align 8
  %3 = alloca i32, align 4
  store %struct.tomoyo_policy_namespace* %0, %struct.tomoyo_policy_namespace** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TOMOYO_MAX_ACL_GROUPS, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  %10 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @TOMOYO_MAX_GROUP, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  %26 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %20

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @TOMOYO_MAX_POLICY, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  %42 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %3, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %36

51:                                               ; preds = %36
  %52 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  %53 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %52, i32 0, i32 0
  store i32 20150505, i32* %53, align 8
  %54 = call i32 @list_empty(i32* @tomoyo_namespace_list)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* @tomoyo_namespace_enabled, align 4
  %58 = load %struct.tomoyo_policy_namespace*, %struct.tomoyo_policy_namespace** %2, align 8
  %59 = getelementptr inbounds %struct.tomoyo_policy_namespace, %struct.tomoyo_policy_namespace* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail_rcu(i32* %59, i32* @tomoyo_namespace_list)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
