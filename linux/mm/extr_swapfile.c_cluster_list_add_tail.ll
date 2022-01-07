; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_cluster_list_add_tail.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_cluster_list_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cluster_list = type { i32, i32 }
%struct.swap_cluster_info = type { i32 }

@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_cluster_list*, %struct.swap_cluster_info*, i32)* @cluster_list_add_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cluster_list_add_tail(%struct.swap_cluster_list* %0, %struct.swap_cluster_info* %1, i32 %2) #0 {
  %4 = alloca %struct.swap_cluster_list*, align 8
  %5 = alloca %struct.swap_cluster_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.swap_cluster_info*, align 8
  %8 = alloca i32, align 4
  store %struct.swap_cluster_list* %0, %struct.swap_cluster_list** %4, align 8
  store %struct.swap_cluster_info* %1, %struct.swap_cluster_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %4, align 8
  %10 = call i64 @cluster_list_empty(%struct.swap_cluster_list* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %4, align 8
  %14 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %13, i32 0, i32 1
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cluster_set_next_flag(i32* %14, i32 %15, i32 0)
  %17 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %4, align 8
  %18 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %17, i32 0, i32 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @cluster_set_next_flag(i32* %18, i32 %19, i32 0)
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %4, align 8
  %23 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %22, i32 0, i32 0
  %24 = call i32 @cluster_next(i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %25, i64 %27
  store %struct.swap_cluster_info* %28, %struct.swap_cluster_info** %7, align 8
  %29 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %30 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %29, i32 0, i32 0
  %31 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %32 = call i32 @spin_lock_nested(i32* %30, i32 %31)
  %33 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cluster_set_next(%struct.swap_cluster_info* %33, i32 %34)
  %36 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %7, align 8
  %37 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %4, align 8
  %40 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @cluster_set_next_flag(i32* %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %21, %12
  ret void
}

declare dso_local i64 @cluster_list_empty(%struct.swap_cluster_list*) #1

declare dso_local i32 @cluster_set_next_flag(i32*, i32, i32) #1

declare dso_local i32 @cluster_next(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @cluster_set_next(%struct.swap_cluster_info*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
