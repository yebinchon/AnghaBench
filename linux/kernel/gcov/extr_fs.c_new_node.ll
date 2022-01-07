; ModuleID = '/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_new_node.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/gcov/extr_fs.c_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { i32, i32, i32, i32, i32, i32 }
%struct.gcov_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@gcov_data_fops = common dso_local global i32 0, align 4
@all_head = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gcov_node* (%struct.gcov_node*, %struct.gcov_info*, i8*)* @new_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gcov_node* @new_node(%struct.gcov_node* %0, %struct.gcov_info* %1, i8* %2) #0 {
  %4 = alloca %struct.gcov_node*, align 8
  %5 = alloca %struct.gcov_node*, align 8
  %6 = alloca %struct.gcov_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_node* %0, %struct.gcov_node** %5, align 8
  store %struct.gcov_info* %1, %struct.gcov_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = add i64 24, %10
  %12 = add i64 %11, 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.gcov_node* @kzalloc(i64 %12, i32 %13)
  store %struct.gcov_node* %14, %struct.gcov_node** %8, align 8
  %15 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %16 = icmp ne %struct.gcov_node* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %81

18:                                               ; preds = %3
  %19 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %20 = icmp ne %struct.gcov_info* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @kcalloc(i32 1, i32 8, i32 %22)
  %24 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %25 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %27 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %81

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %34 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %37 = call i32 @init_node(%struct.gcov_node* %33, %struct.gcov_info* %34, i8* %35, %struct.gcov_node* %36)
  %38 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %39 = icmp ne %struct.gcov_info* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %32
  %41 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %42 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @deskew(i32 %43)
  %45 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %46 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %49 = call i32 @debugfs_create_file(i32 %44, i32 384, i32 %47, %struct.gcov_node* %48, i32* @gcov_data_fops)
  %50 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %51 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  br label %62

52:                                               ; preds = %32
  %53 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %54 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %57 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @debugfs_create_dir(i32 %55, i32 %58)
  %60 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %61 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %40
  %63 = load %struct.gcov_info*, %struct.gcov_info** %6, align 8
  %64 = icmp ne %struct.gcov_info* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %67 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %68 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @add_links(%struct.gcov_node* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %73 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %72, i32 0, i32 2
  %74 = load %struct.gcov_node*, %struct.gcov_node** %5, align 8
  %75 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %74, i32 0, i32 1
  %76 = call i32 @list_add(i32* %73, i32* %75)
  %77 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %78 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %77, i32 0, i32 0
  %79 = call i32 @list_add(i32* %78, i32* @all_head)
  %80 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  store %struct.gcov_node* %80, %struct.gcov_node** %4, align 8
  br label %85

81:                                               ; preds = %30, %17
  %82 = load %struct.gcov_node*, %struct.gcov_node** %8, align 8
  %83 = call i32 @kfree(%struct.gcov_node* %82)
  %84 = call i32 @pr_warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.gcov_node* null, %struct.gcov_node** %4, align 8
  br label %85

85:                                               ; preds = %81, %71
  %86 = load %struct.gcov_node*, %struct.gcov_node** %4, align 8
  ret %struct.gcov_node* %86
}

declare dso_local %struct.gcov_node* @kzalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_node(%struct.gcov_node*, %struct.gcov_info*, i8*, %struct.gcov_node*) #1

declare dso_local i32 @debugfs_create_file(i32, i32, i32, %struct.gcov_node*, i32*) #1

declare dso_local i32 @deskew(i32) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @add_links(%struct.gcov_node*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.gcov_node*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
