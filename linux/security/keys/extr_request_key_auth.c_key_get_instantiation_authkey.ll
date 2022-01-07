; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_key_get_instantiation_authkey.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_key_get_instantiation_authkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.keyring_search_context = type { i32, %struct.TYPE_3__, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32* }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@KEYRING_SEARCH_DO_STATE_CHECK = common dso_local global i32 0, align 4
@KEYRING_SEARCH_RECURSE = common dso_local global i32 0, align 4
@key_type_request_key_auth = common dso_local global i32 0, align 4
@KEYRING_SEARCH_LOOKUP_DIRECT = common dso_local global i32 0, align 4
@key_default_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @key_get_instantiation_authkey(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [16 x i8], align 16
  %4 = alloca %struct.keyring_search_context, align 8
  %5 = alloca %struct.key*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %4, i32 0, i32 0
  %8 = load i32, i32* @KEYRING_SEARCH_DO_STATE_CHECK, align 4
  %9 = load i32, i32* @KEYRING_SEARCH_RECURSE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %4, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  store i32* @key_type_request_key_auth, i32** %15, align 8
  %16 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %4, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %20 = load i32, i32* @KEYRING_SEARCH_LOOKUP_DIRECT, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %22 = load i32, i32* @key_default_cmp, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %4, i32 0, i32 3
  %24 = call i32 (...) @current_cred()
  store i32 %24, i32* %23, align 8
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %4, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @rcu_read_lock()
  %31 = call i32 @search_process_keyrings_rcu(%struct.keyring_search_context* %4)
  store i32 %31, i32* %6, align 4
  %32 = call i32 (...) @rcu_read_unlock()
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %1
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.key* @ERR_CAST(i32 %37)
  store %struct.key* %38, %struct.key** %5, align 8
  %39 = load %struct.key*, %struct.key** %5, align 8
  %40 = load i32, i32* @EAGAIN, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.key* @ERR_PTR(i32 %41)
  %43 = icmp eq %struct.key* %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @ENOKEY, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.key* @ERR_PTR(i32 %46)
  store %struct.key* %47, %struct.key** %5, align 8
  br label %48

48:                                               ; preds = %44, %36
  br label %64

49:                                               ; preds = %1
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.key* @key_ref_to_ptr(i32 %50)
  store %struct.key* %51, %struct.key** %5, align 8
  %52 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %53 = load %struct.key*, %struct.key** %5, align 8
  %54 = getelementptr inbounds %struct.key, %struct.key* %53, i32 0, i32 0
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.key*, %struct.key** %5, align 8
  %59 = call i32 @key_put(%struct.key* %58)
  %60 = load i32, i32* @EKEYREVOKED, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.key* @ERR_PTR(i32 %61)
  store %struct.key* %62, %struct.key** %5, align 8
  br label %63

63:                                               ; preds = %57, %49
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.key*, %struct.key** %5, align 8
  ret %struct.key* %65
}

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @search_process_keyrings_rcu(%struct.keyring_search_context*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.key* @ERR_CAST(i32) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
