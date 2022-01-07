; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_key_and_link.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_construct_key_and_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_search_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.key = type { i32 }
%struct.key_user = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@key_type_keyring = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"cons failed\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" = key %d\00", align 1
@key_negative_timeout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.keyring_search_context*, i8*, i64, i8*, %struct.key*, i64)* @construct_key_and_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @construct_key_and_link(%struct.keyring_search_context* %0, i8* %1, i64 %2, i8* %3, %struct.key* %4, i64 %5) #0 {
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.keyring_search_context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.key_user*, align 8
  %15 = alloca %struct.key*, align 8
  %16 = alloca i32, align 4
  store %struct.keyring_search_context* %0, %struct.keyring_search_context** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.key* %4, %struct.key** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.keyring_search_context*, %struct.keyring_search_context** %8, align 8
  %19 = getelementptr inbounds %struct.keyring_search_context, %struct.keyring_search_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, @key_type_keyring
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.key* @ERR_PTR(i32 %25)
  store %struct.key* %26, %struct.key** %7, align 8
  br label %91

27:                                               ; preds = %6
  %28 = call i32 @construct_get_dest_keyring(%struct.key** %12)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %86

32:                                               ; preds = %27
  %33 = call i32 (...) @current_fsuid()
  %34 = call %struct.key_user* @key_user_lookup(i32 %33)
  store %struct.key_user* %34, %struct.key_user** %14, align 8
  %35 = load %struct.key_user*, %struct.key_user** %14, align 8
  %36 = icmp ne %struct.key_user* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %16, align 4
  br label %83

40:                                               ; preds = %32
  %41 = load %struct.keyring_search_context*, %struct.keyring_search_context** %8, align 8
  %42 = load %struct.key*, %struct.key** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.key_user*, %struct.key_user** %14, align 8
  %45 = call i32 @construct_alloc_key(%struct.keyring_search_context* %41, %struct.key* %42, i64 %43, %struct.key_user* %44, %struct.key** %15)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.key_user*, %struct.key_user** %14, align 8
  %47 = call i32 @key_user_put(%struct.key_user* %46)
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = load %struct.key*, %struct.key** %15, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load %struct.key*, %struct.key** %12, align 8
  %56 = call i32 @construct_key(%struct.key* %51, i8* %52, i64 %53, i8* %54, %struct.key* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = call i32 @kdebug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %77

61:                                               ; preds = %50
  br label %70

62:                                               ; preds = %40
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* @EINPROGRESS, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  br label %69

68:                                               ; preds = %62
  br label %83

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69, %61
  %71 = load %struct.key*, %struct.key** %12, align 8
  %72 = call i32 @key_put(%struct.key* %71)
  %73 = load %struct.key*, %struct.key** %15, align 8
  %74 = call i32 @key_serial(%struct.key* %73)
  %75 = call i32 @kleave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load %struct.key*, %struct.key** %15, align 8
  store %struct.key* %76, %struct.key** %7, align 8
  br label %91

77:                                               ; preds = %59
  %78 = load %struct.key*, %struct.key** %15, align 8
  %79 = load i32, i32* @key_negative_timeout, align 4
  %80 = call i32 @key_negate_and_link(%struct.key* %78, i32 %79, i32* null, i32* null)
  %81 = load %struct.key*, %struct.key** %15, align 8
  %82 = call i32 @key_put(%struct.key* %81)
  br label %83

83:                                               ; preds = %77, %68, %37
  %84 = load %struct.key*, %struct.key** %12, align 8
  %85 = call i32 @key_put(%struct.key* %84)
  br label %86

86:                                               ; preds = %83, %31
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %16, align 4
  %90 = call %struct.key* @ERR_PTR(i32 %89)
  store %struct.key* %90, %struct.key** %7, align 8
  br label %91

91:                                               ; preds = %86, %70, %23
  %92 = load %struct.key*, %struct.key** %7, align 8
  ret %struct.key* %92
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @construct_get_dest_keyring(%struct.key**) #1

declare dso_local %struct.key_user* @key_user_lookup(i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @construct_alloc_key(%struct.keyring_search_context*, %struct.key*, i64, %struct.key_user*, %struct.key**) #1

declare dso_local i32 @key_user_put(%struct.key_user*) #1

declare dso_local i32 @construct_key(%struct.key*, i8*, i64, i8*, %struct.key*) #1

declare dso_local i32 @kdebug(i8*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @kleave(i8*, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @key_negate_and_link(%struct.key*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
