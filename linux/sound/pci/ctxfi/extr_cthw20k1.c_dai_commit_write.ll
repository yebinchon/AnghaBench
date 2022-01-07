; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_dai_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_dai_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.dai_ctrl_blk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@SRTSCTL = common dso_local global i64 0, align 8
@SRTICTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i32, i8*)* @dai_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dai_commit_write(%struct.hw* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dai_ctrl_blk*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.dai_ctrl_blk*
  store %struct.dai_ctrl_blk* %9, %struct.dai_ctrl_blk** %7, align 8
  %10 = load %struct.dai_ctrl_blk*, %struct.dai_ctrl_blk** %7, align 8
  %11 = getelementptr inbounds %struct.dai_ctrl_blk, %struct.dai_ctrl_blk* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %30

19:                                               ; preds = %16
  %20 = load %struct.hw*, %struct.hw** %4, align 8
  %21 = load i64, i64* @SRTSCTL, align 8
  %22 = load i32, i32* %5, align 4
  %23 = mul i32 4, %22
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %21, %24
  %26 = load %struct.dai_ctrl_blk*, %struct.dai_ctrl_blk** %7, align 8
  %27 = getelementptr inbounds %struct.dai_ctrl_blk, %struct.dai_ctrl_blk* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hw_write_20kx(%struct.hw* %20, i64 %25, i32 %28)
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.hw*, %struct.hw** %4, align 8
  %32 = load i64, i64* @SRTICTL, align 8
  %33 = load %struct.dai_ctrl_blk*, %struct.dai_ctrl_blk** %7, align 8
  %34 = getelementptr inbounds %struct.dai_ctrl_blk, %struct.dai_ctrl_blk* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @hw_write_20kx(%struct.hw* %31, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %19
  %38 = load %struct.dai_ctrl_blk*, %struct.dai_ctrl_blk** %7, align 8
  %39 = getelementptr inbounds %struct.dai_ctrl_blk, %struct.dai_ctrl_blk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %3
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
