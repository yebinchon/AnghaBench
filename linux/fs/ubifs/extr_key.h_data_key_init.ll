; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_data_key_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_key.h_data_key_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32* }

@UBIFS_S_KEY_BLOCK_MASK = common dso_local global i32 0, align 4
@UBIFS_DATA_KEY = common dso_local global i32 0, align 4
@UBIFS_S_KEY_BLOCK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %union.ubifs_key*, i32, i32)* @data_key_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_key_init(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @UBIFS_S_KEY_BLOCK_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @ubifs_assert(%struct.ubifs_info* %9, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %20 = bitcast %union.ubifs_key* %19 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @UBIFS_DATA_KEY, align 4
  %25 = load i32, i32* @UBIFS_S_KEY_BLOCK_BITS, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %23, %26
  %28 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %29 = bitcast %union.ubifs_key* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %27, i32* %31, align 4
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
