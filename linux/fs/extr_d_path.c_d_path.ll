; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c_d_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c_d_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.path = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* (%struct.TYPE_8__*, i8*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }

@current = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @d_path(%struct.path* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.path, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %8, align 8
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load %struct.path*, %struct.path** %5, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8* (%struct.TYPE_8__*, i8*, i32)*, i8* (%struct.TYPE_8__*, i8*, i32)** %27, align 8
  %29 = icmp ne i8* (%struct.TYPE_8__*, i8*, i32)* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %21
  %31 = load %struct.path*, %struct.path** %5, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = call i32 @IS_ROOT(%struct.TYPE_8__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.path*, %struct.path** %5, align 8
  %38 = getelementptr inbounds %struct.path, %struct.path* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = load %struct.path*, %struct.path** %5, align 8
  %41 = getelementptr inbounds %struct.path, %struct.path* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = icmp ne %struct.TYPE_8__* %39, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %36, %30
  %47 = load %struct.path*, %struct.path** %5, align 8
  %48 = getelementptr inbounds %struct.path, %struct.path* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8* (%struct.TYPE_8__*, i8*, i32)*, i8* (%struct.TYPE_8__*, i8*, i32)** %52, align 8
  %54 = load %struct.path*, %struct.path** %5, align 8
  %55 = getelementptr inbounds %struct.path, %struct.path* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* %53(%struct.TYPE_8__* %56, i8* %57, i32 %58)
  store i8* %59, i8** %4, align 8
  br label %76

60:                                               ; preds = %36, %21, %3
  %61 = call i32 (...) @rcu_read_lock()
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @get_fs_root_rcu(i32 %64, %struct.path* %9)
  %66 = load %struct.path*, %struct.path** %5, align 8
  %67 = call i32 @path_with_deleted(%struct.path* %66, %struct.path* %9, i8** %8, i32* %7)
  store i32 %67, i32* %10, align 4
  %68 = call i32 (...) @rcu_read_unlock()
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @ERR_PTR(i32 %72)
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i8*, i8** %8, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %74, %46
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i32 @IS_ROOT(%struct.TYPE_8__*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @get_fs_root_rcu(i32, %struct.path*) #1

declare dso_local i32 @path_with_deleted(%struct.path*, %struct.path*, i8**, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
