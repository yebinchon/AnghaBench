; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_remove_info.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_remove_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, i32, i32* }
%struct.gcov_info = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"could not remove '%s' (not found)\0A\00", align 1
@gcov_persist = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_node*, %struct.gcov_info*)* @remove_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_info(%struct.gcov_node* %0, %struct.gcov_info* %1) #0 {
  %3 = alloca %struct.gcov_node*, align 8
  %4 = alloca %struct.gcov_info*, align 8
  %5 = alloca i32, align 4
  store %struct.gcov_node* %0, %struct.gcov_node** %3, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %4, align 8
  %6 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %7 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %8 = call i32 @get_info_index(%struct.gcov_node* %6, %struct.gcov_info* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %13 = call i32 @gcov_info_filename(%struct.gcov_info* %12)
  %14 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %64

15:                                               ; preds = %2
  %16 = load i64, i64* @gcov_persist, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %20 = load %struct.gcov_info*, %struct.gcov_info** %4, align 8
  %21 = call i32 @save_info(%struct.gcov_node* %19, %struct.gcov_info* %20)
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %24 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %27 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %34 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %40 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %44 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %22
  br label %64

48:                                               ; preds = %22
  %49 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %50 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %54 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %56 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %58 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %48
  %62 = load %struct.gcov_node*, %struct.gcov_node** %3, align 8
  %63 = call i32 @remove_node(%struct.gcov_node* %62)
  br label %64

64:                                               ; preds = %11, %47, %61, %48
  ret void
}

declare dso_local i32 @get_info_index(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i32 @save_info(%struct.gcov_node*, %struct.gcov_info*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @remove_node(%struct.gcov_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
