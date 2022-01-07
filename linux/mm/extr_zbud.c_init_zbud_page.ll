; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zbud.c_init_zbud_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zbud.c_init_zbud_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zbud_header = type { i64, i32, i32, i64, i64 }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zbud_header* (%struct.page*)* @init_zbud_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zbud_header* @init_zbud_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.zbud_header*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.zbud_header* @page_address(%struct.page* %4)
  store %struct.zbud_header* %5, %struct.zbud_header** %3, align 8
  %6 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %7 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %9 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %11 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %10, i32 0, i32 2
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %14 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %13, i32 0, i32 1
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  %17 = getelementptr inbounds %struct.zbud_header, %struct.zbud_header* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.zbud_header*, %struct.zbud_header** %3, align 8
  ret %struct.zbud_header* %18
}

declare dso_local %struct.zbud_header* @page_address(%struct.page*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
