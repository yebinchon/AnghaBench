; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_get_user_session_keyring_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_get_user_session_keyring_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.cred = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.keyring_search_context = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, %struct.cred* }
%struct.TYPE_6__ = type { i8*, i32, i32* }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@key_type_keyring = common dso_local global i32 0, align 4
@KEYRING_SEARCH_DO_STATE_CHECK = common dso_local global i32 0, align 4
@KEYRING_SEARCH_LOOKUP_DIRECT = common dso_local global i32 0, align 4
@key_default_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"_uid_ses.%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @get_user_session_keyring_rcu(%struct.cred* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.key*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca %struct.keyring_search_context, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = getelementptr inbounds %struct.cred, %struct.cred* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.key* @READ_ONCE(i32 %12)
  store %struct.key* %13, %struct.key** %4, align 8
  %14 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* @key_type_keyring, i32** %18, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 1
  %20 = load i32, i32* @KEYRING_SEARCH_DO_STATE_CHECK, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %25 = load i32, i32* @KEYRING_SEARCH_LOOKUP_DIRECT, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %27 = load i32, i32* @key_default_cmp, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 3
  %29 = load %struct.cred*, %struct.cred** %3, align 8
  store %struct.cred* %29, %struct.cred** %28, align 8
  %30 = load %struct.key*, %struct.key** %4, align 8
  %31 = icmp ne %struct.key* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  store %struct.key* null, %struct.key** %2, align 8
  br label %57

33:                                               ; preds = %1
  %34 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %35 = load %struct.cred*, %struct.cred** %3, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.cred*, %struct.cred** %3, align 8
  %39 = getelementptr inbounds %struct.cred, %struct.cred* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @from_kuid(%struct.TYPE_8__* %37, i32 %42)
  %44 = call i32 @snprintf(i8* %34, i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %7, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.key*, %struct.key** %4, align 8
  %48 = call i32 @make_key_ref(%struct.key* %47, i32 1)
  %49 = call i32 @keyring_search_rcu(i32 %48, %struct.keyring_search_context* %7)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  store %struct.key* null, %struct.key** %2, align 8
  br label %57

54:                                               ; preds = %33
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.key* @key_ref_to_ptr(i32 %55)
  store %struct.key* %56, %struct.key** %2, align 8
  br label %57

57:                                               ; preds = %54, %53, %32
  %58 = load %struct.key*, %struct.key** %2, align 8
  ret %struct.key* %58
}

declare dso_local %struct.key* @READ_ONCE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @from_kuid(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @keyring_search_rcu(i32, %struct.keyring_search_context*) #1

declare dso_local i32 @make_key_ref(%struct.key*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
