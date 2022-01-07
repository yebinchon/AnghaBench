; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_insert_resource_expand_to_fit.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_insert_resource_expand_to_fit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i32, i64 }

@resource_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Expanded resource %s due to conflict with %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @insert_resource_expand_to_fit(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store %struct.resource* %1, %struct.resource** %4, align 8
  %6 = load %struct.resource*, %struct.resource** %4, align 8
  %7 = getelementptr inbounds %struct.resource, %struct.resource* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %63

11:                                               ; preds = %2
  %12 = call i32 @write_lock(i32* @resource_lock)
  br label %13

13:                                               ; preds = %53, %11
  %14 = load %struct.resource*, %struct.resource** %3, align 8
  %15 = load %struct.resource*, %struct.resource** %4, align 8
  %16 = call %struct.resource* @__insert_resource(%struct.resource* %14, %struct.resource* %15)
  store %struct.resource* %16, %struct.resource** %5, align 8
  %17 = load %struct.resource*, %struct.resource** %5, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  br label %61

20:                                               ; preds = %13
  %21 = load %struct.resource*, %struct.resource** %5, align 8
  %22 = load %struct.resource*, %struct.resource** %3, align 8
  %23 = icmp eq %struct.resource* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %61

25:                                               ; preds = %20
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.resource*, %struct.resource** %4, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %4, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.resource*, %struct.resource** %5, align 8
  %41 = getelementptr inbounds %struct.resource, %struct.resource* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.resource*, %struct.resource** %4, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.resource*, %struct.resource** %5, align 8
  %49 = getelementptr inbounds %struct.resource, %struct.resource* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.resource*, %struct.resource** %4, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %47, %39
  %54 = load %struct.resource*, %struct.resource** %4, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  br label %13

61:                                               ; preds = %24, %19
  %62 = call i32 @write_unlock(i32* @resource_lock)
  br label %63

63:                                               ; preds = %61, %10
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.resource* @__insert_resource(%struct.resource*, %struct.resource*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
