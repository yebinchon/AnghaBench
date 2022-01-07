; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_threads.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsctl.c_write_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIMPLE_TRANSACTION_LIMIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @write_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_threads(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.net* @netns(%struct.file* %13)
  store %struct.net* %14, %struct.net** %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = call i32 @get_int(i8** %8, i32* %11)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %49

29:                                               ; preds = %23
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.net*, %struct.net** %10, align 8
  %32 = load %struct.file*, %struct.file** %5, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nfsd_svc(i32 %30, %struct.net* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %49

40:                                               ; preds = %29
  br label %44

41:                                               ; preds = %3
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = call i32 @nfsd_nrthreads(%struct.net* %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %41, %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @SIMPLE_TRANSACTION_LIMIT, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @scnprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %38, %26, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.net* @netns(%struct.file*) #1

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @nfsd_svc(i32, %struct.net*, i32) #1

declare dso_local i32 @nfsd_nrthreads(%struct.net*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
