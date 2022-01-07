; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_find_type.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_mdpy_find_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdpy_type = type { i32 }
%struct.kobject = type { i32 }

@mdpy_types = common dso_local global %struct.mdpy_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mdpy_type* (%struct.kobject*)* @mdpy_find_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mdpy_type* @mdpy_find_type(%struct.kobject* %0) #0 {
  %2 = alloca %struct.mdpy_type*, align 8
  %3 = alloca %struct.kobject*, align 8
  %4 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mdpy_type*, %struct.mdpy_type** @mdpy_types, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.mdpy_type* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load %struct.mdpy_type*, %struct.mdpy_type** @mdpy_types, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mdpy_type, %struct.mdpy_type* %11, i64 %13
  %15 = getelementptr inbounds %struct.mdpy_type, %struct.mdpy_type* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kobject*, %struct.kobject** %3, align 8
  %18 = getelementptr inbounds %struct.kobject, %struct.kobject* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i32 %16, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = load %struct.mdpy_type*, %struct.mdpy_type** @mdpy_types, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mdpy_type, %struct.mdpy_type* %23, i64 %25
  store %struct.mdpy_type* %26, %struct.mdpy_type** %2, align 8
  br label %32

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store %struct.mdpy_type* null, %struct.mdpy_type** %2, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.mdpy_type*, %struct.mdpy_type** %2, align 8
  ret %struct.mdpy_type* %33
}

declare dso_local i32 @ARRAY_SIZE(%struct.mdpy_type*) #1

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
