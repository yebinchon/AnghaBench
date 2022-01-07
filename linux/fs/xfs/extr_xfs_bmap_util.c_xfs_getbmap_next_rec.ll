; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_getbmap_next_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_bmap_util.c_xfs_getbmap_next_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_bmbt_irec = type { i64, i64, i64 }

@DELAYSTARTBLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_bmbt_irec*, i64)* @xfs_getbmap_next_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_getbmap_next_rec(%struct.xfs_bmbt_irec* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_bmbt_irec*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.xfs_bmbt_irec* %0, %struct.xfs_bmbt_irec** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %27 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @isnullstartblock(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %18
  %32 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %33 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DELAYSTARTBLOCK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %42 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %37, %31, %18
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub nsw i64 %46, %47
  %49 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %4, align 8
  %50 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @isnullstartblock(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
