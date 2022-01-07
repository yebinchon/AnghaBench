; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_nommu.c_kobjsize.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_nommu.c_kobjsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobjsize(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @virt_addr_valid(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %47

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.page* @virt_to_head_page(i8* %14)
  store %struct.page* %15, %struct.page** %4, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i64 @PageSlab(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @ksize(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %47

22:                                               ; preds = %13
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @PageCompound(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = call %struct.vm_area_struct* @find_vma(i32 %29, i64 %31)
  store %struct.vm_area_struct* %32, %struct.vm_area_struct** %5, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = icmp ne %struct.vm_area_struct* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  store i32 %42, i32* %2, align 4
  br label %47

43:                                               ; preds = %26
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @page_size(%struct.page* %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %35, %19, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @virt_addr_valid(i8*) #1

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

declare dso_local i64 @PageSlab(%struct.page*) #1

declare dso_local i32 @ksize(i8*) #1

declare dso_local i32 @PageCompound(%struct.page*) #1

declare dso_local %struct.vm_area_struct* @find_vma(i32, i64) #1

declare dso_local i32 @page_size(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
