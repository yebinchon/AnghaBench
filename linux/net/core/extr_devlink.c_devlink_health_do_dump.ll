; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink_health_reporter*, i64, i8*)* }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_health_reporter*, i8*)* @devlink_health_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_health_do_dump(%struct.devlink_health_reporter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink_health_reporter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %8 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.devlink_health_reporter*, i64, i8*)*, i32 (%struct.devlink_health_reporter*, i64, i8*)** %10, align 8
  %12 = icmp ne i32 (%struct.devlink_health_reporter*, i64, i8*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %16 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %71

20:                                               ; preds = %14
  %21 = call i64 (...) @devlink_fmsg_alloc()
  %22 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %23 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %25 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %71

32:                                               ; preds = %20
  %33 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %34 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @devlink_fmsg_obj_nest_start(i64 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %67

40:                                               ; preds = %32
  %41 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %42 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.devlink_health_reporter*, i64, i8*)*, i32 (%struct.devlink_health_reporter*, i64, i8*)** %44, align 8
  %46 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %47 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %48 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 %45(%struct.devlink_health_reporter* %46, i64 %49, i8* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %67

55:                                               ; preds = %40
  %56 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %57 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @devlink_fmsg_obj_nest_end(i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %67

63:                                               ; preds = %55
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %66 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %71

67:                                               ; preds = %62, %54, %39
  %68 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %4, align 8
  %69 = call i32 @devlink_health_dump_clear(%struct.devlink_health_reporter* %68)
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %63, %28, %19, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @devlink_fmsg_alloc(...) #1

declare dso_local i32 @devlink_fmsg_obj_nest_start(i64) #1

declare dso_local i32 @devlink_fmsg_obj_nest_end(i64) #1

declare dso_local i32 @devlink_health_dump_clear(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
