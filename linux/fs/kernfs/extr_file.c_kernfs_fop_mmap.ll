; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_fop_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_5__*, %struct.file* }
%struct.kernfs_open_file = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file.0*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file.0 = type opaque

@KERNFS_HAS_MMAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@kernfs_vm_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @kernfs_fop_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_fop_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.kernfs_open_file*, align 8
  %7 = alloca %struct.kernfs_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.kernfs_open_file* @kernfs_of(%struct.file* %9)
  store %struct.kernfs_open_file* %10, %struct.kernfs_open_file** %6, align 8
  %11 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %12 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @KERNFS_HAS_MMAP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %107

22:                                               ; preds = %2
  %23 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %24 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %29 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = call i32 @kernfs_get_active(%struct.TYPE_6__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %102

34:                                               ; preds = %22
  %35 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %36 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %35, i32 0, i32 2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = call %struct.kernfs_ops* @kernfs_ops(%struct.TYPE_6__* %37)
  store %struct.kernfs_ops* %38, %struct.kernfs_ops** %7, align 8
  %39 = load %struct.kernfs_ops*, %struct.kernfs_ops** %7, align 8
  %40 = getelementptr inbounds %struct.kernfs_ops, %struct.kernfs_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.kernfs_open_file.0*, %struct.vm_area_struct*)*, i32 (%struct.kernfs_open_file.0*, %struct.vm_area_struct*)** %40, align 8
  %42 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %43 = bitcast %struct.kernfs_open_file* %42 to %struct.kernfs_open_file.0*
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = call i32 %41(%struct.kernfs_open_file.0* %43, %struct.vm_area_struct* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %97

49:                                               ; preds = %34
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 1
  %52 = load %struct.file*, %struct.file** %51, align 8
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = icmp ne %struct.file* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %97

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  %59 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %60 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %65 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %97

72:                                               ; preds = %63, %56
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %97

87:                                               ; preds = %79, %72
  store i32 0, i32* %8, align 4
  %88 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %89 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %94 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %93, i32 0, i32 3
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %94, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 0
  store %struct.TYPE_5__* @kernfs_vm_ops, %struct.TYPE_5__** %96, align 8
  br label %97

97:                                               ; preds = %87, %86, %71, %55, %48
  %98 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %99 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i32 @kernfs_put_active(%struct.TYPE_6__* %100)
  br label %102

102:                                              ; preds = %97, %33
  %103 = load %struct.kernfs_open_file*, %struct.kernfs_open_file** %6, align 8
  %104 = getelementptr inbounds %struct.kernfs_open_file, %struct.kernfs_open_file* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %102, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.kernfs_open_file* @kernfs_of(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kernfs_get_active(%struct.TYPE_6__*) #1

declare dso_local %struct.kernfs_ops* @kernfs_ops(%struct.TYPE_6__*) #1

declare dso_local i32 @kernfs_put_active(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
