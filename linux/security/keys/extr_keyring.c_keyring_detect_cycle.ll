; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_detect_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.keyring_search_context = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.key* }

@KEYRING_SEARCH_NO_STATE_CHECK = common dso_local global i32 0, align 4
@KEYRING_SEARCH_NO_UPDATE_TIME = common dso_local global i32 0, align 4
@KEYRING_SEARCH_NO_CHECK_PERM = common dso_local global i32 0, align 4
@KEYRING_SEARCH_DETECT_TOO_DEEP = common dso_local global i32 0, align 4
@KEYRING_SEARCH_RECURSE = common dso_local global i32 0, align 4
@keyring_detect_cycle_iterator = common dso_local global i32 0, align 4
@KEYRING_SEARCH_LOOKUP_DIRECT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key*)* @keyring_detect_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keyring_detect_cycle(%struct.key* %0, %struct.key* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.keyring_search_context, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key* %1, %struct.key** %4, align 8
  %6 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 0
  %7 = load i32, i32* @KEYRING_SEARCH_NO_STATE_CHECK, align 4
  %8 = load i32, i32* @KEYRING_SEARCH_NO_UPDATE_TIME, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @KEYRING_SEARCH_NO_CHECK_PERM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @KEYRING_SEARCH_DETECT_TOO_DEEP, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @KEYRING_SEARCH_RECURSE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %6, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 2
  %18 = load i32, i32* @keyring_detect_cycle_iterator, align 4
  store i32 %18, i32* %17, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* @KEYRING_SEARCH_LOOKUP_DIRECT, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %23 = load %struct.key*, %struct.key** %3, align 8
  store %struct.key* %23, %struct.key** %22, align 8
  %24 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 4
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 8
  %28 = call i32 (...) @rcu_read_lock()
  %29 = load %struct.key*, %struct.key** %4, align 8
  %30 = call i32 @search_nested_keyrings(%struct.key* %29, %struct.keyring_search_context* %5)
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PTR_ERR(i32 %33)
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %43

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %5, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32 [ 0, %38 ], [ %42, %39 ]
  ret i32 %44
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @search_nested_keyrings(%struct.key*, %struct.keyring_search_context*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
