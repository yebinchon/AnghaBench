; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_get_persistent.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_persistent.c_key_get_persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { i32, i64 }
%struct.keyring_index_key = type { i8*, i32, i32* }
%struct.key = type { i64 }

@key_type_keyring = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"_persistent.%u\00", align 1
@KEY_NEED_LINK = common dso_local global i32 0, align 4
@persistent_keyring_expiry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.user_namespace*, i32, i64)* @key_get_persistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @key_get_persistent(%struct.user_namespace* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.keyring_index_key, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [32 x i8], align 16
  %13 = alloca i64, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = call i32 @memset(%struct.keyring_index_key* %8, i32 0, i32 24)
  %15 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %8, i32 0, i32 2
  store i32* @key_type_keyring, i32** %15, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %17 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %8, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %19 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @from_kuid(%struct.user_namespace* %19, i32 %20)
  %22 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = call i32 @key_set_index_key(%struct.keyring_index_key* %8)
  %25 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %26 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %31 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @make_key_ref(i64 %32, i32 1)
  store i64 %33, i64* %10, align 8
  %34 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %35 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %34, i32 0, i32 0
  %36 = call i32 @down_read(i32* %35)
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @find_key_to_update(i64 %37, %struct.keyring_index_key* %8)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %40 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %39, i32 0, i32 0
  %41 = call i32 @up_read(i32* %40)
  %42 = load i64, i64* %11, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %63

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %48 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %47, i32 0, i32 0
  %49 = call i32 @down_write(i32* %48)
  %50 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @key_create_persistent(%struct.user_namespace* %50, i32 %51, %struct.keyring_index_key* %8)
  store i64 %52, i64* %11, align 8
  %53 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %54 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %53, i32 0, i32 0
  %55 = call i32 @up_write(i32* %54)
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @IS_ERR(i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %63

60:                                               ; preds = %46
  %61 = load i64, i64* %11, align 8
  %62 = call i64 @PTR_ERR(i64 %61)
  store i64 %62, i64* %4, align 8
  br label %91

63:                                               ; preds = %59, %44
  %64 = load i64, i64* %11, align 8
  %65 = call i32 (...) @current_cred()
  %66 = load i32, i32* @KEY_NEED_LINK, align 4
  %67 = call i64 @key_task_permission(i64 %64, i32 %65, i32 %66)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load i64, i64* %11, align 8
  %72 = call %struct.key* @key_ref_to_ptr(i64 %71)
  store %struct.key* %72, %struct.key** %9, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call %struct.key* @key_ref_to_ptr(i64 %73)
  %75 = load %struct.key*, %struct.key** %9, align 8
  %76 = call i64 @key_link(%struct.key* %74, %struct.key* %75)
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %70
  %80 = load %struct.key*, %struct.key** %9, align 8
  %81 = load i32, i32* @persistent_keyring_expiry, align 4
  %82 = call i32 @key_set_timeout(%struct.key* %80, i32 %81)
  %83 = load %struct.key*, %struct.key** %9, align 8
  %84 = getelementptr inbounds %struct.key, %struct.key* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %79, %70
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @key_ref_put(i64 %88)
  %90 = load i64, i64* %13, align 8
  store i64 %90, i64* %4, align 8
  br label %91

91:                                               ; preds = %87, %60
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local i32 @memset(%struct.keyring_index_key*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @from_kuid(%struct.user_namespace*, i32) #1

declare dso_local i32 @key_set_index_key(%struct.keyring_index_key*) #1

declare dso_local i64 @make_key_ref(i64, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @find_key_to_update(i64, %struct.keyring_index_key*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @key_create_persistent(%struct.user_namespace*, i32, %struct.keyring_index_key*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @IS_ERR(i64) #1

declare dso_local i64 @PTR_ERR(i64) #1

declare dso_local i64 @key_task_permission(i64, i32, i32) #1

declare dso_local i32 @current_cred(...) #1

declare dso_local %struct.key* @key_ref_to_ptr(i64) #1

declare dso_local i64 @key_link(%struct.key*, %struct.key*) #1

declare dso_local i32 @key_set_timeout(%struct.key*, i32) #1

declare dso_local i32 @key_ref_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
