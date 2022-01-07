; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_resources.c_atm_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_resources.c_atm_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32, i64, i64, i32, i32, %struct.atmdev_ops* }
%struct.device = type { i32 }
%struct.atmdev_ops = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no space for dev %s\0A\00", align 1
@atm_dev_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"atm_proc_dev_register failed for dev %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"atm_register_sysfs failed for dev %s\0A\00", align 1
@atm_devs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.atm_dev* @atm_dev_register(i8* %0, %struct.device* %1, %struct.atmdev_ops* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.atm_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.atmdev_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.atm_dev*, align 8
  %13 = alloca %struct.atm_dev*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.device* %1, %struct.device** %8, align 8
  store %struct.atmdev_ops* %2, %struct.atmdev_ops** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call %struct.atm_dev* @__alloc_atm_dev(i8* %14)
  store %struct.atm_dev* %15, %struct.atm_dev** %12, align 8
  %16 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %17 = icmp ne %struct.atm_dev* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %19)
  store %struct.atm_dev* null, %struct.atm_dev** %6, align 8
  br label %105

21:                                               ; preds = %5
  %22 = call i32 @mutex_lock(i32* @atm_dev_mutex)
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.atm_dev* @__atm_dev_lookup(i32 %26)
  store %struct.atm_dev* %27, %struct.atm_dev** %13, align 8
  %28 = load %struct.atm_dev*, %struct.atm_dev** %13, align 8
  %29 = icmp ne %struct.atm_dev* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.atm_dev*, %struct.atm_dev** %13, align 8
  %32 = call i32 @atm_dev_put(%struct.atm_dev* %31)
  %33 = call i32 @mutex_unlock(i32* @atm_dev_mutex)
  %34 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %35 = call i32 @kfree(%struct.atm_dev* %34)
  store %struct.atm_dev* null, %struct.atm_dev** %6, align 8
  br label %105

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %39 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %57

40:                                               ; preds = %21
  %41 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %42 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %49, %40
  %44 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %45 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.atm_dev* @__atm_dev_lookup(i32 %46)
  store %struct.atm_dev* %47, %struct.atm_dev** %13, align 8
  %48 = icmp ne %struct.atm_dev* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.atm_dev*, %struct.atm_dev** %13, align 8
  %51 = call i32 @atm_dev_put(%struct.atm_dev* %50)
  %52 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %53 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %43

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %36
  %58 = load %struct.atmdev_ops*, %struct.atmdev_ops** %9, align 8
  %59 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %60 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %59, i32 0, i32 5
  store %struct.atmdev_ops* %58, %struct.atmdev_ops** %60, align 8
  %61 = load i64*, i64** %11, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i64*, i64** %11, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %67 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %66, i32 0, i32 1
  store i64 %65, i64* %67, align 8
  br label %72

68:                                               ; preds = %57
  %69 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %70 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %69, i32 0, i32 1
  %71 = call i32 @memset(i64* %70, i32 0, i32 8)
  br label %72

72:                                               ; preds = %68, %63
  %73 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %74 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %73, i32 0, i32 2
  %75 = call i32 @memset(i64* %74, i32 0, i32 8)
  %76 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %77 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %76, i32 0, i32 4
  %78 = call i32 @refcount_set(i32* %77, i32 1)
  %79 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %80 = call i64 @atm_proc_dev_register(%struct.atm_dev* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %83)
  br label %102

85:                                               ; preds = %72
  %86 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = call i64 @atm_register_sysfs(%struct.atm_dev* %86, %struct.device* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %91)
  %93 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %94 = call i32 @atm_proc_dev_deregister(%struct.atm_dev* %93)
  br label %102

95:                                               ; preds = %85
  %96 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %97 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %96, i32 0, i32 3
  %98 = call i32 @list_add_tail(i32* %97, i32* @atm_devs)
  br label %99

99:                                               ; preds = %102, %95
  %100 = call i32 @mutex_unlock(i32* @atm_dev_mutex)
  %101 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  store %struct.atm_dev* %101, %struct.atm_dev** %6, align 8
  br label %105

102:                                              ; preds = %90, %82
  %103 = load %struct.atm_dev*, %struct.atm_dev** %12, align 8
  %104 = call i32 @kfree(%struct.atm_dev* %103)
  store %struct.atm_dev* null, %struct.atm_dev** %12, align 8
  br label %99

105:                                              ; preds = %99, %30, %18
  %106 = load %struct.atm_dev*, %struct.atm_dev** %6, align 8
  ret %struct.atm_dev* %106
}

declare dso_local %struct.atm_dev* @__alloc_atm_dev(i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.atm_dev* @__atm_dev_lookup(i32) #1

declare dso_local i32 @atm_dev_put(%struct.atm_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.atm_dev*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i64 @atm_proc_dev_register(%struct.atm_dev*) #1

declare dso_local i64 @atm_register_sysfs(%struct.atm_dev*, %struct.device*) #1

declare dso_local i32 @atm_proc_dev_deregister(%struct.atm_dev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
