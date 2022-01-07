; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_change_type.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_change_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mount = type { i32 }

@MS_REC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MS_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32)* @do_change_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_change_type(%struct.path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.mount* @real_mount(%struct.TYPE_2__* %13)
  store %struct.mount* %14, %struct.mount** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MS_REC, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.path*, %struct.path** %4, align 8
  %19 = getelementptr inbounds %struct.path, %struct.path* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.path*, %struct.path** %4, align 8
  %22 = getelementptr inbounds %struct.path, %struct.path* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @flags_to_propagation_type(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %30
  %39 = call i32 (...) @namespace_lock()
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MS_SHARED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.mount*, %struct.mount** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @invent_group_ids(%struct.mount* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %73

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %38
  %52 = call i32 (...) @lock_mount_hash()
  %53 = load %struct.mount*, %struct.mount** %7, align 8
  store %struct.mount* %53, %struct.mount** %6, align 8
  br label %54

54:                                               ; preds = %69, %51
  %55 = load %struct.mount*, %struct.mount** %6, align 8
  %56 = icmp ne %struct.mount* %55, null
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load %struct.mount*, %struct.mount** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @change_mnt_propagation(%struct.mount* %58, i32 %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.mount*, %struct.mount** %6, align 8
  %66 = load %struct.mount*, %struct.mount** %7, align 8
  %67 = call %struct.mount* @next_mnt(%struct.mount* %65, %struct.mount* %66)
  br label %69

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi %struct.mount* [ %67, %64 ], [ null, %68 ]
  store %struct.mount* %70, %struct.mount** %6, align 8
  br label %54

71:                                               ; preds = %54
  %72 = call i32 (...) @unlock_mount_hash()
  br label %73

73:                                               ; preds = %71, %49
  %74 = call i32 (...) @namespace_unlock()
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %73, %35, %27
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.mount* @real_mount(%struct.TYPE_2__*) #1

declare dso_local i32 @flags_to_propagation_type(i32) #1

declare dso_local i32 @namespace_lock(...) #1

declare dso_local i32 @invent_group_ids(%struct.mount*, i32) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @change_mnt_propagation(%struct.mount*, i32) #1

declare dso_local %struct.mount* @next_mnt(%struct.mount*, %struct.mount*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @namespace_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
