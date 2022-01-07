; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_params_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_params_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.list_head = type { i32 }
%struct.devlink_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i64, i32, i32)* @__devlink_params_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_params_register(%struct.devlink* %0, i32 %1, %struct.list_head* %2, %struct.devlink_param* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.devlink*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct.devlink_param*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.devlink_param*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.list_head* %2, %struct.list_head** %11, align 8
  store %struct.devlink_param* %3, %struct.devlink_param** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.devlink_param*, %struct.devlink_param** %12, align 8
  store %struct.devlink_param* %19, %struct.devlink_param** %16, align 8
  %20 = load %struct.devlink*, %struct.devlink** %9, align 8
  %21 = getelementptr inbounds %struct.devlink, %struct.devlink* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %45, %7
  %24 = load i32, i32* %17, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %13, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %30 = call i32 @devlink_param_verify(%struct.devlink_param* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %54

34:                                               ; preds = %28
  %35 = load %struct.devlink*, %struct.devlink** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.list_head*, %struct.list_head** %11, align 8
  %38 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @devlink_param_register_one(%struct.devlink* %35, i32 %36, %struct.list_head* %37, %struct.devlink_param* %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %54

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %17, align 4
  %48 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %49 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %48, i32 1
  store %struct.devlink_param* %49, %struct.devlink_param** %16, align 8
  br label %23

50:                                               ; preds = %23
  %51 = load %struct.devlink*, %struct.devlink** %9, align 8
  %52 = getelementptr inbounds %struct.devlink, %struct.devlink* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %8, align 4
  br label %82

54:                                               ; preds = %43, %33
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %77

58:                                               ; preds = %54
  %59 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %60 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %59, i32 -1
  store %struct.devlink_param* %60, %struct.devlink_param** %16, align 8
  br label %61

61:                                               ; preds = %71, %58
  %62 = load i32, i32* %17, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  %65 = load %struct.devlink*, %struct.devlink** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.list_head*, %struct.list_head** %11, align 8
  %68 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @devlink_param_unregister_one(%struct.devlink* %65, i32 %66, %struct.list_head* %67, %struct.devlink_param* %68, i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %17, align 4
  %74 = load %struct.devlink_param*, %struct.devlink_param** %16, align 8
  %75 = getelementptr inbounds %struct.devlink_param, %struct.devlink_param* %74, i32 -1
  store %struct.devlink_param* %75, %struct.devlink_param** %16, align 8
  br label %61

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %57
  %78 = load %struct.devlink*, %struct.devlink** %9, align 8
  %79 = getelementptr inbounds %struct.devlink, %struct.devlink* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %18, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %77, %50
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_param_verify(%struct.devlink_param*) #1

declare dso_local i32 @devlink_param_register_one(%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devlink_param_unregister_one(%struct.devlink*, i32, %struct.list_head*, %struct.devlink_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
