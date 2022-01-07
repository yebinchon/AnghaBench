; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c___do_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c___do_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.path = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ns_dentry_operations = common dso_local global i32 0, align 4
@CL_COPY_MNT_NS_FILE = common dso_local global i32 0, align 4
@MNT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mount* (%struct.path*, i32)* @__do_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mount* @__do_loopback(%struct.path* %0, i32 %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca %struct.path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.mount* @ERR_PTR(i32 %9)
  store %struct.mount* %10, %struct.mount** %6, align 8
  %11 = load %struct.path*, %struct.path** %4, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.mount* @real_mount(i32 %13)
  store %struct.mount* %14, %struct.mount** %7, align 8
  %15 = load %struct.mount*, %struct.mount** %7, align 8
  %16 = call i64 @IS_MNT_UNBINDABLE(%struct.mount* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %19, %struct.mount** %3, align 8
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.mount*, %struct.mount** %7, align 8
  %22 = call i32 @check_mnt(%struct.mount* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load %struct.path*, %struct.path** %4, align 8
  %26 = getelementptr inbounds %struct.path, %struct.path* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, @ns_dentry_operations
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %32, %struct.mount** %3, align 8
  br label %75

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %33
  %37 = load %struct.mount*, %struct.mount** %7, align 8
  %38 = load %struct.path*, %struct.path** %4, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = call i64 @has_locked_children(%struct.mount* %37, %struct.TYPE_6__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %44, %struct.mount** %3, align 8
  br label %75

45:                                               ; preds = %36, %33
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load %struct.mount*, %struct.mount** %7, align 8
  %50 = load %struct.path*, %struct.path** %4, align 8
  %51 = getelementptr inbounds %struct.path, %struct.path* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* @CL_COPY_MNT_NS_FILE, align 4
  %54 = call %struct.mount* @copy_tree(%struct.mount* %49, %struct.TYPE_6__* %52, i32 %53)
  store %struct.mount* %54, %struct.mount** %6, align 8
  br label %61

55:                                               ; preds = %45
  %56 = load %struct.mount*, %struct.mount** %7, align 8
  %57 = load %struct.path*, %struct.path** %4, align 8
  %58 = getelementptr inbounds %struct.path, %struct.path* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call %struct.mount* @clone_mnt(%struct.mount* %56, %struct.TYPE_6__* %59, i32 0)
  store %struct.mount* %60, %struct.mount** %6, align 8
  br label %61

61:                                               ; preds = %55, %48
  %62 = load %struct.mount*, %struct.mount** %6, align 8
  %63 = call i32 @IS_ERR(%struct.mount* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @MNT_LOCKED, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.mount*, %struct.mount** %6, align 8
  %69 = getelementptr inbounds %struct.mount, %struct.mount* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %67
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %65, %61
  %74 = load %struct.mount*, %struct.mount** %6, align 8
  store %struct.mount* %74, %struct.mount** %3, align 8
  br label %75

75:                                               ; preds = %73, %43, %31, %18
  %76 = load %struct.mount*, %struct.mount** %3, align 8
  ret %struct.mount* %76
}

declare dso_local %struct.mount* @ERR_PTR(i32) #1

declare dso_local %struct.mount* @real_mount(i32) #1

declare dso_local i64 @IS_MNT_UNBINDABLE(%struct.mount*) #1

declare dso_local i32 @check_mnt(%struct.mount*) #1

declare dso_local i64 @has_locked_children(%struct.mount*, %struct.TYPE_6__*) #1

declare dso_local %struct.mount* @copy_tree(%struct.mount*, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.mount* @clone_mnt(%struct.mount*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @IS_ERR(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
