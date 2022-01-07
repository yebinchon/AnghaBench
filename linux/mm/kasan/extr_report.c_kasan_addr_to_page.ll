; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_kasan_addr_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_report.c_kasan_addr_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_OFFSET = common dso_local global i64 0, align 8
@high_memory = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.page* @kasan_addr_to_page(i8* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* @PAGE_OFFSET, align 8
  %6 = inttoptr i64 %5 to i8*
  %7 = icmp uge i8* %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** @high_memory, align 8
  %11 = icmp ult i8* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.page* @virt_to_head_page(i8* %13)
  store %struct.page* %14, %struct.page** %2, align 8
  br label %16

15:                                               ; preds = %8, %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %16

16:                                               ; preds = %15, %12
  %17 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %17
}

declare dso_local %struct.page* @virt_to_head_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
