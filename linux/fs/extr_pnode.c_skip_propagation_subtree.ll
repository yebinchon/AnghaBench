; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_pnode.c_skip_propagation_subtree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_pnode.c_skip_propagation_subtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mount* (%struct.mount*, %struct.mount*)* @skip_propagation_subtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mount* @skip_propagation_subtree(%struct.mount* %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store %struct.mount* %1, %struct.mount** %4, align 8
  %5 = load %struct.mount*, %struct.mount** %3, align 8
  %6 = call i32 @IS_MNT_NEW(%struct.mount* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 0
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.mount*, %struct.mount** %3, align 8
  %15 = call %struct.mount* @last_slave(%struct.mount* %14)
  store %struct.mount* %15, %struct.mount** %3, align 8
  br label %16

16:                                               ; preds = %13, %8, %2
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  ret %struct.mount* %17
}

declare dso_local i32 @IS_MNT_NEW(%struct.mount*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.mount* @last_slave(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
