; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_description_show.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mdpy.c_description_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.mdpy_type = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"virtual display, %dx%d framebuffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.device*, i8*)* @description_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @description_show(%struct.kobject* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mdpy_type*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = call %struct.mdpy_type* @mdpy_find_type(%struct.kobject* %8)
  store %struct.mdpy_type* %9, %struct.mdpy_type** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.mdpy_type*, %struct.mdpy_type** %7, align 8
  %12 = icmp ne %struct.mdpy_type* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.mdpy_type*, %struct.mdpy_type** %7, align 8
  %15 = getelementptr inbounds %struct.mdpy_type, %struct.mdpy_type* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  %20 = load %struct.mdpy_type*, %struct.mdpy_type** %7, align 8
  %21 = icmp ne %struct.mdpy_type* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.mdpy_type*, %struct.mdpy_type** %7, align 8
  %24 = getelementptr inbounds %struct.mdpy_type, %struct.mdpy_type* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %22
  %28 = phi i32 [ %25, %22 ], [ 0, %26 ]
  %29 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %28)
  ret i32 %29
}

declare dso_local %struct.mdpy_type* @mdpy_find_type(%struct.kobject*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
