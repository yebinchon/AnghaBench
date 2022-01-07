; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_cluster_list_del_first.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_cluster_list_del_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_cluster_list = type { %struct.swap_cluster_info, %struct.swap_cluster_info }
%struct.swap_cluster_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_cluster_list*, %struct.swap_cluster_info*)* @cluster_list_del_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cluster_list_del_first(%struct.swap_cluster_list* %0, %struct.swap_cluster_info* %1) #0 {
  %3 = alloca %struct.swap_cluster_list*, align 8
  %4 = alloca %struct.swap_cluster_info*, align 8
  %5 = alloca i32, align 4
  store %struct.swap_cluster_list* %0, %struct.swap_cluster_list** %3, align 8
  store %struct.swap_cluster_info* %1, %struct.swap_cluster_info** %4, align 8
  %6 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %3, align 8
  %7 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %6, i32 0, i32 0
  %8 = call i32 @cluster_next(%struct.swap_cluster_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %3, align 8
  %10 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %9, i32 0, i32 1
  %11 = call i32 @cluster_next(%struct.swap_cluster_info* %10)
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %3, align 8
  %16 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %15, i32 0, i32 0
  %17 = call i32 @cluster_set_null(%struct.swap_cluster_info* %16)
  %18 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %3, align 8
  %19 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %18, i32 0, i32 1
  %20 = call i32 @cluster_set_null(%struct.swap_cluster_info* %19)
  br label %30

21:                                               ; preds = %2
  %22 = load %struct.swap_cluster_list*, %struct.swap_cluster_list** %3, align 8
  %23 = getelementptr inbounds %struct.swap_cluster_list, %struct.swap_cluster_list* %22, i32 0, i32 0
  %24 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %24, i64 %26
  %28 = call i32 @cluster_next(%struct.swap_cluster_info* %27)
  %29 = call i32 @cluster_set_next_flag(%struct.swap_cluster_info* %23, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %21, %14
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @cluster_next(%struct.swap_cluster_info*) #1

declare dso_local i32 @cluster_set_null(%struct.swap_cluster_info*) #1

declare dso_local i32 @cluster_set_next_flag(%struct.swap_cluster_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
