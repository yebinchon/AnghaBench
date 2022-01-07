; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_safe_to_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_page_pool.c___page_pool_safe_to_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page_pool = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Negative(%d) inflight packet-pages\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page_pool*)* @__page_pool_safe_to_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__page_pool_safe_to_destroy(%struct.page_pool* %0) #0 {
  %2 = alloca %struct.page_pool*, align 8
  %3 = alloca i64, align 8
  store %struct.page_pool* %0, %struct.page_pool** %2, align 8
  %4 = load %struct.page_pool*, %struct.page_pool** %2, align 8
  %5 = call i64 @page_pool_inflight(%struct.page_pool* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @WARN(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @page_pool_inflight(%struct.page_pool*) #1

declare dso_local i32 @WARN(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
