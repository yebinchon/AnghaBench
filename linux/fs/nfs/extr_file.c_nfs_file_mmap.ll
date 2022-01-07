; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_file.c_nfs_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"NFS: mmap(%pD2)\0A\00", align 1
@nfs_file_vm_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.inode* @file_inode(%struct.file* %7)
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.file* %9)
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = call i32 @generic_file_mmap(%struct.file* %11, %struct.vm_area_struct* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  store i32* @nfs_file_vm_ops, i32** %18, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nfs_revalidate_mapping(%struct.inode* %19, i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* %6, align 4
  ret i32 %25
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @dprintk(i8*, %struct.file*) #1

declare dso_local i32 @generic_file_mmap(%struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @nfs_revalidate_mapping(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
