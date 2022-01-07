; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_page_index_to_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_ocfs2.h_ocfs2_page_index_to_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64)* @ocfs2_page_index_to_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_page_index_to_clusters(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.TYPE_2__* @OCFS2_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sub i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = shl i64 %20, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  br label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @PAGE_SHIFT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = sub i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = lshr i64 %32, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %31, %27
  br label %40

40:                                               ; preds = %39, %19
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_2__* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
