; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_xent_key_init_flash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_xent_key_init_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 (i32, i32)* }
%struct.fscrypt_name = type { i32 }
%union.ubifs_key = type { i8** }

@UBIFS_S_KEY_HASH_MASK = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_HASH_BITS = common dso_local global i32 0, align 4
@UBIFS_MAX_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, i8*, i32, %struct.fscrypt_name*)* @xent_key_init_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xent_key_init_flash(%struct.ubifs_info* %0, i8* %1, i32 %2, %struct.fscrypt_name* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fscrypt_name*, align 8
  %9 = alloca %union.ubifs_key*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fscrypt_name* %3, %struct.fscrypt_name** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %union.ubifs_key*
  store %union.ubifs_key* %12, %union.ubifs_key** %9, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32 (i32, i32)*, i32 (i32, i32)** %14, align 8
  %16 = load %struct.fscrypt_name*, %struct.fscrypt_name** %8, align 8
  %17 = call i32 @fname_name(%struct.fscrypt_name* %16)
  %18 = load %struct.fscrypt_name*, %struct.fscrypt_name** %8, align 8
  %19 = call i32 @fname_len(%struct.fscrypt_name* %18)
  %20 = call i32 %15(i32 %17, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @UBIFS_S_KEY_HASH_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @ubifs_assert(%struct.ubifs_info* %21, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @cpu_to_le32(i32 %30)
  %32 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %33 = bitcast %union.ubifs_key* %32 to i8***
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  store i8* %31, i8** %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %38 = load i32, i32* @UBIFS_S_KEY_HASH_BITS, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %union.ubifs_key*, %union.ubifs_key** %9, align 8
  %43 = bitcast %union.ubifs_key* %42 to i8***
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  store i8* %41, i8** %45, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr i8, i8* %46, i64 8
  %48 = load i64, i64* @UBIFS_MAX_KEY_LEN, align 8
  %49 = sub nsw i64 %48, 8
  %50 = call i32 @memset(i8* %47, i32 0, i64 %49)
  ret void
}

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
