; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_clear_page_regions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.c_ocfs2_clear_page_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.ocfs2_super = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.ocfs2_super*, i32, i32, i32)* @ocfs2_clear_page_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_clear_page_regions(%struct.page* %0, %struct.ocfs2_super* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.ocfs2_super*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %6, align 8
  store %struct.ocfs2_super* %1, %struct.ocfs2_super** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super* %14, i32 %15, i32* %12, i32* %13)
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i8* @kmap_atomic(%struct.page* %17)
  store i8* %18, i8** %11, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21, %5
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sub i32 %33, %34
  %36 = call i32 @memset(i8* %32, i32 0, i32 %35)
  br label %37

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr i8, i8* %42, i64 %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub i32 %46, %47
  %49 = call i32 @memset(i8* %45, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %41, %37
  br label %60

51:                                               ; preds = %21
  %52 = load i8*, i8** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr i8, i8* %52, i64 %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub i32 %56, %57
  %59 = call i32 @memset(i8* %55, i32 0, i32 %58)
  br label %60

60:                                               ; preds = %51, %50
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @kunmap_atomic(i8* %61)
  ret void
}

declare dso_local i32 @ocfs2_figure_cluster_boundaries(%struct.ocfs2_super*, i32, i32*, i32*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
