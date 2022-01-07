; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_read_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_read_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.kiocb = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.orangefs_read_options* }
%struct.orangefs_read_options = type { i32 }
%struct.iov_iter = type { i32 }
%struct.TYPE_6__ = type { i32 }

@orangefs_stats = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @orangefs_file_read_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_file_read_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.orangefs_read_options*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @orangefs_stats, i32 0, i32 0), align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @orangefs_stats, i32 0, i32 0), align 4
  %10 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %11 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.orangefs_read_options*, %struct.orangefs_read_options** %13, align 8
  %15 = icmp ne %struct.orangefs_read_options* %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.orangefs_read_options* @kmalloc(i32 4, i32 %17)
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store %struct.orangefs_read_options* %18, %struct.orangefs_read_options** %22, align 8
  %23 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %24 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.orangefs_read_options*, %struct.orangefs_read_options** %26, align 8
  %28 = icmp ne %struct.orangefs_read_options* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %16
  %32 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.orangefs_read_options*, %struct.orangefs_read_options** %35, align 8
  store %struct.orangefs_read_options* %36, %struct.orangefs_read_options** %7, align 8
  %37 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %38 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.orangefs_read_options*, %struct.orangefs_read_options** %7, align 8
  %41 = getelementptr inbounds %struct.orangefs_read_options, %struct.orangefs_read_options* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %31, %2
  %43 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %44 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call %struct.TYPE_6__* @file_inode(%struct.TYPE_7__* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @down_read(i32* %47)
  %49 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %50 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call %struct.TYPE_6__* @file_inode(%struct.TYPE_7__* %51)
  %53 = call i32 @orangefs_revalidate_mapping(%struct.TYPE_6__* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %61

57:                                               ; preds = %42
  %58 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %59 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %60 = call i32 @generic_file_read_iter(%struct.kiocb* %58, %struct.iov_iter* %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %56
  %62 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %63 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call %struct.TYPE_6__* @file_inode(%struct.TYPE_7__* %64)
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @up_read(i32* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %29
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.orangefs_read_options* @kmalloc(i32, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_6__* @file_inode(%struct.TYPE_7__*) #1

declare dso_local i32 @orangefs_revalidate_mapping(%struct.TYPE_6__*) #1

declare dso_local i32 @generic_file_read_iter(%struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
