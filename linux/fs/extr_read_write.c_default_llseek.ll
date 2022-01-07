; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_default_llseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_default_llseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, i64 }
%struct.inode = type { i64 }

@ENXIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @default_llseek(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %7, align 8
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = call i32 @inode_lock(%struct.inode* %11)
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %55 [
    i32 129, label %14
    i32 131, label %19
    i32 130, label %32
    i32 128, label %42
  ]

14:                                               ; preds = %3
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call i64 @i_size_read(%struct.inode* %15)
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, %16
  store i64 %18, i64* %5, align 8
  br label %55

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  br label %79

26:                                               ; preds = %19
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %5, align 8
  br label %55

32:                                               ; preds = %3
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* @ENXIO, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %8, align 8
  br label %79

41:                                               ; preds = %32
  br label %55

42:                                               ; preds = %3
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @ENXIO, align 8
  %50 = sub nsw i64 0, %49
  store i64 %50, i64* %8, align 8
  br label %79

51:                                               ; preds = %42
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %3, %51, %41, %26, %14
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %55
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = call i64 @unsigned_offsets(%struct.file* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %60, %55
  %65 = load i64, i64* %5, align 8
  %66 = load %struct.file*, %struct.file** %4, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.file*, %struct.file** %4, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.file*, %struct.file** %4, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %8, align 8
  br label %78

78:                                               ; preds = %76, %60
  br label %79

79:                                               ; preds = %78, %48, %38, %22
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call i32 @inode_unlock(%struct.inode* %80)
  %82 = load i64, i64* %8, align 8
  ret i64 %82
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @unsigned_offsets(%struct.file*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
