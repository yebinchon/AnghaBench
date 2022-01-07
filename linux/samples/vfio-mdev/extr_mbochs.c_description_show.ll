; ModuleID = '/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_description_show.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfio-mdev/extr_mbochs.c_description_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.mbochs_type = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"virtual display, %d MB video memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.device*, i8*)* @description_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @description_show(%struct.kobject* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mbochs_type*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.kobject*, %struct.kobject** %4, align 8
  %9 = call %struct.mbochs_type* @mbochs_find_type(%struct.kobject* %8)
  store %struct.mbochs_type* %9, %struct.mbochs_type** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load %struct.mbochs_type*, %struct.mbochs_type** %7, align 8
  %12 = icmp ne %struct.mbochs_type* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.mbochs_type*, %struct.mbochs_type** %7, align 8
  %15 = getelementptr inbounds %struct.mbochs_type, %struct.mbochs_type* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  br label %18

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 0, %17 ]
  %20 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret i32 %20
}

declare dso_local %struct.mbochs_type* @mbochs_find_type(%struct.kobject*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
