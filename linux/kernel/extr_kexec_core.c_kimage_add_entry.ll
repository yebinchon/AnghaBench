; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_add_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_core.c_kimage_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kimage = type { i32*, i32* }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KIMAGE_NO_DEST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IND_INDIRECTION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i32)* @kimage_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kimage_add_entry(%struct.kimage* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.page*, align 8
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kimage*, %struct.kimage** %4, align 8
  %9 = getelementptr inbounds %struct.kimage, %struct.kimage* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.kimage*, %struct.kimage** %4, align 8
  %15 = getelementptr inbounds %struct.kimage, %struct.kimage* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %15, align 8
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.kimage*, %struct.kimage** %4, align 8
  %20 = getelementptr inbounds %struct.kimage, %struct.kimage* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.kimage*, %struct.kimage** %4, align 8
  %23 = getelementptr inbounds %struct.kimage, %struct.kimage* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.kimage*, %struct.kimage** %4, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @KIMAGE_NO_DEST, align 4
  %30 = call %struct.page* @kimage_alloc_page(%struct.kimage* %27, i32 %28, i32 %29)
  store %struct.page* %30, %struct.page** %7, align 8
  %31 = load %struct.page*, %struct.page** %7, align 8
  %32 = icmp ne %struct.page* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %26
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i32* @page_address(%struct.page* %37)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @virt_to_boot_phys(i32* %39)
  %41 = load i32, i32* @IND_INDIRECTION, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.kimage*, %struct.kimage** %4, align 8
  %44 = getelementptr inbounds %struct.kimage, %struct.kimage* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  store i32 %42, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.kimage*, %struct.kimage** %4, align 8
  %48 = getelementptr inbounds %struct.kimage, %struct.kimage* %47, i32 0, i32 0
  store i32* %46, i32** %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load %struct.kimage*, %struct.kimage** %4, align 8
  %56 = getelementptr inbounds %struct.kimage, %struct.kimage* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %36, %18
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.kimage*, %struct.kimage** %4, align 8
  %60 = getelementptr inbounds %struct.kimage, %struct.kimage* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32 %58, i32* %61, align 4
  %62 = load %struct.kimage*, %struct.kimage** %4, align 8
  %63 = getelementptr inbounds %struct.kimage, %struct.kimage* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %63, align 8
  %66 = load %struct.kimage*, %struct.kimage** %4, align 8
  %67 = getelementptr inbounds %struct.kimage, %struct.kimage* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32 0, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %33
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.page* @kimage_alloc_page(%struct.kimage*, i32, i32) #1

declare dso_local i32* @page_address(%struct.page*) #1

declare dso_local i32 @virt_to_boot_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
