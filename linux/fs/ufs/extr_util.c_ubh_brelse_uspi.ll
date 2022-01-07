; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_brelse_uspi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_brelse_uspi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32 }
%struct.TYPE_2__ = type { i32, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubh_brelse_uspi(%struct.ufs_sb_private_info* %0) #0 {
  %2 = alloca %struct.ufs_sb_private_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %2, align 8
  %4 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %5 = call %struct.TYPE_2__* @USPI_UBH(%struct.ufs_sb_private_info* %4)
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %33, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %12 = call %struct.TYPE_2__* @USPI_UBH(%struct.ufs_sb_private_info* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %10, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %18 = call %struct.TYPE_2__* @USPI_UBH(%struct.ufs_sb_private_info* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @brelse(i32* %24)
  %26 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %2, align 8
  %27 = call %struct.TYPE_2__* @USPI_UBH(%struct.ufs_sb_private_info* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %3, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

36:                                               ; preds = %7, %9
  ret void
}

declare dso_local %struct.TYPE_2__* @USPI_UBH(%struct.ufs_sb_private_info*) #1

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
