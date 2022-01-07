; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_resource_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, %struct.list_head }
%struct.list_head = type { i32 }
%struct.devlink_resource_size_params = type { i32 }
%struct.devlink_resource = type { i8*, i32, i32, %struct.list_head, i32, i64, i64, i64, %struct.devlink_resource* }

@DEVLINK_RESOURCE_ID_PARENT_TOP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_resource_register(%struct.devlink* %0, i8* %1, i64 %2, i64 %3, i64 %4, %struct.devlink_resource_size_params* %5) #0 {
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.devlink_resource_size_params*, align 8
  %13 = alloca %struct.devlink_resource*, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.devlink_resource*, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.devlink_resource_size_params* %5, %struct.devlink_resource_size_params** %12, align 8
  store i32 0, i32* %16, align 4
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @DEVLINK_RESOURCE_ID_PARENT_TOP, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %15, align 4
  %22 = load %struct.devlink*, %struct.devlink** %7, align 8
  %23 = getelementptr inbounds %struct.devlink, %struct.devlink* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.devlink*, %struct.devlink** %7, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %25, i32* null, i64 %26)
  store %struct.devlink_resource* %27, %struct.devlink_resource** %13, align 8
  %28 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %29 = icmp ne %struct.devlink_resource* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %16, align 4
  br label %91

33:                                               ; preds = %6
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.devlink_resource* @kzalloc(i32 56, i32 %34)
  store %struct.devlink_resource* %35, %struct.devlink_resource** %13, align 8
  %36 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %37 = icmp ne %struct.devlink_resource* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %16, align 4
  br label %91

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.devlink*, %struct.devlink** %7, align 8
  %46 = getelementptr inbounds %struct.devlink, %struct.devlink* %45, i32 0, i32 1
  store %struct.list_head* %46, %struct.list_head** %14, align 8
  br label %65

47:                                               ; preds = %41
  %48 = load %struct.devlink*, %struct.devlink** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %48, i32* null, i64 %49)
  store %struct.devlink_resource* %50, %struct.devlink_resource** %17, align 8
  %51 = load %struct.devlink_resource*, %struct.devlink_resource** %17, align 8
  %52 = icmp ne %struct.devlink_resource* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.devlink_resource*, %struct.devlink_resource** %17, align 8
  %55 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %54, i32 0, i32 3
  store %struct.list_head* %55, %struct.list_head** %14, align 8
  %56 = load %struct.devlink_resource*, %struct.devlink_resource** %17, align 8
  %57 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %58 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %57, i32 0, i32 8
  store %struct.devlink_resource* %56, %struct.devlink_resource** %58, align 8
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %61 = call i32 @kfree(%struct.devlink_resource* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  br label %91

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %68 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %71 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %70, i32 0, i32 7
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %74 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %73, i32 0, i32 6
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %77 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %79 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %81 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %80, i32 0, i32 4
  %82 = load %struct.devlink_resource_size_params*, %struct.devlink_resource_size_params** %12, align 8
  %83 = call i32 @memcpy(i32* %81, %struct.devlink_resource_size_params* %82, i32 4)
  %84 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %85 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %84, i32 0, i32 3
  %86 = call i32 @INIT_LIST_HEAD(%struct.list_head* %85)
  %87 = load %struct.devlink_resource*, %struct.devlink_resource** %13, align 8
  %88 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %87, i32 0, i32 2
  %89 = load %struct.list_head*, %struct.list_head** %14, align 8
  %90 = call i32 @list_add_tail(i32* %88, %struct.list_head* %89)
  br label %91

91:                                               ; preds = %65, %59, %38, %30
  %92 = load %struct.devlink*, %struct.devlink** %7, align 8
  %93 = getelementptr inbounds %struct.devlink, %struct.devlink* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %16, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink_resource* @devlink_resource_find(%struct.devlink*, i32*, i64) #1

declare dso_local %struct.devlink_resource* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.devlink_resource*) #1

declare dso_local i32 @memcpy(i32*, %struct.devlink_resource_size_params*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
