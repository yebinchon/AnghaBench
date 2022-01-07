; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_release_private.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_locks.c_locks_release_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32*)* }
%struct.TYPE_3__ = type { i32 (%struct.file_lock*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_release_private(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 7
  %5 = call i32 @waitqueue_active(i32* %4)
  %6 = call i32 @BUG_ON(i32 %5)
  %7 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %8 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 6
  %9 = call i32 @list_empty(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 5
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 4
  %23 = call i32 @list_empty(i32* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %29 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %28, i32 0, i32 3
  %30 = call i32 @hlist_unhashed(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %36 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %1
  %40 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %43, align 8
  %45 = icmp ne i32 (%struct.file_lock*)* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %48 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.file_lock*)*, i32 (%struct.file_lock*)** %50, align 8
  %52 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %53 = call i32 %51(%struct.file_lock* %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %56 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %55, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %56, align 8
  br label %57

57:                                               ; preds = %54, %1
  %58 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %59 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %84

62:                                               ; preds = %57
  %63 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %64 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32 (i32*)*, i32 (i32*)** %66, align 8
  %68 = icmp ne i32 (i32*)* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %71 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (i32*)*, i32 (i32*)** %73, align 8
  %75 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %76 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 %74(i32* %77)
  %79 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %80 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %79, i32 0, i32 1
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %69, %62
  %82 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %83 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %82, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %83, align 8
  br label %84

84:                                               ; preds = %81, %57
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
