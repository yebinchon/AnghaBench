; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kfifo.c_setup_sgl_buf.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kfifo.c_setup_sgl_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i8*, i32, i32)* @setup_sgl_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sgl_buf(%struct.scatterlist* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca %struct.page*, align 8
  store %struct.scatterlist* %0, %struct.scatterlist** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %87

22:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.page* @virt_to_page(i8* %23)
  store %struct.page* %24, %struct.page** %13, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @offset_in_page(i8* %25)
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %78, %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = add i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %28, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %27
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = zext i32 %39 to i64
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %7, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call %struct.page* @virt_to_page(i8* %43)
  store %struct.page* %44, %struct.page** %14, align 8
  %45 = load %struct.page*, %struct.page** %13, align 8
  %46 = call i32 @page_to_phys(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %14, align 8
  %48 = call i32 @page_to_phys(%struct.page* %47)
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 %48, %49
  %51 = icmp ne i32 %46, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %35
  %53 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @sg_set_page(%struct.scatterlist* %53, %struct.page* %54, i32 %57, i32 %58)
  %60 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %61 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %60)
  store %struct.scatterlist* %61, %struct.scatterlist** %6, align 8
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %52
  %67 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %68 = icmp eq %struct.scatterlist* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %66, %52
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %87

71:                                               ; preds = %66
  %72 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %72, %struct.page** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sub i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %71, %35
  br label %27

79:                                               ; preds = %27
  %80 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %81 = load %struct.page*, %struct.page** %13, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @sg_set_page(%struct.scatterlist* %80, %struct.page* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %79, %69, %21, %17
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, %struct.page*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
