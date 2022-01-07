; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_choose_ds_for_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_choose_ds_for_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_pnfs_ds = type { i32 }
%struct.pnfs_layout_segment = type { i32 }
%struct.nfs4_ff_layout_segment = type { i32 }
%struct.nfs4_ff_layout_mirror = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_pnfs_ds* (%struct.pnfs_layout_segment*, i32, i32*, i32)* @ff_layout_choose_ds_for_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_pnfs_ds* @ff_layout_choose_ds_for_read(%struct.pnfs_layout_segment* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_pnfs_ds*, align 8
  %6 = alloca %struct.pnfs_layout_segment*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_ff_layout_segment*, align 8
  %11 = alloca %struct.nfs4_ff_layout_mirror*, align 8
  %12 = alloca %struct.nfs4_pnfs_ds*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %16 = call %struct.nfs4_ff_layout_segment* @FF_LAYOUT_LSEG(%struct.pnfs_layout_segment* %15)
  store %struct.nfs4_ff_layout_segment* %16, %struct.nfs4_ff_layout_segment** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %14, align 4
  br label %18

18:                                               ; preds = %62, %4
  %19 = load i32, i32* %14, align 4
  %20 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %10, align 8
  %21 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  %27 = load %struct.nfs4_ff_layout_segment*, %struct.nfs4_ff_layout_segment** %10, align 8
  %28 = getelementptr inbounds %struct.nfs4_ff_layout_segment, %struct.nfs4_ff_layout_segment* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment* %37, i32 %38)
  store %struct.nfs4_ff_layout_mirror* %39, %struct.nfs4_ff_layout_mirror** %11, align 8
  %40 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %6, align 8
  %41 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %11, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call %struct.nfs4_pnfs_ds* @nfs4_ff_layout_prepare_ds(%struct.pnfs_layout_segment* %40, %struct.nfs4_ff_layout_mirror* %41, i32 %42)
  store %struct.nfs4_pnfs_ds* %43, %struct.nfs4_pnfs_ds** %12, align 8
  %44 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %12, align 8
  %45 = icmp ne %struct.nfs4_pnfs_ds* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %62

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.nfs4_ff_layout_mirror*, %struct.nfs4_ff_layout_mirror** %11, align 8
  %52 = getelementptr inbounds %struct.nfs4_ff_layout_mirror, %struct.nfs4_ff_layout_mirror* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = call i64 @nfs4_test_deviceid_unavailable(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %62

58:                                               ; preds = %50, %47
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  %61 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %12, align 8
  store %struct.nfs4_pnfs_ds* %61, %struct.nfs4_pnfs_ds** %5, align 8
  br label %66

62:                                               ; preds = %57, %46
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %18

65:                                               ; preds = %18
  store %struct.nfs4_pnfs_ds* null, %struct.nfs4_pnfs_ds** %5, align 8
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.nfs4_pnfs_ds*, %struct.nfs4_pnfs_ds** %5, align 8
  ret %struct.nfs4_pnfs_ds* %67
}

declare dso_local %struct.nfs4_ff_layout_segment* @FF_LAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.nfs4_ff_layout_mirror* @FF_LAYOUT_COMP(%struct.pnfs_layout_segment*, i32) #1

declare dso_local %struct.nfs4_pnfs_ds* @nfs4_ff_layout_prepare_ds(%struct.pnfs_layout_segment*, %struct.nfs4_ff_layout_mirror*, i32) #1

declare dso_local i64 @nfs4_test_deviceid_unavailable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
