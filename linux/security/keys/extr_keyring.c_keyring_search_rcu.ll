; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_search_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_search_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_search_context = type { i32, i32, i32, i32, i32, i32 }
%struct.key = type { i32* }

@keyring_search_iterator = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@key_type_keyring = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i64 0, align 8
@KEYRING_SEARCH_NO_CHECK_PERM = common dso_local global i32 0, align 4
@KEY_NEED_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @keyring_search_rcu(i32 %0, %struct.keyring_search_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.keyring_search_context*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.keyring_search_context* %1, %struct.keyring_search_context** %5, align 8
  %8 = load i32, i32* @keyring_search_iterator, align 4
  %9 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %10 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @is_key_possessed(i32 %11)
  %13 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %14 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* @EAGAIN, align 8
  %16 = sub nsw i64 0, %15
  %17 = call i32 @ERR_PTR(i64 %16)
  %18 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.key* @key_ref_to_ptr(i32 %20)
  store %struct.key* %21, %struct.key** %6, align 8
  %22 = load %struct.key*, %struct.key** %6, align 8
  %23 = call i32 @key_check(%struct.key* %22)
  %24 = load %struct.key*, %struct.key** %6, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, @key_type_keyring
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i64, i64* @ENOTDIR, align 8
  %30 = sub nsw i64 0, %29
  %31 = call i32 @ERR_PTR(i64 %30)
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %2
  %33 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %34 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @KEYRING_SEARCH_NO_CHECK_PERM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %52, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %42 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @KEY_NEED_SEARCH, align 4
  %45 = call i64 @key_task_permission(i32 %40, i32 %43, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @ERR_PTR(i64 %49)
  store i32 %50, i32* %3, align 4
  br label %70

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %32
  %53 = call i32 (...) @ktime_get_real_seconds()
  %54 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %55 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.key*, %struct.key** %6, align 8
  %57 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %58 = call i64 @search_nested_keyrings(%struct.key* %56, %struct.keyring_search_context* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %62 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.key* @key_ref_to_ptr(i32 %63)
  %65 = call i32 @__key_get(%struct.key* %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load %struct.keyring_search_context*, %struct.keyring_search_context** %5, align 8
  %68 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %48, %28
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @is_key_possessed(i32) #1

declare dso_local i32 @ERR_PTR(i64) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i64 @key_task_permission(i32, i32, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i64 @search_nested_keyrings(%struct.key*, %struct.keyring_search_context*) #1

declare dso_local i32 @__key_get(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
