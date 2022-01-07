; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_nommu_vma_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_nommu.c_nommu_vma_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i64, %struct.file*, %struct.mm_struct* }
%struct.file = type { i32 }
%struct.mm_struct = type { i32 }
%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu \00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vm_area_struct*)* @nommu_vma_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nommu_vma_show(%struct.seq_file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 5
  %14 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  store %struct.mm_struct* %14, %struct.mm_struct** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 4
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %7, align 8
  %21 = load %struct.file*, %struct.file** %7, align 8
  %22 = icmp ne %struct.file* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 4
  %26 = load %struct.file*, %struct.file** %25, align 8
  %27 = call %struct.inode* @file_inode(%struct.file* %26)
  store %struct.inode* %27, %struct.inode** %11, align 8
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.inode*, %struct.inode** %11, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = shl i64 %38, %39
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %23, %2
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_setwidth(%struct.seq_file* %42, i32 72)
  %44 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @VM_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 114, i32 45
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @VM_WRITE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 119, i32 45
  %64 = trunc i32 %63 to i8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @VM_EXEC, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 120, i32 45
  %71 = trunc i32 %70 to i8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @VM_MAYSHARE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %41
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @VM_SHARED, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 83, i32 115
  br label %84

83:                                               ; preds = %41
  br label %84

84:                                               ; preds = %83, %76
  %85 = phi i32 [ %82, %76 ], [ 112, %83 ]
  %86 = trunc i32 %85 to i8
  %87 = load i64, i64* %10, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @MAJOR(i32 %88)
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @MINOR(i32 %90)
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @seq_printf(%struct.seq_file* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i8 signext %57, i8 signext %64, i8 signext %71, i8 signext %86, i64 %87, i32 %89, i32 %91, i64 %92)
  %94 = load %struct.file*, %struct.file** %7, align 8
  %95 = icmp ne %struct.file* %94, null
  br i1 %95, label %96, label %102

96:                                               ; preds = %84
  %97 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %98 = call i32 @seq_pad(%struct.seq_file* %97, i8 signext 32)
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load %struct.file*, %struct.file** %7, align 8
  %101 = call i32 @seq_file_path(%struct.seq_file* %99, %struct.file* %100, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %115

102:                                              ; preds = %84
  %103 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %104 = icmp ne %struct.mm_struct* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %107 = call i64 @is_stack(%struct.vm_area_struct* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %111 = call i32 @seq_pad(%struct.seq_file* %110, i8 signext 32)
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = call i32 @seq_puts(%struct.seq_file* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %105, %102
  br label %115

115:                                              ; preds = %114, %96
  %116 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %117 = call i32 @seq_putc(%struct.seq_file* %116, i8 signext 10)
  ret i32 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @seq_setwidth(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i64, i32, i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @seq_pad(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_file_path(%struct.seq_file*, %struct.file*, i8*) #1

declare dso_local i64 @is_stack(%struct.vm_area_struct*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
