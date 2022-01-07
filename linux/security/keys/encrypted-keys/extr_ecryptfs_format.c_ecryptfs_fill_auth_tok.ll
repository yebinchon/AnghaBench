; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_ecryptfs_format.c_ecryptfs_fill_auth_tok.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_ecryptfs_format.c_ecryptfs_fill_auth_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_auth_tok = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i64* }

@ECRYPTFS_PASSWORD = common dso_local global i32 0, align 4
@ECRYPTFS_PASSWORD_SIG_SIZE = common dso_local global i32 0, align 4
@ECRYPTFS_MAX_KEY_BYTES = common dso_local global i32 0, align 4
@ECRYPTFS_SESSION_KEY_ENCRYPTION_KEY_SET = common dso_local global i32 0, align 4
@PGP_DIGEST_ALGO_SHA512 = common dso_local global i32 0, align 4
@ECRYPTFS_PERSISTENT_PASSWORD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_fill_auth_tok(%struct.ecryptfs_auth_tok* %0, i8* %1) #0 {
  %3 = alloca %struct.ecryptfs_auth_tok*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ecryptfs_auth_tok* %0, %struct.ecryptfs_auth_tok** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @ecryptfs_get_versions(i32* %5, i32* %6, i32* null)
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 %8, 8
  %10 = and i32 %9, 65280
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 255
  %13 = or i32 %10, %12
  %14 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @ECRYPTFS_PASSWORD, align 4
  %17 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %20 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @ECRYPTFS_PASSWORD_SIG_SIZE, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  %28 = load i32, i32* @ECRYPTFS_MAX_KEY_BYTES, align 4
  %29 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %30 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* @ECRYPTFS_SESSION_KEY_ENCRYPTION_KEY_SET, align 4
  %34 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %35 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 8
  %40 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %41 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %46 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @PGP_DIGEST_ALGO_SHA512, align 4
  %49 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %50 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* @ECRYPTFS_PERSISTENT_PASSWORD, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ecryptfs_auth_tok*, %struct.ecryptfs_auth_tok** %3, align 8
  %56 = getelementptr inbounds %struct.ecryptfs_auth_tok, %struct.ecryptfs_auth_tok* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %54
  store i32 %60, i32* %58, align 8
  ret i32 0
}

declare dso_local i32 @ecryptfs_get_versions(i32*, i32*, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
