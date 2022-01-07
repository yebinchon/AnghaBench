; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_timestamp_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_timestamp_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i64, i64 }
%struct.timespec64 = type { i64, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"invalid file time granularity: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i32 } @timestamp_truncate(i64 %0, i32 %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.timespec64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.timespec64* %5 to { i64, i32 }*
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %1, i32* %11, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %7, align 8
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @clamp(i64 %19, i64 %22, i64 %25)
  %27 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.super_block*, %struct.super_block** %7, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br label %41

41:                                               ; preds = %34, %3
  %42 = phi i1 [ true, %3 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  store i32 0, i32* %47, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32, i32* %8, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %78

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @NSEC_PER_SEC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  store i32 0, i32* %57, align 8
  br label %77

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @NSEC_PER_SEC, align 4
  %64 = icmp ult i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = urem i32 %67, %68
  %70 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sub i32 %71, %69
  store i32 %72, i32* %70, align 8
  br label %76

73:                                               ; preds = %61, %58
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %76, %56
  br label %78

78:                                               ; preds = %77, %51
  %79 = bitcast %struct.timespec64* %4 to i8*
  %80 = bitcast %struct.timespec64* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = bitcast %struct.timespec64* %4 to { i64, i32 }*
  %82 = load { i64, i32 }, { i64, i32 }* %81, align 8
  ret { i64, i32 } %82
}

declare dso_local i64 @clamp(i64, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
