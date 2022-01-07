; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_kmem.h_kmem_to_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_kmem.h_kmem_to_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (i8*)* @kmem_to_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @kmem_to_page(i8* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i64 @is_vmalloc_addr(i8* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.page* @vmalloc_to_page(i8* %8)
  store %struct.page* %9, %struct.page** %2, align 8
  br label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call %struct.page* @virt_to_page(i8* %11)
  store %struct.page* %12, %struct.page** %2, align 8
  br label %13

13:                                               ; preds = %10, %7
  %14 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %14
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
