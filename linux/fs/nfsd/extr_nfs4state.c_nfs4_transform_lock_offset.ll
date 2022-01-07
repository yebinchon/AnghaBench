; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_transform_lock_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_transform_lock_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i64, i64 }

@OFFSET_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_lock*)* @nfs4_transform_lock_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_transform_lock_offset(%struct.file_lock* %0) #0 {
  %2 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %2, align 8
  %3 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %4 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i8*, i8** @OFFSET_MAX, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i8*, i8** @OFFSET_MAX, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.file_lock*, %struct.file_lock** %2, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %17, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
