; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_netdev_alloc_frag.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_netdev_alloc_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_frag_cache = type { i32 }

@netdev_alloc_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @netdev_alloc_frag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page_frag_cache*, align 8
  %4 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @SKB_DATA_ALIGN(i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = call i64 (...) @in_irq()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = call i64 (...) @irqs_disabled()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9, %1
  %13 = call %struct.page_frag_cache* @this_cpu_ptr(i32* @netdev_alloc_cache)
  store %struct.page_frag_cache* %13, %struct.page_frag_cache** %3, align 8
  %14 = load %struct.page_frag_cache*, %struct.page_frag_cache** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call i8* @page_frag_alloc(%struct.page_frag_cache* %14, i32 %15, i32 %16)
  store i8* %17, i8** %4, align 8
  br label %24

18:                                               ; preds = %9
  %19 = call i32 (...) @local_bh_disable()
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i8* @__napi_alloc_frag(i32 %20, i32 %21)
  store i8* %22, i8** %4, align 8
  %23 = call i32 (...) @local_bh_enable()
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i8*, i8** %4, align 8
  ret i8* %25
}

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local %struct.page_frag_cache* @this_cpu_ptr(i32*) #1

declare dso_local i8* @page_frag_alloc(%struct.page_frag_cache*, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i8* @__napi_alloc_frag(i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
