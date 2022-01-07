; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c__nfsd_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c__nfsd_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_copy = type { i64, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_copy*)* @_nfsd_copy_file_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_nfsd_copy_file_range(%struct.nfsd4_copy* %0) #0 {
  %2 = alloca %struct.nfsd4_copy*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfsd4_copy* %0, %struct.nfsd4_copy** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %8 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %4, align 8
  %10 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %11 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %14 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %69, %1
  %17 = call i64 (...) @kthread_should_stop()
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %71

20:                                               ; preds = %16
  %21 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %22 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %28 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @nfsd_copy_file_range(i32 %25, i32 %26, i32 %31, i32 %32, i64 %33)
  store i64 %34, i64* %3, align 8
  %35 = load i64, i64* %3, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %71

38:                                               ; preds = %20
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = sub i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %44 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %42
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %38
  %61 = load i64, i64* %4, align 8
  %62 = icmp ugt i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %2, align 8
  %65 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi i1 [ false, %60 ], [ %68, %63 ]
  br i1 %70, label %16, label %71

71:                                               ; preds = %69, %37, %19
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @nfsd_copy_file_range(i32, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
