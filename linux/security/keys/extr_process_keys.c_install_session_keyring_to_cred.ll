; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_install_session_keyring_to_cred.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_install_session_keyring_to_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.key*, i32, i32 }
%struct.key = type { i32 }

@KEY_ALLOC_QUOTA_OVERRUN = common dso_local global i64 0, align 8
@KEY_ALLOC_IN_QUOTA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"_ses\00", align 1
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @install_session_keyring_to_cred(%struct.cred* %0, %struct.key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.key*, align 8
  store %struct.cred* %0, %struct.cred** %4, align 8
  store %struct.key* %1, %struct.key** %5, align 8
  %8 = call i32 (...) @might_sleep()
  %9 = load %struct.key*, %struct.key** %5, align 8
  %10 = icmp ne %struct.key* %9, null
  br i1 %10, label %41, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* @KEY_ALLOC_QUOTA_OVERRUN, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.cred*, %struct.cred** %4, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 0
  %15 = load %struct.key*, %struct.key** %14, align 8
  %16 = icmp ne %struct.key* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* @KEY_ALLOC_IN_QUOTA, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %17, %11
  %20 = load %struct.cred*, %struct.cred** %4, align 8
  %21 = getelementptr inbounds %struct.cred, %struct.cred* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.cred*, %struct.cred** %4, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cred*, %struct.cred** %4, align 8
  %27 = load i32, i32* @KEY_POS_ALL, align 4
  %28 = load i32, i32* @KEY_USR_VIEW, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @KEY_USR_READ, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.key* @keyring_alloc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, %struct.cred* %26, i32 %31, i64 %32, i32* null, i32* null)
  store %struct.key* %33, %struct.key** %5, align 8
  %34 = load %struct.key*, %struct.key** %5, align 8
  %35 = call i64 @IS_ERR(%struct.key* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct.key*, %struct.key** %5, align 8
  %39 = call i32 @PTR_ERR(%struct.key* %38)
  store i32 %39, i32* %3, align 4
  br label %57

40:                                               ; preds = %19
  br label %44

41:                                               ; preds = %2
  %42 = load %struct.key*, %struct.key** %5, align 8
  %43 = call i32 @__key_get(%struct.key* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.cred*, %struct.cred** %4, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 0
  %47 = load %struct.key*, %struct.key** %46, align 8
  store %struct.key* %47, %struct.key** %7, align 8
  %48 = load %struct.key*, %struct.key** %5, align 8
  %49 = load %struct.cred*, %struct.cred** %4, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  store %struct.key* %48, %struct.key** %50, align 8
  %51 = load %struct.key*, %struct.key** %7, align 8
  %52 = icmp ne %struct.key* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.key*, %struct.key** %7, align 8
  %55 = call i32 @key_put(%struct.key* %54)
  br label %56

56:                                               ; preds = %53, %44
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i64, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @__key_get(%struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
