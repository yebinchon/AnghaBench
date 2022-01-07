; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_timespec64_trunc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_timespec64_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"illegal file time granularity: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timespec64_trunc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.timespec64, align 4
  %4 = alloca %struct.timespec64, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %36

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NSEC_PER_SEC, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %35

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NSEC_PER_SEC, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = urem i32 %25, %26
  %28 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %34

31:                                               ; preds = %19, %16
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34, %14
  br label %36

36:                                               ; preds = %35, %9
  %37 = bitcast %struct.timespec64* %3 to i8*
  %38 = bitcast %struct.timespec64* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  ret i32 %40
}

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
