; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_sign-file.c_read_private_key.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_sign-file.c_read_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"pkcs11:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pkcs11\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Load PKCS#11 ENGINE\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"ENGINE_init\00", align 1
@key_pass = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"PIN\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Set PKCS#11 PIN\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@pem_pw_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @read_private_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_private_key(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strncmp(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %1
  %10 = call i32 (...) @ENGINE_load_builtin_engines()
  %11 = call i32 (...) @drain_openssl_errors()
  %12 = call i32* @ENGINE_by_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (i32, i8*, ...) @ERR(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @ENGINE_init(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = call i32 (...) @drain_openssl_errors()
  br label %25

23:                                               ; preds = %9
  %24 = call i32 (i32, i8*, ...) @ERR(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i64, i64* @key_pass, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i64, i64* @key_pass, align 8
  %31 = call i32 @ENGINE_ctrl_cmd_string(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 (i32, i8*, ...) @ERR(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32* @ENGINE_load_private_key(i32* %37, i8* %38, i32* null, i32* null)
  store i32* %39, i32** %3, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = icmp ne i32* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 (i32, i8*, ...) @ERR(i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %44)
  br label %66

46:                                               ; preds = %1
  %47 = load i8*, i8** %2, align 8
  %48 = call i32* @BIO_new_file(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %48, i32** %5, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = icmp ne i32* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i32, i8*, ...) @ERR(i32 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %53)
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* @pem_pw_cb, align 4
  %57 = call i32* @PEM_read_bio_PrivateKey(i32* %55, i32* null, i32 %56, i32* null)
  store i32* %57, i32** %3, align 8
  %58 = load i32*, i32** %3, align 8
  %59 = icmp ne i32* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %2, align 8
  %63 = call i32 (i32, i8*, ...) @ERR(i32 %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %62)
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @BIO_free(i32* %64)
  br label %66

66:                                               ; preds = %46, %36
  %67 = load i32*, i32** %3, align 8
  ret i32* %67
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ENGINE_load_builtin_engines(...) #1

declare dso_local i32 @drain_openssl_errors(...) #1

declare dso_local i32* @ENGINE_by_id(i8*) #1

declare dso_local i32 @ERR(i32, i8*, ...) #1

declare dso_local i64 @ENGINE_init(i32*) #1

declare dso_local i32 @ENGINE_ctrl_cmd_string(i32*, i8*, i64, i32) #1

declare dso_local i32* @ENGINE_load_private_key(i32*, i8*, i32*, i32*) #1

declare dso_local i32* @BIO_new_file(i8*, i8*) #1

declare dso_local i32* @PEM_read_bio_PrivateKey(i32*, i32*, i32, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
