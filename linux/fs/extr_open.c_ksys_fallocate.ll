; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fallocate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_ksys_fallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd = type { i64 }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ksys_fallocate(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fd, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @fdget(i32 %11)
  %13 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @EBADF, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @vfs_fallocate(i64 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @fdput(i64 %27)
  br label %29

29:                                               ; preds = %19, %4
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

declare dso_local i64 @fdget(i32) #1

declare dso_local i32 @vfs_fallocate(i64, i32, i32, i32) #1

declare dso_local i32 @fdput(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
