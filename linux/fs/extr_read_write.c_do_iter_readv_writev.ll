; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_iter_readv_writev.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_do_iter_readv_writev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iov_iter = type { i32 }
%struct.kiocb = type { i32 }

@READ = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.iov_iter*, i32*, i32, i32)* @do_iter_readv_writev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_iter_readv_writev(%struct.file* %0, %struct.iov_iter* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.iov_iter*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.kiocb, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call i32 @init_sync_kiocb(%struct.kiocb* %12, %struct.file* %14)
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @kiocb_set_rw_flags(%struct.kiocb* %12, i32 %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %58

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  %31 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @READ, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %38 = call i32 @call_read_iter(%struct.file* %36, %struct.kiocb* %12, %struct.iov_iter* %37)
  store i32 %38, i32* %13, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load %struct.file*, %struct.file** %7, align 8
  %41 = load %struct.iov_iter*, %struct.iov_iter** %8, align 8
  %42 = call i32 @call_write_iter(%struct.file* %40, %struct.kiocb* %12, %struct.iov_iter* %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @EIOCBQUEUED, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %20
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @init_sync_kiocb(%struct.kiocb*, %struct.file*) #1

declare dso_local i32 @kiocb_set_rw_flags(%struct.kiocb*, i32) #1

declare dso_local i32 @call_read_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @call_write_iter(%struct.file*, %struct.kiocb*, %struct.iov_iter*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
