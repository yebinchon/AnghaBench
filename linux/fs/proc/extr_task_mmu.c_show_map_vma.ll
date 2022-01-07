; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_show_map_vma.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_task_mmu.c_show_map_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_area_struct = type { i64, i64, %struct.TYPE_4__*, i64, %struct.file*, i32, %struct.mm_struct* }
%struct.TYPE_4__ = type { i8* (%struct.vm_area_struct*)* }
%struct.file = type { i32 }
%struct.mm_struct = type { i64, i64 }
%struct.inode = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"[heap]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[stack]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.vm_area_struct*)* @show_map_vma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_map_vma(%struct.seq_file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 6
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %5, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 4
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %6, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** %13, align 8
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %2
  %27 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %28 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %27, i32 0, i32 4
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = call %struct.inode* @file_inode(%struct.file* %29)
  store %struct.inode* %30, %struct.inode** %14, align 8
  %31 = load %struct.inode*, %struct.inode** %14, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.inode*, %struct.inode** %14, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %40 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = shl i64 %41, %42
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %26, %2
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %10, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i64, i64* %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @show_vma_header_prefix(%struct.seq_file* %51, i64 %52, i64 %53, i32 %54, i64 %55, i32 %56, i64 %57)
  %59 = load %struct.file*, %struct.file** %6, align 8
  %60 = icmp ne %struct.file* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_pad(%struct.seq_file* %62, i8 signext 32)
  %64 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = call i32 @seq_file_path(%struct.seq_file* %64, %struct.file* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %124

67:                                               ; preds = %44
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %69 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %91

72:                                               ; preds = %67
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i8* (%struct.vm_area_struct*)*, i8* (%struct.vm_area_struct*)** %76, align 8
  %78 = icmp ne i8* (%struct.vm_area_struct*)* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %81 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i8* (%struct.vm_area_struct*)*, i8* (%struct.vm_area_struct*)** %83, align 8
  %85 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %86 = call i8* %84(%struct.vm_area_struct* %85)
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %124

90:                                               ; preds = %79
  br label %91

91:                                               ; preds = %90, %72, %67
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %93 = call i8* @arch_vma_name(%struct.vm_area_struct* %92)
  store i8* %93, i8** %13, align 8
  %94 = load i8*, i8** %13, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %123, label %96

96:                                               ; preds = %91
  %97 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %98 = icmp ne %struct.mm_struct* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %124

100:                                              ; preds = %96
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %105 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ule i64 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %110 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %113 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp uge i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %124

117:                                              ; preds = %108, %100
  %118 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %119 = call i64 @is_stack(%struct.vm_area_struct* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %122

122:                                              ; preds = %121, %117
  br label %123

123:                                              ; preds = %122, %91
  br label %124

124:                                              ; preds = %123, %116, %99, %89, %61
  %125 = load i8*, i8** %13, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %129 = call i32 @seq_pad(%struct.seq_file* %128, i8 signext 32)
  %130 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @seq_puts(%struct.seq_file* %130, i8* %131)
  br label %133

133:                                              ; preds = %127, %124
  %134 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %135 = call i32 @seq_putc(%struct.seq_file* %134, i8 signext 10)
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @show_vma_header_prefix(%struct.seq_file*, i64, i64, i32, i64, i32, i64) #1

declare dso_local i32 @seq_pad(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_file_path(%struct.seq_file*, %struct.file*, i8*) #1

declare dso_local i8* @arch_vma_name(%struct.vm_area_struct*) #1

declare dso_local i64 @is_stack(%struct.vm_area_struct*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
