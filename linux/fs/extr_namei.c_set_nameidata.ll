; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_set_nameidata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_set_nameidata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.nameidata* }
%struct.nameidata = type { i32, %struct.nameidata*, i32, %struct.filename*, i32, i32 }
%struct.filename = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameidata*, i32, %struct.filename*)* @set_nameidata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_nameidata(%struct.nameidata* %0, i32 %1, %struct.filename* %2) #0 {
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filename*, align 8
  %7 = alloca %struct.nameidata*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.filename* %2, %struct.filename** %6, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  store %struct.nameidata* %10, %struct.nameidata** %7, align 8
  %11 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %12 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %18 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.filename*, %struct.filename** %6, align 8
  %20 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 3
  store %struct.filename* %19, %struct.filename** %21, align 8
  %22 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %23 = icmp ne %struct.nameidata* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 1
  store %struct.nameidata* %33, %struct.nameidata** %35, align 8
  %36 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.nameidata* %36, %struct.nameidata** %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
