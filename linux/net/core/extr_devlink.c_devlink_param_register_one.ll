; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_register_one.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_param_register_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.list_head = type { i32 }
%struct.devlink_param = type { i64, i64, i64, i32 }
%struct.devlink_param_item = type { i32, %struct.devlink_param* }

@EEXIST = common dso_local global i32 0, align 4
@DEVLINK_PARAM_CMODE_DRIVERINIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i32)* @devlink_param_register_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_param_register_one(%struct.devlink* %0, i32 %1, %struct.list_head* %2, %struct.devlink_param* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.devlink_param*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.devlink_param_item*, align 8
  store %struct.devlink* %0, %struct.devlink** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store %struct.devlink_param* %3, %struct.devlink_param** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.list_head*, %struct.list_head** %9, align 8
  %14 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %15 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @devlink_param_find_by_name(%struct.list_head* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @EEXIST, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %79

22:                                               ; preds = %5
  %23 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %24 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @DEVLINK_PARAM_CMODE_DRIVERINIT, align 4
  %27 = call i64 @BIT(i32 %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %31 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %36 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  br label %58

43:                                               ; preds = %22
  %44 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %45 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %50 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ true, %43 ], [ %53, %48 ]
  %56 = zext i1 %55 to i32
  %57 = call i32 @WARN_ON(i32 %56)
  br label %58

58:                                               ; preds = %54, %39
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.devlink_param_item* @kzalloc(i32 16, i32 %59)
  store %struct.devlink_param_item* %60, %struct.devlink_param_item** %12, align 8
  %61 = load %struct.devlink_param_item*, %struct.devlink_param_item** %12, align 8
  %62 = icmp ne %struct.devlink_param_item* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %79

66:                                               ; preds = %58
  %67 = load %struct.devlink_param*, %struct.devlink_param** %10, align 8
  %68 = load %struct.devlink_param_item*, %struct.devlink_param_item** %12, align 8
  %69 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %68, i32 0, i32 1
  store %struct.devlink_param* %67, %struct.devlink_param** %69, align 8
  %70 = load %struct.devlink_param_item*, %struct.devlink_param_item** %12, align 8
  %71 = getelementptr inbounds %struct.devlink_param_item, %struct.devlink_param_item* %70, i32 0, i32 0
  %72 = load %struct.list_head*, %struct.list_head** %9, align 8
  %73 = call i32 @list_add_tail(i32* %71, %struct.list_head* %72)
  %74 = load %struct.devlink*, %struct.devlink** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.devlink_param_item*, %struct.devlink_param_item** %12, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @devlink_param_notify(%struct.devlink* %74, i32 %75, %struct.devlink_param_item* %76, i32 %77)
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %66, %63, %19
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i64 @devlink_param_find_by_name(%struct.list_head*, i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.devlink_param_item* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @devlink_param_notify(%struct.devlink*, i32, %struct.devlink_param_item*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
