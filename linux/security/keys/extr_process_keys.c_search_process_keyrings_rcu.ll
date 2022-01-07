; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_search_process_keyrings_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_search_process_keyrings_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_search_context = type { %struct.cred*, %struct.TYPE_4__ }
%struct.cred = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.request_key_auth** }
%struct.request_key_auth = type { %struct.cred* }
%struct.TYPE_4__ = type { i32* }

@EACCES = common dso_local global i32 0, align 4
@key_type_request_key_auth = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @search_process_keyrings_rcu(%struct.keyring_search_context* %0) #0 {
  %2 = alloca %struct.keyring_search_context*, align 8
  %3 = alloca %struct.request_key_auth*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.keyring_search_context* %0, %struct.keyring_search_context** %2, align 8
  %8 = load i32, i32* @EACCES, align 4
  %9 = sub nsw i32 0, %8
  %10 = call i64 @ERR_PTR(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %12 = call i64 @search_cred_keyrings_rcu(%struct.keyring_search_context* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @IS_ERR(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %102

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %20 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %19, i32 0, i32 0
  %21 = load %struct.cred*, %struct.cred** %20, align 8
  %22 = getelementptr inbounds %struct.cred, %struct.cred* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %74

25:                                               ; preds = %17
  %26 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %27 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %26, i32 0, i32 0
  %28 = load %struct.cred*, %struct.cred** %27, align 8
  %29 = call %struct.cred* (...) @current_cred()
  %30 = icmp eq %struct.cred* %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %25
  %32 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %33 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, @key_type_request_key_auth
  br i1 %36, label %37, label %74

37:                                               ; preds = %31
  %38 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %39 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %38, i32 0, i32 0
  %40 = load %struct.cred*, %struct.cred** %39, align 8
  store %struct.cred* %40, %struct.cred** %7, align 8
  %41 = load %struct.cred*, %struct.cred** %7, align 8
  %42 = getelementptr inbounds %struct.cred, %struct.cred* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i64 @key_validate(%struct.TYPE_6__* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %37
  %47 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %48 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %47, i32 0, i32 0
  %49 = load %struct.cred*, %struct.cred** %48, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.request_key_auth**, %struct.request_key_auth*** %53, align 8
  %55 = getelementptr inbounds %struct.request_key_auth*, %struct.request_key_auth** %54, i64 0
  %56 = load %struct.request_key_auth*, %struct.request_key_auth** %55, align 8
  store %struct.request_key_auth* %56, %struct.request_key_auth** %3, align 8
  %57 = load %struct.request_key_auth*, %struct.request_key_auth** %3, align 8
  %58 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %57, i32 0, i32 0
  %59 = load %struct.cred*, %struct.cred** %58, align 8
  %60 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %61 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %60, i32 0, i32 0
  store %struct.cred* %59, %struct.cred** %61, align 8
  %62 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %63 = call i64 @search_cred_keyrings_rcu(%struct.keyring_search_context* %62)
  store i64 %63, i64* %4, align 8
  %64 = load %struct.cred*, %struct.cred** %7, align 8
  %65 = load %struct.keyring_search_context*, %struct.keyring_search_context** %2, align 8
  %66 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %65, i32 0, i32 0
  store %struct.cred* %64, %struct.cred** %66, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i32 @IS_ERR(i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %46
  br label %102

71:                                               ; preds = %46
  %72 = load i64, i64* %4, align 8
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %71, %37
  br label %74

74:                                               ; preds = %73, %31, %25, %17
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* @ENOKEY, align 4
  %77 = sub nsw i32 0, %76
  %78 = call i64 @ERR_PTR(i32 %77)
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %5, align 8
  %82 = load i32, i32* @ENOKEY, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i64 @ERR_PTR(i32 %83)
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @ENOKEY, align 4
  %88 = sub nsw i32 0, %87
  %89 = call i64 @ERR_PTR(i32 %88)
  store i64 %89, i64* %4, align 8
  br label %101

90:                                               ; preds = %80
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* @EACCES, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i64 @ERR_PTR(i32 %93)
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %4, align 8
  br label %100

98:                                               ; preds = %90
  %99 = load i64, i64* %6, align 8
  store i64 %99, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %86
  br label %102

102:                                              ; preds = %101, %70, %16
  %103 = load i64, i64* %4, align 8
  ret i64 %103
}

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i64 @search_cred_keyrings_rcu(%struct.keyring_search_context*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @key_validate(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
