; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_vmscan.c_drop_slab_node.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_vmscan.c_drop_slab_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drop_slab_node(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %19, %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %4, align 8
  store i64 0, i64* %3, align 8
  %6 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* null, i32* null)
  store %struct.mem_cgroup* %6, %struct.mem_cgroup** %4, align 8
  br label %7

7:                                                ; preds = %14, %5
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %11 = call i64 @shrink_slab(i32 %8, i32 %9, %struct.mem_cgroup* %10, i32 0)
  %12 = load i64, i64* %3, align 8
  %13 = add i64 %12, %11
  store i64 %13, i64* %3, align 8
  br label %14

14:                                               ; preds = %7
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %16 = call %struct.mem_cgroup* @mem_cgroup_iter(i32* null, %struct.mem_cgroup* %15, i32* null)
  store %struct.mem_cgroup* %16, %struct.mem_cgroup** %4, align 8
  %17 = icmp ne %struct.mem_cgroup* %16, null
  br i1 %17, label %7, label %18

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load i64, i64* %3, align 8
  %21 = icmp ugt i64 %20, 10
  br i1 %21, label %5, label %22

22:                                               ; preds = %19
  ret void
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_iter(i32*, %struct.mem_cgroup*, i32*) #1

declare dso_local i64 @shrink_slab(i32, i32, %struct.mem_cgroup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
