; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_current_chrooted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_current_chrooted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.path = type { i32, %struct.TYPE_6__* }

@current = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @current_chrooted() #0 {
  %1 = alloca %struct.path, align 8
  %2 = alloca %struct.path, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.path, %struct.path* %1, i32 0, i32 1
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %12, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %1, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.path, %struct.path* %1, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = call i32 @path_get(%struct.path* %1)
  br label %19

19:                                               ; preds = %29, %0
  %20 = getelementptr inbounds %struct.path, %struct.path* %1, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @d_mountpoint(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i64 @follow_down_one(%struct.path* %1)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  br label %19

30:                                               ; preds = %27
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_fs_root(i32 %33, %struct.path* %2)
  %35 = call i32 @path_equal(%struct.path* %2, %struct.path* %1)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  %39 = call i32 @path_put(%struct.path* %2)
  %40 = call i32 @path_put(%struct.path* %1)
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i64 @d_mountpoint(i32) #1

declare dso_local i64 @follow_down_one(%struct.path*) #1

declare dso_local i32 @get_fs_root(i32, %struct.path*) #1

declare dso_local i32 @path_equal(%struct.path*, %struct.path*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
