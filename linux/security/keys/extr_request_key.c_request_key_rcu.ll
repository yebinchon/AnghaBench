; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_request_key_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.key_type = type { i32 }
%struct.key_tag = type { i32 }
%struct.keyring_search_context = type { i32, %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8*, i32, i32 }
%struct.TYPE_4__ = type { i8*, i32, %struct.key_tag*, %struct.key_type* }

@KEYRING_SEARCH_DO_STATE_CHECK = common dso_local global i32 0, align 4
@KEYRING_SEARCH_SKIP_EXPIRED = common dso_local global i32 0, align 4
@KEYRING_SEARCH_LOOKUP_DIRECT = common dso_local global i32 0, align 4
@key_default_cmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%s\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" = %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_key_rcu(%struct.key_type* %0, i8* %1, %struct.key_tag* %2) #0 {
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.key_tag*, align 8
  %8 = alloca %struct.keyring_search_context, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i32, align 4
  store %struct.key_type* %0, %struct.key_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.key_tag* %2, %struct.key_tag** %7, align 8
  %11 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %8, i32 0, i32 0
  %12 = load i32, i32* @KEYRING_SEARCH_DO_STATE_CHECK, align 4
  %13 = load i32, i32* @KEYRING_SEARCH_SKIP_EXPIRED, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %8, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %19 = load i32, i32* @KEYRING_SEARCH_LOOKUP_DIRECT, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %21 = load i32, i32* @key_default_cmp, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %8, i32 0, i32 2
  %23 = call i32 (...) @current_cred()
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %8, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %27, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %31 = load %struct.key_tag*, %struct.key_tag** %7, align 8
  store %struct.key_tag* %31, %struct.key_tag** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %33 = load %struct.key_type*, %struct.key_type** %5, align 8
  store %struct.key_type* %33, %struct.key_type** %32, align 8
  %34 = load %struct.key_type*, %struct.key_type** %5, align 8
  %35 = getelementptr inbounds %struct.key_type, %struct.key_type* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @kenter(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  %39 = call %struct.key* @check_cached_key(%struct.keyring_search_context* %8)
  store %struct.key* %39, %struct.key** %9, align 8
  %40 = load %struct.key*, %struct.key** %9, align 8
  %41 = icmp ne %struct.key* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load %struct.key*, %struct.key** %9, align 8
  store %struct.key* %43, %struct.key** %4, align 8
  br label %71

44:                                               ; preds = %3
  %45 = call i32 @search_process_keyrings_rcu(%struct.keyring_search_context* %8)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i64 @IS_ERR(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.key* @ERR_CAST(i32 %50)
  store %struct.key* %51, %struct.key** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @PTR_ERR(i32 %52)
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @ENOKEY, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.key* @ERR_PTR(i32 %59)
  store %struct.key* %60, %struct.key** %9, align 8
  br label %61

61:                                               ; preds = %57, %49
  br label %67

62:                                               ; preds = %44
  %63 = load i32, i32* %10, align 4
  %64 = call %struct.key* @key_ref_to_ptr(i32 %63)
  store %struct.key* %64, %struct.key** %9, align 8
  %65 = load %struct.key*, %struct.key** %9, align 8
  %66 = call i32 @cache_requested_key(%struct.key* %65)
  br label %67

67:                                               ; preds = %62, %61
  %68 = load %struct.key*, %struct.key** %9, align 8
  %69 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.key* %68)
  %70 = load %struct.key*, %struct.key** %9, align 8
  store %struct.key* %70, %struct.key** %4, align 8
  br label %71

71:                                               ; preds = %67, %42
  %72 = load %struct.key*, %struct.key** %4, align 8
  ret %struct.key* %72
}

declare dso_local i32 @current_cred(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kenter(i8*, i32, i8*) #1

declare dso_local %struct.key* @check_cached_key(%struct.keyring_search_context*) #1

declare dso_local i32 @search_process_keyrings_rcu(%struct.keyring_search_context*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local %struct.key* @ERR_CAST(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local %struct.key* @key_ref_to_ptr(i32) #1

declare dso_local i32 @cache_requested_key(%struct.key*) #1

declare dso_local i32 @kleave(i8*, %struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
