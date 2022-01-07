; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.h_rb_hierarchy_next.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_hist.h_rb_hierarchy_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }

@HMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rb_node* (%struct.rb_node*)* @rb_hierarchy_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rb_node* @rb_hierarchy_next(%struct.rb_node* %0) #0 {
  %2 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %2, align 8
  %3 = load %struct.rb_node*, %struct.rb_node** %2, align 8
  %4 = load i32, i32* @HMD_NORMAL, align 4
  %5 = call %struct.rb_node* @__rb_hierarchy_next(%struct.rb_node* %3, i32 %4)
  ret %struct.rb_node* %5
}

declare dso_local %struct.rb_node* @__rb_hierarchy_next(%struct.rb_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
