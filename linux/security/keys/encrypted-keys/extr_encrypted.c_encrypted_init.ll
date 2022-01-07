; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_encrypted_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i32, i32, i32, i64 }
%struct.ecryptfs_auth_tok = type { i32 }

@key_format_ecryptfs = common dso_local global i32 0, align 4
@ivsize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encrypted_key_payload*, i8*, i8*, i8*, i8*, i8*)* @encrypted_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypted_init(%struct.encrypted_key_payload* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.encrypted_key_payload*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %6
  %18 = load i8*, i8** %10, align 8
  %19 = load i32, i32* @key_format_ecryptfs, align 4
  %20 = call i32 @strcmp(i8* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @valid_ecryptfs_desc(i8* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %7, align 4
  br label %64

29:                                               ; preds = %22
  %30 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %31 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.ecryptfs_auth_tok*
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @ecryptfs_fill_auth_tok(%struct.ecryptfs_auth_tok* %33, i8* %34)
  br label %36

36:                                               ; preds = %29, %17, %6
  %37 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @__ekey_init(%struct.encrypted_key_payload* %37, i8* %38, i8* %39, i8* %40)
  %42 = load i8*, i8** %13, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %57, label %44

44:                                               ; preds = %36
  %45 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %46 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ivsize, align 4
  %49 = call i32 @get_random_bytes(i32 %47, i32 %48)
  %50 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %51 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %54 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @get_random_bytes(i32 %52, i32 %55)
  br label %62

57:                                               ; preds = %36
  %58 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %8, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @encrypted_key_decrypt(%struct.encrypted_key_payload* %58, i8* %59, i8* %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %57, %44
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %27
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @valid_ecryptfs_desc(i8*) #1

declare dso_local i32 @ecryptfs_fill_auth_tok(%struct.ecryptfs_auth_tok*, i8*) #1

declare dso_local i32 @__ekey_init(%struct.encrypted_key_payload*, i8*, i8*, i8*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @encrypted_key_decrypt(%struct.encrypted_key_payload*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
