; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_request_master_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_request_master_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.encrypted_key_payload = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@KEY_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@KEY_TRUSTED_PREFIX_LEN = common dso_local global i64 0, align 8
@KEY_USER_PREFIX = common dso_local global i32 0, align 4
@KEY_USER_PREFIX_LEN = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"encrypted_key: key %s not supported\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"encrypted_key: key %s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.encrypted_key_payload*, i32**, i64*)* @request_master_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @request_master_key(%struct.encrypted_key_payload* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.encrypted_key_payload*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.key* @ERR_PTR(i32 %10)
  store %struct.key* %11, %struct.key** %7, align 8
  %12 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %13 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @KEY_TRUSTED_PREFIX, align 4
  %16 = load i64, i64* @KEY_TRUSTED_PREFIX_LEN, align 8
  %17 = call i32 @strncmp(i64 %14, i32 %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %21 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @KEY_TRUSTED_PREFIX_LEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32**, i32*** %5, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = call %struct.key* @request_trusted_key(i64 %24, i32** %25, i64* %26)
  store %struct.key* %27, %struct.key** %7, align 8
  br label %47

28:                                               ; preds = %3
  %29 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %30 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @KEY_USER_PREFIX, align 4
  %33 = load i64, i64* @KEY_USER_PREFIX_LEN, align 8
  %34 = call i32 @strncmp(i64 %31, i32 %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %38 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KEY_USER_PREFIX_LEN, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32**, i32*** %5, align 8
  %43 = load i64*, i64** %6, align 8
  %44 = call %struct.key* @request_user_key(i64 %41, i32** %42, i64* %43)
  store %struct.key* %44, %struct.key** %7, align 8
  br label %46

45:                                               ; preds = %28
  br label %75

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %19
  %48 = load %struct.key*, %struct.key** %7, align 8
  %49 = call i64 @IS_ERR(%struct.key* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %69

51:                                               ; preds = %47
  %52 = load %struct.key*, %struct.key** %7, align 8
  %53 = call i32 @PTR_ERR(%struct.key* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %60 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %61)
  br label %68

63:                                               ; preds = %51
  %64 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %4, align 8
  %65 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %75

69:                                               ; preds = %47
  %70 = load i32**, i32*** %5, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dump_master_key(i32* %71, i64 %73)
  br label %75

75:                                               ; preds = %69, %68, %45
  %76 = load %struct.key*, %struct.key** %7, align 8
  ret %struct.key* %76
}

declare dso_local %struct.key* @ERR_PTR(i32) #1

declare dso_local i32 @strncmp(i64, i32, i64) #1

declare dso_local %struct.key* @request_trusted_key(i64, i32**, i64*) #1

declare dso_local %struct.key* @request_user_key(i64, i32**, i64*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @PTR_ERR(%struct.key*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i32 @dump_master_key(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
