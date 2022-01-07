; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_create_pool.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_zpool.c_zpool_create_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpool = type { i32, i32, i32, %struct.zpool_ops*, %struct.zpool_driver* }
%struct.zpool_driver = type { i64, i32 (i8*, i32, %struct.zpool_ops*, %struct.zpool.0*)* }
%struct.zpool.0 = type opaque
%struct.zpool_ops = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"creating pool type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"zpool-%s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no driver for type %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"couldn't create zpool - out of memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"couldn't create %s pool\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"created pool type %s\0A\00", align 1
@pools_lock = common dso_local global i32 0, align 4
@pools_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zpool* @zpool_create_pool(i8* %0, i8* %1, i32 %2, %struct.zpool_ops* %3) #0 {
  %5 = alloca %struct.zpool*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zpool_ops*, align 8
  %10 = alloca %struct.zpool_driver*, align 8
  %11 = alloca %struct.zpool*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.zpool_ops* %3, %struct.zpool_ops** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.zpool_driver* @zpool_get_driver(i8* %14)
  store %struct.zpool_driver* %15, %struct.zpool_driver** %10, align 8
  %16 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %17 = icmp ne %struct.zpool_driver* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @request_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call %struct.zpool_driver* @zpool_get_driver(i8* %21)
  store %struct.zpool_driver* %22, %struct.zpool_driver** %10, align 8
  br label %23

23:                                               ; preds = %18, %4
  %24 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %25 = icmp ne %struct.zpool_driver* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  store %struct.zpool* null, %struct.zpool** %5, align 8
  br label %93

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.zpool* @kmalloc(i32 32, i32 %30)
  store %struct.zpool* %31, %struct.zpool** %11, align 8
  %32 = load %struct.zpool*, %struct.zpool** %11, align 8
  %33 = icmp ne %struct.zpool* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %36 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %37 = call i32 @zpool_put_driver(%struct.zpool_driver* %36)
  store %struct.zpool* null, %struct.zpool** %5, align 8
  br label %93

38:                                               ; preds = %29
  %39 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %40 = load %struct.zpool*, %struct.zpool** %11, align 8
  %41 = getelementptr inbounds %struct.zpool, %struct.zpool* %40, i32 0, i32 4
  store %struct.zpool_driver* %39, %struct.zpool_driver** %41, align 8
  %42 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %43 = getelementptr inbounds %struct.zpool_driver, %struct.zpool_driver* %42, i32 0, i32 1
  %44 = load i32 (i8*, i32, %struct.zpool_ops*, %struct.zpool.0*)*, i32 (i8*, i32, %struct.zpool_ops*, %struct.zpool.0*)** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.zpool_ops*, %struct.zpool_ops** %9, align 8
  %48 = load %struct.zpool*, %struct.zpool** %11, align 8
  %49 = bitcast %struct.zpool* %48 to %struct.zpool.0*
  %50 = call i32 %44(i8* %45, i32 %46, %struct.zpool_ops* %47, %struct.zpool.0* %49)
  %51 = load %struct.zpool*, %struct.zpool** %11, align 8
  %52 = getelementptr inbounds %struct.zpool, %struct.zpool* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.zpool_ops*, %struct.zpool_ops** %9, align 8
  %54 = load %struct.zpool*, %struct.zpool** %11, align 8
  %55 = getelementptr inbounds %struct.zpool, %struct.zpool* %54, i32 0, i32 3
  store %struct.zpool_ops* %53, %struct.zpool_ops** %55, align 8
  %56 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %57 = getelementptr inbounds %struct.zpool_driver, %struct.zpool_driver* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %38
  %61 = load %struct.zpool_ops*, %struct.zpool_ops** %9, align 8
  %62 = icmp ne %struct.zpool_ops* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.zpool_ops*, %struct.zpool_ops** %9, align 8
  %65 = getelementptr inbounds %struct.zpool_ops, %struct.zpool_ops* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %63, %60, %38
  %69 = phi i1 [ false, %60 ], [ false, %38 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = load %struct.zpool*, %struct.zpool** %11, align 8
  %72 = getelementptr inbounds %struct.zpool, %struct.zpool* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.zpool*, %struct.zpool** %11, align 8
  %74 = getelementptr inbounds %struct.zpool, %struct.zpool* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %78)
  %80 = load %struct.zpool_driver*, %struct.zpool_driver** %10, align 8
  %81 = call i32 @zpool_put_driver(%struct.zpool_driver* %80)
  %82 = load %struct.zpool*, %struct.zpool** %11, align 8
  %83 = call i32 @kfree(%struct.zpool* %82)
  store %struct.zpool* null, %struct.zpool** %5, align 8
  br label %93

84:                                               ; preds = %68
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  %87 = call i32 @spin_lock(i32* @pools_lock)
  %88 = load %struct.zpool*, %struct.zpool** %11, align 8
  %89 = getelementptr inbounds %struct.zpool, %struct.zpool* %88, i32 0, i32 1
  %90 = call i32 @list_add(i32* %89, i32* @pools_head)
  %91 = call i32 @spin_unlock(i32* @pools_lock)
  %92 = load %struct.zpool*, %struct.zpool** %11, align 8
  store %struct.zpool* %92, %struct.zpool** %5, align 8
  br label %93

93:                                               ; preds = %84, %77, %34, %26
  %94 = load %struct.zpool*, %struct.zpool** %5, align 8
  ret %struct.zpool* %94
}

declare dso_local i32 @pr_debug(i8*, i8*) #1

declare dso_local %struct.zpool_driver* @zpool_get_driver(i8*) #1

declare dso_local i32 @request_module(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.zpool* @kmalloc(i32, i32) #1

declare dso_local i32 @zpool_put_driver(%struct.zpool_driver*) #1

declare dso_local i32 @kfree(%struct.zpool*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
