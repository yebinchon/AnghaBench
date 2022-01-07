; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_hints_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_hints_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_hints_node = type { i32 }
%struct.objagg_hints = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.objagg_hints_node* (%struct.objagg_hints*, i8*)* @objagg_hints_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.objagg_hints_node* @objagg_hints_lookup(%struct.objagg_hints* %0, i8* %1) #0 {
  %3 = alloca %struct.objagg_hints_node*, align 8
  %4 = alloca %struct.objagg_hints*, align 8
  %5 = alloca i8*, align 8
  store %struct.objagg_hints* %0, %struct.objagg_hints** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.objagg_hints*, %struct.objagg_hints** %4, align 8
  %7 = icmp ne %struct.objagg_hints* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.objagg_hints_node* null, %struct.objagg_hints_node** %3, align 8
  br label %17

9:                                                ; preds = %2
  %10 = load %struct.objagg_hints*, %struct.objagg_hints** %4, align 8
  %11 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %10, i32 0, i32 1
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.objagg_hints*, %struct.objagg_hints** %4, align 8
  %14 = getelementptr inbounds %struct.objagg_hints, %struct.objagg_hints* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.objagg_hints_node* @rhashtable_lookup_fast(i32* %11, i8* %12, i32 %15)
  store %struct.objagg_hints_node* %16, %struct.objagg_hints_node** %3, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %3, align 8
  ret %struct.objagg_hints_node* %18
}

declare dso_local %struct.objagg_hints_node* @rhashtable_lookup_fast(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
