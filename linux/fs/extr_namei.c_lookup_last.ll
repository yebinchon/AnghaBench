; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_last.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_lookup_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }

@LAST_NORM = common dso_local global i64 0, align 8
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @lookup_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_last(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %3 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %4 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @LAST_NORM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %10 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %12, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %22 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %20, %8, %1
  %29 = load i32, i32* @LOOKUP_PARENT, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %36 = call i32 @walk_component(%struct.nameidata* %35, i32 0)
  ret i32 %36
}

declare dso_local i32 @walk_component(%struct.nameidata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
