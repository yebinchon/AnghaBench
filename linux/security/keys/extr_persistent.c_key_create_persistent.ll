; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_create_persistent.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_create_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.key* }
%struct.key = type { i32 }
%struct.keyring_index_key = type { i32 }

@INVALID_GID = common dso_local global i32 0, align 4
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_POS_SETATTR = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_ALLOC_NOT_IN_QUOTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.user_namespace*, i32, %struct.keyring_index_key*)* @key_create_persistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @key_create_persistent(%struct.user_namespace* %0, i32 %1, %struct.keyring_index_key* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.keyring_index_key*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.keyring_index_key* %2, %struct.keyring_index_key** %7, align 8
  %12 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %13 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %12, i32 0, i32 0
  %14 = load %struct.key*, %struct.key** %13, align 8
  %15 = icmp ne %struct.key* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %18 = call i64 @key_create_persistent_register(%struct.user_namespace* %17)
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @ERR_PTR(i64 %22)
  store i64 %23, i64* %4, align 8
  br label %67

24:                                               ; preds = %16
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %27 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %26, i32 0, i32 0
  %28 = load %struct.key*, %struct.key** %27, align 8
  %29 = call i64 @make_key_ref(%struct.key* %28, i32 1)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.keyring_index_key*, %struct.keyring_index_key** %7, align 8
  %32 = call i64 @find_key_to_update(i64 %30, %struct.keyring_index_key* %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %4, align 8
  br label %67

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load %struct.keyring_index_key*, %struct.keyring_index_key** %7, align 8
  %40 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @INVALID_GID, align 4
  %44 = call i32 (...) @current_cred()
  %45 = load i32, i32* @KEY_POS_ALL, align 4
  %46 = load i32, i32* @KEY_POS_SETATTR, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  %49 = load i32, i32* @KEY_USR_VIEW, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @KEY_USR_READ, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @KEY_ALLOC_NOT_IN_QUOTA, align 4
  %54 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %55 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %54, i32 0, i32 0
  %56 = load %struct.key*, %struct.key** %55, align 8
  %57 = call %struct.key* @keyring_alloc(i32 %41, i32 %42, i32 %43, i32 %44, i32 %52, i32 %53, i32* null, %struct.key* %56)
  store %struct.key* %57, %struct.key** %8, align 8
  %58 = load %struct.key*, %struct.key** %8, align 8
  %59 = call i64 @IS_ERR(%struct.key* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %38
  %62 = load %struct.key*, %struct.key** %8, align 8
  %63 = call i64 @ERR_CAST(%struct.key* %62)
  store i64 %63, i64* %4, align 8
  br label %67

64:                                               ; preds = %38
  %65 = load %struct.key*, %struct.key** %8, align 8
  %66 = call i64 @make_key_ref(%struct.key* %65, i32 1)
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %64, %61, %35, %21
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i64 @key_create_persistent_register(%struct.user_namespace*) #1

declare dso_local i64 @ERR_PTR(i64) #1

declare dso_local i64 @make_key_ref(%struct.key*, i32) #1

declare dso_local i64 @find_key_to_update(i64, %struct.keyring_index_key*) #1

declare dso_local %struct.key* @keyring_alloc(i32, i32, i32, i32, i32, i32, i32*, %struct.key*) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i64 @ERR_CAST(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
