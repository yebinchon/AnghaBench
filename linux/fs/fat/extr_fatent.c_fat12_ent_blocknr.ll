; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat12_ent_blocknr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat12_ent_blocknr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.msdos_sb_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32*, i64*)* @fat12_ent_blocknr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat12_ent_blocknr(%struct.super_block* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %11)
  store %struct.msdos_sb_info* %12, %struct.msdos_sb_info** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = ashr i32 %14, 1
  %16 = add nsw i32 %13, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fat_valid_entry(%struct.msdos_sb_info* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @WARN_ON(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %24, %28
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %32 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = ashr i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %33, %39
  %41 = load i64*, i64** %8, align 8
  store i64 %40, i64* %41, align 8
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @fat_valid_entry(%struct.msdos_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
