; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_has_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_has_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_has_node(%struct.ubifs_info* %0, %union.ubifs_key* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %union.ubifs_key*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %6
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %21 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @is_idx_node_in_tnc(%struct.ubifs_info* %20, %union.ubifs_key* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %51

29:                                               ; preds = %19
  %30 = load i32, i32* %13, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %13, align 4
  br label %43

33:                                               ; preds = %29
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %13, align 4
  br label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  br label %42

42:                                               ; preds = %37, %36
  br label %43

43:                                               ; preds = %42, %32
  br label %50

44:                                               ; preds = %6
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %46 = load %union.ubifs_key*, %union.ubifs_key** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @is_leaf_node_in_tnc(%struct.ubifs_info* %45, %union.ubifs_key* %46, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %44, %43
  br label %51

51:                                               ; preds = %50, %28
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %13, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_idx_node_in_tnc(%struct.ubifs_info*, %union.ubifs_key*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @is_leaf_node_in_tnc(%struct.ubifs_info*, %union.ubifs_key*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
