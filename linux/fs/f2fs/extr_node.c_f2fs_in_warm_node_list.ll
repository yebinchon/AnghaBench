; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_in_warm_node_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_in_warm_node_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_in_warm_node_list(%struct.f2fs_sb_info* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %6 = call i64 @NODE_MAPPING(%struct.f2fs_sb_info* %5)
  %7 = load %struct.page*, %struct.page** %4, align 8
  %8 = getelementptr inbounds %struct.page, %struct.page* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i64 @IS_DNODE(%struct.page* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = call i64 @is_cold_node(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = phi i1 [ false, %11 ], [ false, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i64 @NODE_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_DNODE(%struct.page*) #1

declare dso_local i64 @is_cold_node(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
