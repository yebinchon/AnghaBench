; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_write_iter.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_file.c_orangefs_file_write_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kiocb = type { i64, i32 }
%struct.iov_iter = type { i32 }

@orangefs_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iov_iter*)* @orangefs_file_write_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_file_write_iter(%struct.kiocb* %0, %struct.iov_iter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kiocb*, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @orangefs_stats, i32 0, i32 0), align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @orangefs_stats, i32 0, i32 0), align 4
  %9 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @file_inode(i32 %14)
  %16 = call i64 @i_size_read(i32 %15)
  %17 = icmp sgt i64 %11, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %20 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @file_inode(i32 %21)
  %23 = call i32 @orangefs_revalidate_mapping(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.kiocb*, %struct.kiocb** %4, align 8
  %31 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %32 = call i32 @generic_file_write_iter(%struct.kiocb* %30, %struct.iov_iter* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @i_size_read(i32) #1

declare dso_local i32 @file_inode(i32) #1

declare dso_local i32 @orangefs_revalidate_mapping(i32) #1

declare dso_local i32 @generic_file_write_iter(%struct.kiocb*, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
