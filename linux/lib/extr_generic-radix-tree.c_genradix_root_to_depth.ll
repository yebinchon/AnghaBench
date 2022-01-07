; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c_genradix_root_to_depth.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c_genradix_root_to_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genradix_root = type { i32 }

@GENRADIX_DEPTH_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genradix_root*)* @genradix_root_to_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genradix_root_to_depth(%struct.genradix_root* %0) #0 {
  %2 = alloca %struct.genradix_root*, align 8
  store %struct.genradix_root* %0, %struct.genradix_root** %2, align 8
  %3 = load %struct.genradix_root*, %struct.genradix_root** %2, align 8
  %4 = ptrtoint %struct.genradix_root* %3 to i64
  %5 = load i64, i64* @GENRADIX_DEPTH_MASK, align 8
  %6 = and i64 %4, %5
  %7 = trunc i64 %6 to i32
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
