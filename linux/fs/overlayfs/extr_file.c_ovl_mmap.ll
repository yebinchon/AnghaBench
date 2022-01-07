; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_file.c_ovl_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__*, %struct.file* }
%struct.TYPE_3__ = type { i32 }
%struct.vm_area_struct = type { %struct.file* }
%struct.cred = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @ovl_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 1
  %11 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %11, %struct.file** %6, align 8
  %12 = load %struct.file*, %struct.file** %6, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 0
  %25 = load %struct.file*, %struct.file** %24, align 8
  %26 = icmp ne %struct.file* %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %21
  %34 = load %struct.file*, %struct.file** %6, align 8
  %35 = call %struct.file* @get_file(%struct.file* %34)
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 0
  store %struct.file* %35, %struct.file** %37, align 8
  %38 = load %struct.file*, %struct.file** %4, align 8
  %39 = call %struct.TYPE_4__* @file_inode(%struct.file* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.cred* @ovl_override_creds(i32 %41)
  store %struct.cred* %42, %struct.cred** %7, align 8
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 0
  %45 = load %struct.file*, %struct.file** %44, align 8
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = call i32 @call_mmap(%struct.file* %45, %struct.vm_area_struct* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.cred*, %struct.cred** %7, align 8
  %49 = call i32 @revert_creds(%struct.cred* %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load %struct.file*, %struct.file** %6, align 8
  %54 = call i32 @fput(%struct.file* %53)
  br label %58

55:                                               ; preds = %33
  %56 = load %struct.file*, %struct.file** %4, align 8
  %57 = call i32 @fput(%struct.file* %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = load %struct.file*, %struct.file** %4, align 8
  %60 = call i32 @ovl_file_accessed(%struct.file* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %58, %30, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.file* @get_file(%struct.file*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local %struct.TYPE_4__* @file_inode(%struct.file*) #1

declare dso_local i32 @call_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @ovl_file_accessed(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
