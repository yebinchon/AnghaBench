; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_get_first_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zsmalloc.c_get_first_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.zspage = type { %struct.page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.zspage*)* @get_first_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_first_page(%struct.zspage* %0) #0 {
  %2 = alloca %struct.zspage*, align 8
  %3 = alloca %struct.page*, align 8
  store %struct.zspage* %0, %struct.zspage** %2, align 8
  %4 = load %struct.zspage*, %struct.zspage** %2, align 8
  %5 = getelementptr inbounds %struct.zspage, %struct.zspage* %4, i32 0, i32 0
  %6 = load %struct.page*, %struct.page** %5, align 8
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i32 @is_first_page(%struct.page* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @VM_BUG_ON_PAGE(i32 %11, %struct.page* %12)
  %14 = load %struct.page*, %struct.page** %3, align 8
  ret %struct.page* %14
}

declare dso_local i32 @VM_BUG_ON_PAGE(i32, %struct.page*) #1

declare dso_local i32 @is_first_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
