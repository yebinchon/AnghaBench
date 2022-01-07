; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_dotdot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_follow_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @follow_dotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @follow_dotdot(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  br label %5

5:                                                ; preds = %1, %40
  %6 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %7 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %8 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 2
  %10 = call i64 @path_equal(%struct.TYPE_9__* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %41

13:                                               ; preds = %5
  %14 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %19 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = icmp ne %struct.TYPE_7__* %17, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %13
  %26 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %27 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %26, i32 0, i32 0
  %28 = call i32 @path_parent_directory(%struct.TYPE_9__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %53

33:                                               ; preds = %25
  br label %41

34:                                               ; preds = %13
  %35 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 0
  %37 = call i32 @follow_up(%struct.TYPE_9__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  br label %5

41:                                               ; preds = %39, %33, %12
  %42 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 0
  %44 = call i32 @follow_mount(%struct.TYPE_9__* %43)
  %45 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %46 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %31
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @path_equal(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @path_parent_directory(%struct.TYPE_9__*) #1

declare dso_local i32 @follow_up(%struct.TYPE_9__*) #1

declare dso_local i32 @follow_mount(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
