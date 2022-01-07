; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_resource_list_create_entry.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_resource_list_create_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource_entry = type { %struct.resource, %struct.resource*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource_entry* @resource_list_create_entry(%struct.resource* %0, i64 %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.resource_entry*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add i64 24, %6
  %8 = trunc i64 %7 to i32
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.resource_entry* @kzalloc(i32 %8, i32 %9)
  store %struct.resource_entry* %10, %struct.resource_entry** %5, align 8
  %11 = load %struct.resource_entry*, %struct.resource_entry** %5, align 8
  %12 = icmp ne %struct.resource_entry* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.resource_entry*, %struct.resource_entry** %5, align 8
  %15 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %14, i32 0, i32 2
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.resource*, %struct.resource** %3, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.resource*, %struct.resource** %3, align 8
  br label %24

21:                                               ; preds = %13
  %22 = load %struct.resource_entry*, %struct.resource_entry** %5, align 8
  %23 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %22, i32 0, i32 0
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi %struct.resource* [ %20, %19 ], [ %23, %21 ]
  %26 = load %struct.resource_entry*, %struct.resource_entry** %5, align 8
  %27 = getelementptr inbounds %struct.resource_entry, %struct.resource_entry* %26, i32 0, i32 1
  store %struct.resource* %25, %struct.resource** %27, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.resource_entry*, %struct.resource_entry** %5, align 8
  ret %struct.resource_entry* %29
}

declare dso_local %struct.resource_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
