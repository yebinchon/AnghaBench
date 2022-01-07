; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_user_defined.c_user_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_user_defined.c_user_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_preparsed_payload = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32** }
%struct.user_key_payload = type { i32 }

@user_free_payload_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_update(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_preparsed_payload*, align 8
  %6 = alloca %struct.user_key_payload*, align 8
  %7 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %5, align 8
  store %struct.user_key_payload* null, %struct.user_key_payload** %6, align 8
  %8 = load %struct.key*, %struct.key** %4, align 8
  %9 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %10 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @key_payload_reserve(%struct.key* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %19 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.key*, %struct.key** %4, align 8
  %22 = getelementptr inbounds %struct.key, %struct.key* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.key*, %struct.key** %4, align 8
  %24 = call i64 @key_is_positive(%struct.key* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load %struct.key*, %struct.key** %4, align 8
  %28 = call %struct.user_key_payload* @dereference_key_locked(%struct.key* %27)
  store %struct.user_key_payload* %28, %struct.user_key_payload** %6, align 8
  br label %29

29:                                               ; preds = %26, %17
  %30 = load %struct.key*, %struct.key** %4, align 8
  %31 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %32 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @rcu_assign_keypointer(%struct.key* %30, i32* %36)
  %38 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %39 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.user_key_payload*, %struct.user_key_payload** %6, align 8
  %44 = icmp ne %struct.user_key_payload* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %29
  %46 = load %struct.user_key_payload*, %struct.user_key_payload** %6, align 8
  %47 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %46, i32 0, i32 0
  %48 = load i32, i32* @user_free_payload_rcu, align 4
  %49 = call i32 @call_rcu(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %29
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i64 @key_is_positive(%struct.key*) #1

declare dso_local %struct.user_key_payload* @dereference_key_locked(%struct.key*) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
