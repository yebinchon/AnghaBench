; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sb_alloc_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_sb_alloc_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.superblock_smack* }
%struct.superblock_smack = type { i32*, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@smack_known_floor = common dso_local global i32 0, align 4
@smack_known_hat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @smack_sb_alloc_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_sb_alloc_security(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.superblock_smack*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.superblock_smack* @kzalloc(i32 32, i32 %5)
  store %struct.superblock_smack* %6, %struct.superblock_smack** %4, align 8
  %7 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %8 = icmp eq %struct.superblock_smack* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %14 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %13, i32 0, i32 3
  store i32* @smack_known_floor, i32** %14, align 8
  %15 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %16 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %15, i32 0, i32 2
  store i32* @smack_known_floor, i32** %16, align 8
  %17 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %18 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %17, i32 0, i32 1
  store i32* @smack_known_floor, i32** %18, align 8
  %19 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %20 = getelementptr inbounds %struct.superblock_smack, %struct.superblock_smack* %19, i32 0, i32 0
  store i32* @smack_known_hat, i32** %20, align 8
  %21 = load %struct.superblock_smack*, %struct.superblock_smack** %4, align 8
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  store %struct.superblock_smack* %21, %struct.superblock_smack** %23, align 8
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %12, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.superblock_smack* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
