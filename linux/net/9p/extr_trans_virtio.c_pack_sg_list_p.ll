; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_pack_sg_list_p.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_trans_virtio.c_pack_sg_list_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, %struct.page**, i32, i64, i32)* @pack_sg_list_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pack_sg_list_p(%struct.scatterlist* %0, i32 %1, i32 %2, %struct.page** %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.page**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.page** %3, %struct.page*** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* %13, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  br label %29

29:                                               ; preds = %41, %7
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %29
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %17, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %18, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i64 %49
  %51 = call i32 @sg_unmark_end(%struct.scatterlist* %50)
  %52 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %53 = load i32, i32* %18, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %18, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i64 %55
  %57 = load %struct.page**, %struct.page*** %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %15, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.page*, %struct.page** %57, i64 %60
  %62 = load %struct.page*, %struct.page** %61, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @sg_set_page(%struct.scatterlist* %56, %struct.page* %62, i32 %63, i32 %64)
  store i32 0, i32* %17, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %12, align 4
  br label %29

71:                                               ; preds = %29
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %77, i64 %80
  %82 = call i32 @sg_mark_end(%struct.scatterlist* %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub nsw i32 %84, %85
  ret i32 %86
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sg_unmark_end(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
