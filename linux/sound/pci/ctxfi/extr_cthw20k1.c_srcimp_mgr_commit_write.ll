; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_srcimp_mgr_commit_write.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_srcimp_mgr_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.srcimp_mgr_ctrl_blk = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@SRCIMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8*)* @srcimp_mgr_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_mgr_commit_write(%struct.hw* %0, i8* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.srcimp_mgr_ctrl_blk*, align 8
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.srcimp_mgr_ctrl_blk*
  store %struct.srcimp_mgr_ctrl_blk* %7, %struct.srcimp_mgr_ctrl_blk** %5, align 8
  %8 = load %struct.srcimp_mgr_ctrl_blk*, %struct.srcimp_mgr_ctrl_blk** %5, align 8
  %9 = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, %struct.srcimp_mgr_ctrl_blk* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.hw*, %struct.hw** %3, align 8
  %16 = load i64, i64* @SRCIMAP, align 8
  %17 = load %struct.srcimp_mgr_ctrl_blk*, %struct.srcimp_mgr_ctrl_blk** %5, align 8
  %18 = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, %struct.srcimp_mgr_ctrl_blk* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 256
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %16, %22
  %24 = load %struct.srcimp_mgr_ctrl_blk*, %struct.srcimp_mgr_ctrl_blk** %5, align 8
  %25 = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, %struct.srcimp_mgr_ctrl_blk* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hw_write_20kx(%struct.hw* %15, i64 %23, i32 %27)
  %29 = load %struct.srcimp_mgr_ctrl_blk*, %struct.srcimp_mgr_ctrl_blk** %5, align 8
  %30 = getelementptr inbounds %struct.srcimp_mgr_ctrl_blk, %struct.srcimp_mgr_ctrl_blk* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %14, %2
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
