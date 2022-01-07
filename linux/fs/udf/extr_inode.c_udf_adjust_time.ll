; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_adjust_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_adjust_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udf_inode_info = type { %struct.timespec64 }
%struct.timespec64 = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.udf_inode_info*, i64, i64)* @udf_adjust_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_adjust_time(%struct.udf_inode_info* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.timespec64, align 8
  %5 = alloca %struct.udf_inode_info*, align 8
  %6 = bitcast %struct.timespec64* %4 to { i64, i64 }*
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  store i64 %2, i64* %8, align 8
  store %struct.udf_inode_info* %0, %struct.udf_inode_info** %5, align 8
  %9 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %12, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %3
  %17 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %18 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %26 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24, %3
  %33 = load %struct.udf_inode_info*, %struct.udf_inode_info** %5, align 8
  %34 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %33, i32 0, i32 0
  %35 = bitcast %struct.timespec64* %34 to i8*
  %36 = bitcast %struct.timespec64* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  br label %37

37:                                               ; preds = %32, %24, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
