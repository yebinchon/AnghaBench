; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_free.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_generic-radix-tree.c___genradix_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__genradix = type { i32 }
%struct.genradix_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__genradix_free(%struct.__genradix* %0) #0 {
  %2 = alloca %struct.__genradix*, align 8
  %3 = alloca %struct.genradix_root*, align 8
  store %struct.__genradix* %0, %struct.__genradix** %2, align 8
  %4 = load %struct.__genradix*, %struct.__genradix** %2, align 8
  %5 = getelementptr inbounds %struct.__genradix, %struct.__genradix* %4, i32 0, i32 0
  %6 = call %struct.genradix_root* @xchg(i32* %5, i32* null)
  store %struct.genradix_root* %6, %struct.genradix_root** %3, align 8
  %7 = load %struct.genradix_root*, %struct.genradix_root** %3, align 8
  %8 = call i32 @genradix_root_to_node(%struct.genradix_root* %7)
  %9 = load %struct.genradix_root*, %struct.genradix_root** %3, align 8
  %10 = call i32 @genradix_root_to_depth(%struct.genradix_root* %9)
  %11 = call i32 @genradix_free_recurse(i32 %8, i32 %10)
  ret void
}

declare dso_local %struct.genradix_root* @xchg(i32*, i32*) #1

declare dso_local i32 @genradix_free_recurse(i32, i32) #1

declare dso_local i32 @genradix_root_to_node(%struct.genradix_root*) #1

declare dso_local i32 @genradix_root_to_depth(%struct.genradix_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
