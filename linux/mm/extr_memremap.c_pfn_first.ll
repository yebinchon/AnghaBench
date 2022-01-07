; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memremap.c_pfn_first.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memremap.c_pfn_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_pagemap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.dev_pagemap*)* @pfn_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pfn_first(%struct.dev_pagemap* %0) #0 {
  %2 = alloca %struct.dev_pagemap*, align 8
  store %struct.dev_pagemap* %0, %struct.dev_pagemap** %2, align 8
  %3 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %4 = getelementptr inbounds %struct.dev_pagemap, %struct.dev_pagemap* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @PHYS_PFN(i32 %6)
  %8 = load %struct.dev_pagemap*, %struct.dev_pagemap** %2, align 8
  %9 = call i32 @pgmap_altmap(%struct.dev_pagemap* %8)
  %10 = call i64 @vmem_altmap_offset(i32 %9)
  %11 = add i64 %7, %10
  ret i64 %11
}

declare dso_local i64 @PHYS_PFN(i32) #1

declare dso_local i64 @vmem_altmap_offset(i32) #1

declare dso_local i32 @pgmap_altmap(%struct.dev_pagemap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
