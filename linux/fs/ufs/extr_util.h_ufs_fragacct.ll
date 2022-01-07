; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_fragacct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.h_ufs_fragacct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, i32*, i32)* @ufs_fragacct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_fragacct(%struct.super_block* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ufs_sb_private_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %14, align 8
  store %struct.ufs_sb_private_info* %15, %struct.ufs_sb_private_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %44, %4
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %19 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 1, %24
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %10, align 4
  br label %43

31:                                               ; preds = %22
  %32 = load i32, i32* %10, align 4
  %33 = icmp ugt i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @fs32_add(%struct.super_block* %35, i32* %39, i32 %40)
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %34, %31
  br label %43

43:                                               ; preds = %42, %28
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %16

47:                                               ; preds = %16
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %53 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @fs32_add(%struct.super_block* %57, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %50, %47
  ret void
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_add(%struct.super_block*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
