; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_xent_key_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_xent_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 (i32, i32)* }
%union.ubifs_key = type { i32* }
%struct.fscrypt_name = type { i32 }

@UBIFS_S_KEY_HASH_MASK = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_HASH_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*)* @xent_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xent_key_init(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, %struct.fscrypt_name* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fscrypt_name*, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fscrypt_name* %3, %struct.fscrypt_name** %8, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.fscrypt_name*, %struct.fscrypt_name** %8, align 8
  %14 = call i32 @fname_name(%struct.fscrypt_name* %13)
  %15 = load %struct.fscrypt_name*, %struct.fscrypt_name** %8, align 8
  %16 = call i32 @fname_len(%struct.fscrypt_name* %15)
  %17 = call i32 %12(i32 %14, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @UBIFS_S_KEY_HASH_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubifs_assert(%struct.ubifs_info* %18, i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %29 = bitcast %union.ubifs_key* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %34 = load i32, i32* @UBIFS_S_KEY_HASH_BITS, align 4
  %35 = shl i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %38 = bitcast %union.ubifs_key* %37 to i32**
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 %36, i32* %40, align 4
  ret void
}

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
