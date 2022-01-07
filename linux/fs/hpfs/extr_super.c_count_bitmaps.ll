; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_count_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_count_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@COUNT_RD_AHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @count_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_bitmaps(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 16383
  %12 = ashr i32 %11, 14
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @COUNT_RD_AHEAD, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @hpfs_prefetch_bitmap(%struct.super_block* %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %13

24:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %53, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %25
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @COUNT_RD_AHEAD, align 4
  %33 = add i32 %31, %32
  %34 = call i32 @hpfs_prefetch_bitmap(%struct.super_block* %30, i32 %33)
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = load %struct.super_block*, %struct.super_block** %2, align 8
  %37 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = call i32 @hpfs_count_one_bitmap(%struct.super_block* %35, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %3, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %25

56:                                               ; preds = %25
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @hpfs_prefetch_bitmap(%struct.super_block*, i32) #1

declare dso_local i32 @hpfs_count_one_bitmap(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
