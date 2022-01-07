; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_build_node_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_build_node_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_build_node_manager(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i32 @f2fs_kzalloc(%struct.f2fs_sb_info* %5, i32 4, i32 %6)
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = call i32 @init_node_manager(%struct.f2fs_sb_info* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %36

24:                                               ; preds = %17
  %25 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %26 = call i32 @init_free_nid_cache(%struct.f2fs_sb_info* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %33 = call i32 @load_free_nid_bitmap(%struct.f2fs_sb_info* %32)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = call i32 @f2fs_build_free_nids(%struct.f2fs_sb_info* %34, i32 1, i32 1)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %29, %22, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @init_node_manager(%struct.f2fs_sb_info*) #1

declare dso_local i32 @init_free_nid_cache(%struct.f2fs_sb_info*) #1

declare dso_local i32 @load_free_nid_bitmap(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_build_free_nids(%struct.f2fs_sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
