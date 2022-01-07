; ModuleID = '/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_map_pages.c'
source_filename = "/home/carl/AnghaBench/linux/net/xdp/extr_xdp_umem.c_xdp_umem_map_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8* }

@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdp_umem*)* @xdp_umem_map_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdp_umem_map_pages(%struct.xdp_umem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_umem*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %9 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %6
  %13 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %14 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @PageHighMem(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %12
  %23 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %24 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* @VM_MAP, align 4
  %30 = load i32, i32* @PAGE_KERNEL, align 4
  %31 = call i8* @vmap(i32* %28, i32 1, i32 %29, i32 %30)
  store i8* %31, i8** %5, align 8
  br label %41

32:                                               ; preds = %12
  %33 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %34 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @page_address(i32 %39)
  store i8* %40, i8** %5, align 8
  br label %41

41:                                               ; preds = %32, %22
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %46 = call i32 @xdp_umem_unmap_pages(%struct.xdp_umem* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %62

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.xdp_umem*, %struct.xdp_umem** %3, align 8
  %52 = getelementptr inbounds %struct.xdp_umem, %struct.xdp_umem* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i8* %50, i8** %57, align 8
  br label %58

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %6

61:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %44
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @PageHighMem(i32) #1

declare dso_local i8* @vmap(i32*, i32, i32, i32) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @xdp_umem_unmap_pages(%struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
