; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_add_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { %struct.gcov_node* }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@root_node = common dso_local global %struct.gcov_node zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_info*)* @add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_node(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gcov_node*, align 8
  %7 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %2, align 8
  %8 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %9 = call i32 @gcov_info_filename(%struct.gcov_info* %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kstrdup(i32 %9, i32 %10)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %80

15:                                               ; preds = %1
  store %struct.gcov_node* @root_node, %struct.gcov_node** %6, align 8
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %62, %15
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %62

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %4, align 8
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %62

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %38 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %37, i32 0, i32 0
  %39 = load %struct.gcov_node*, %struct.gcov_node** %38, align 8
  %40 = icmp ne %struct.gcov_node* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %77

42:                                               ; preds = %36
  %43 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %44 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %43, i32 0, i32 0
  %45 = load %struct.gcov_node*, %struct.gcov_node** %44, align 8
  store %struct.gcov_node* %45, %struct.gcov_node** %6, align 8
  br label %62

46:                                               ; preds = %32
  %47 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call %struct.gcov_node* @get_child_by_name(%struct.gcov_node* %47, i8* %48)
  store %struct.gcov_node* %49, %struct.gcov_node** %7, align 8
  %50 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %51 = icmp ne %struct.gcov_node* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call %struct.gcov_node* @new_node(%struct.gcov_node* %53, %struct.gcov_info* null, i8* %54)
  store %struct.gcov_node* %55, %struct.gcov_node** %7, align 8
  %56 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %57 = icmp ne %struct.gcov_node* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %77

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  store %struct.gcov_node* %61, %struct.gcov_node** %6, align 8
  br label %62

62:                                               ; preds = %60, %42, %31, %25
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  store i8* %64, i8** %4, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %67 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = call %struct.gcov_node* @new_node(%struct.gcov_node* %66, %struct.gcov_info* %67, i8* %68)
  store %struct.gcov_node* %69, %struct.gcov_node** %7, align 8
  %70 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %71 = icmp ne %struct.gcov_node* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %77, %73
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @kfree(i8* %75)
  br label %80

77:                                               ; preds = %72, %58, %41
  %78 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %79 = call i32 @remove_node(%struct.gcov_node* %78)
  br label %74

80:                                               ; preds = %74, %14
  ret void
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.gcov_node* @get_child_by_name(%struct.gcov_node*, i8*) #1

declare dso_local %struct.gcov_node* @new_node(%struct.gcov_node*, %struct.gcov_info*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @remove_node(%struct.gcov_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
