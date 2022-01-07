; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_alloc_in_dirband.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_alloc.c_alloc_in_dirband.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hpfs_sb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @alloc_in_dirband to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_in_dirband(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hpfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block* %10)
  store %struct.hpfs_sb_info* %11, %struct.hpfs_sb_info** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %14 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %19 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %24 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %27 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %25, %28
  %30 = icmp uge i32 %22, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %36 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %34, %37
  %39 = sub i32 %38, 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %31, %21
  %41 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = lshr i32 %46, 2
  store i32 %47, i32* %6, align 4
  %48 = load %struct.super_block*, %struct.super_block** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = or i32 -16384, %49
  %51 = call i32 @alloc_in_bmp(%struct.super_block* %48, i32 %50, i32 1, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %66

55:                                               ; preds = %40
  %56 = load %struct.super_block*, %struct.super_block** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @hpfs_claim_dirband_alloc(%struct.super_block* %56, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 16383
  %61 = shl i32 %60, 2
  %62 = load %struct.hpfs_sb_info*, %struct.hpfs_sb_info** %8, align 8
  %63 = getelementptr inbounds %struct.hpfs_sb_info, %struct.hpfs_sb_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %61, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %54
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.hpfs_sb_info* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @alloc_in_bmp(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @hpfs_claim_dirband_alloc(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
