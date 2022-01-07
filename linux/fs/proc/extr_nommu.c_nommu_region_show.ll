; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_nommu.c_nommu_region_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_nommu.c_nommu_region_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vm_region = type { i32, i64, i32, i32, %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"%08lx-%08lx %c%c%c%c %08llx %02x:%02x %lu \00", align 1
@VM_READ = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYSHARE = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vm_region*)* @nommu_region_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nommu_region_show(%struct.seq_file* %0, %struct.vm_region* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vm_region*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vm_region* %1, %struct.vm_region** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %11 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %14 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %13, i32 0, i32 4
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %6, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %20 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %19, i32 0, i32 4
  %21 = load %struct.file*, %struct.file** %20, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %18, %2
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_setwidth(%struct.seq_file* %32, i32 72)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %36 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %39 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @VM_READ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 114, i32 45
  %47 = trunc i32 %46 to i8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @VM_WRITE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 119, i32 45
  %54 = trunc i32 %53 to i8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @VM_EXEC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 120, i32 45
  %61 = trunc i32 %60 to i8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @VM_MAYSHARE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %31
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @VM_SHARED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 83, i32 115
  br label %74

73:                                               ; preds = %31
  br label %74

74:                                               ; preds = %73, %66
  %75 = phi i32 [ %72, %66 ], [ 112, %73 ]
  %76 = trunc i32 %75 to i8
  %77 = load %struct.vm_region*, %struct.vm_region** %4, align 8
  %78 = getelementptr inbounds %struct.vm_region, %struct.vm_region* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* @PAGE_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @MAJOR(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @MINOR(i32 %85)
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i8 signext %47, i8 signext %54, i8 signext %61, i8 signext %76, i32 %82, i32 %84, i32 %86, i64 %87)
  %89 = load %struct.file*, %struct.file** %6, align 8
  %90 = icmp ne %struct.file* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = call i32 @seq_pad(%struct.seq_file* %92, i8 signext 32)
  %94 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %95 = load %struct.file*, %struct.file** %6, align 8
  %96 = call i32 @seq_file_path(%struct.seq_file* %94, %struct.file* %95, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %91, %74
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 @seq_putc(%struct.seq_file* %98, i8 signext 10)
  ret i32 0
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @seq_setwidth(%struct.seq_file*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i32, i32, i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @seq_pad(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_file_path(%struct.seq_file*, %struct.file*, i8*) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
