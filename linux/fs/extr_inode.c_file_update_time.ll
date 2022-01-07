; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_file_update_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_file_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32, i32 }
%struct.timespec64 = type { i32 }

@S_MTIME = common dso_local global i32 0, align 4
@S_CTIME = common dso_local global i32 0, align 4
@S_VERSION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_update_time(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec64, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i64 @IS_NOCMTIME(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call i32 @current_time(%struct.inode* %16)
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = bitcast %struct.timespec64* %5 to i8*
  %20 = bitcast %struct.timespec64* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 4, i1 false)
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = call i32 @timespec64_equal(i32* %22, %struct.timespec64* %5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %15
  %26 = load i32, i32* @S_MTIME, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %15
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = call i32 @timespec64_equal(i32* %29, %struct.timespec64* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @S_CTIME, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i64 @IS_I_VERSION(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i64 @inode_iversion_need_inc(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @S_VERSION, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %40, %36
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %64

52:                                               ; preds = %48
  %53 = load %struct.file*, %struct.file** %3, align 8
  %54 = call i64 @__mnt_want_write_file(%struct.file* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %64

57:                                               ; preds = %52
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @update_time(%struct.inode* %58, %struct.timespec64* %5, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = call i32 @__mnt_drop_write_file(%struct.file* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %56, %51, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @IS_NOCMTIME(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec64_equal(i32*, %struct.timespec64*) #1

declare dso_local i64 @IS_I_VERSION(%struct.inode*) #1

declare dso_local i64 @inode_iversion_need_inc(%struct.inode*) #1

declare dso_local i64 @__mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @update_time(%struct.inode*, %struct.timespec64*, i32) #1

declare dso_local i32 @__mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
