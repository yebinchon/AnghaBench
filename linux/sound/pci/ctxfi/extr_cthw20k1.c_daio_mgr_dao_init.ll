; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_dao_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_dao_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr_ctrl_blk = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SPOCTL_SR = common dso_local global i32 0, align 4
@SPOCTL_LIV = common dso_local global i32 0, align 4
@SPOCTL_RIV = common dso_local global i32 0, align 4
@SPOCTL_OS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @daio_mgr_dao_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_dao_init(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.daio_mgr_ctrl_blk*
  store %struct.daio_mgr_ctrl_blk* %9, %struct.daio_mgr_ctrl_blk** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %90

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 7
  switch i32 %14, label %47 [
    i32 0, label %15
    i32 1, label %23
    i32 2, label %31
    i32 4, label %39
  ]

15:                                               ; preds = %12
  %16 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %17 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %16, i32 0, i32 1
  %18 = load i32, i32* @SPOCTL_SR, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul i32 %19, 8
  %21 = shl i32 %18, %20
  %22 = call i32 @set_field(i32* %17, i32 %21, i32 3)
  br label %48

23:                                               ; preds = %12
  %24 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %25 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %24, i32 0, i32 1
  %26 = load i32, i32* @SPOCTL_SR, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul i32 %27, 8
  %29 = shl i32 %26, %28
  %30 = call i32 @set_field(i32* %25, i32 %29, i32 0)
  br label %48

31:                                               ; preds = %12
  %32 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %33 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %32, i32 0, i32 1
  %34 = load i32, i32* @SPOCTL_SR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul i32 %35, 8
  %37 = shl i32 %34, %36
  %38 = call i32 @set_field(i32* %33, i32 %37, i32 1)
  br label %48

39:                                               ; preds = %12
  %40 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %41 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %40, i32 0, i32 1
  %42 = load i32, i32* @SPOCTL_SR, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul i32 %43, 8
  %45 = shl i32 %42, %44
  %46 = call i32 @set_field(i32* %41, i32 %45, i32 2)
  br label %48

47:                                               ; preds = %12
  br label %48

48:                                               ; preds = %47, %39, %31, %23, %15
  %49 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %50 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %49, i32 0, i32 1
  %51 = load i32, i32* @SPOCTL_LIV, align 4
  %52 = load i32, i32* %5, align 4
  %53 = mul i32 %52, 8
  %54 = shl i32 %51, %53
  %55 = load i32, i32* %6, align 4
  %56 = lshr i32 %55, 4
  %57 = and i32 %56, 1
  %58 = call i32 @set_field(i32* %50, i32 %54, i32 %57)
  %59 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %60 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %59, i32 0, i32 1
  %61 = load i32, i32* @SPOCTL_RIV, align 4
  %62 = load i32, i32* %5, align 4
  %63 = mul i32 %62, 8
  %64 = shl i32 %61, %63
  %65 = load i32, i32* %6, align 4
  %66 = lshr i32 %65, 4
  %67 = and i32 %66, 1
  %68 = call i32 @set_field(i32* %60, i32 %64, i32 %67)
  %69 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %70 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %69, i32 0, i32 1
  %71 = load i32, i32* @SPOCTL_OS, align 4
  %72 = load i32, i32* %5, align 4
  %73 = mul i32 %72, 8
  %74 = shl i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = lshr i32 %75, 3
  %77 = and i32 %76, 1
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 2
  %81 = call i32 @set_field(i32* %70, i32 %74, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 1, %82
  %84 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %7, align 8
  %85 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %83
  store i32 %89, i32* %87, align 4
  br label %91

90:                                               ; preds = %3
  br label %91

91:                                               ; preds = %90, %48
  ret i32 0
}

declare dso_local i32 @set_field(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
