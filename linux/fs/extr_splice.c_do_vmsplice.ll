; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_splice.c_do_vmsplice.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_splice.c_do_vmsplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iov_iter = type { i32 }

@SPLICE_F_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.iov_iter*, i32)* @do_vmsplice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @do_vmsplice(%struct.file* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SPLICE_F_ALL, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %37

17:                                               ; preds = %3
  %18 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %19 = call i32 @iov_iter_count(%struct.iov_iter* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %37

22:                                               ; preds = %17
  %23 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %24 = call i64 @iov_iter_rw(%struct.iov_iter* %23)
  %25 = load i64, i64* @WRITE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @vmsplice_to_pipe(%struct.file* %28, %struct.iov_iter* %29, i32 %30)
  store i64 %31, i64* %4, align 8
  br label %37

32:                                               ; preds = %22
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @vmsplice_to_user(%struct.file* %33, %struct.iov_iter* %34, i32 %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %32, %27, %21, %14
  %38 = load i64, i64* %4, align 8
  ret i64 %38
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i64 @vmsplice_to_pipe(%struct.file*, %struct.iov_iter*, i32) #1

declare dso_local i64 @vmsplice_to_user(%struct.file*, %struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
