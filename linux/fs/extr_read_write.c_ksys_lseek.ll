; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_ksys_lseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_ksys_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i32 }

@EBADF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SEEK_MAX = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ksys_lseek(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.fd, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @fdget_pos(i32 %11)
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @EBADF, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %45

20:                                               ; preds = %3
  %21 = load i64, i64* @EINVAL, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SEEK_MAX, align 4
  %25 = icmp ule i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @vfs_llseek(i32 %28, i64 %29, i32 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i64, i64* @EOVERFLOW, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %8, align 8
  br label %39

39:                                               ; preds = %36, %26
  br label %40

40:                                               ; preds = %39, %20
  %41 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @fdput_pos(i32 %42)
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %40, %17
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i32 @fdget_pos(i32) #1

declare dso_local i64 @vfs_llseek(i32, i64, i32) #1

declare dso_local i32 @fdput_pos(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
