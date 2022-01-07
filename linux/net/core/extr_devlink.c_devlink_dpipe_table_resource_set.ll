; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_resource_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_dpipe_table_resource_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32, i32 }
%struct.devlink_dpipe_table = type { i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devlink_dpipe_table_resource_set(%struct.devlink* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.devlink_dpipe_table*, align 8
  %10 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.devlink*, %struct.devlink** %5, align 8
  %12 = getelementptr inbounds %struct.devlink, %struct.devlink* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.devlink*, %struct.devlink** %5, align 8
  %15 = getelementptr inbounds %struct.devlink, %struct.devlink* %14, i32 0, i32 1
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32* %15, i8* %16)
  store %struct.devlink_dpipe_table* %17, %struct.devlink_dpipe_table** %9, align 8
  %18 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %19 = icmp ne %struct.devlink_dpipe_table* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %10, align 4
  br label %32

23:                                               ; preds = %4
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %26 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %29 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %9, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %23, %20
  %33 = load %struct.devlink*, %struct.devlink** %5, align 8
  %34 = getelementptr inbounds %struct.devlink, %struct.devlink* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
