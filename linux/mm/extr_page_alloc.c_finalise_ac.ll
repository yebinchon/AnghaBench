; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_finalise_ac.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_alloc.c_finalise_ac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_context = type { i32, i32, i32, i32, i32 }

@__GFP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.alloc_context*)* @finalise_ac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finalise_ac(i32 %0, %struct.alloc_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alloc_context*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.alloc_context* %1, %struct.alloc_context** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @__GFP_WRITE, align 4
  %7 = and i32 %5, %6
  %8 = load %struct.alloc_context*, %struct.alloc_context** %4, align 8
  %9 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.alloc_context*, %struct.alloc_context** %4, align 8
  %11 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.alloc_context*, %struct.alloc_context** %4, align 8
  %14 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.alloc_context*, %struct.alloc_context** %4, align 8
  %17 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @first_zones_zonelist(i32 %12, i32 %15, i32 %18)
  %20 = load %struct.alloc_context*, %struct.alloc_context** %4, align 8
  %21 = getelementptr inbounds %struct.alloc_context, %struct.alloc_context* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @first_zones_zonelist(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
