; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_read.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_mnt.c_memfd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file_info = type { i32 }

@memfd_path = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@memfd_content = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64, %struct.fuse_file_info*)* @memfd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memfd_read(i8* %0, i8* %1, i64 %2, i64 %3, %struct.fuse_file_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fuse_file_info*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.fuse_file_info* %4, %struct.fuse_file_info** %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @memfd_path, align 4
  %15 = call i64 @strcmp(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %48

20:                                               ; preds = %5
  %21 = call i32 @sleep(i32 1)
  %22 = load i64, i64* @memfd_content, align 8
  %23 = call i64 @strlen(i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %28, %29
  %31 = load i64, i64* %12, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %34, %35
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* @memfd_content, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i8* %38, i64 %41, i64 %42)
  br label %45

44:                                               ; preds = %20
  store i64 0, i64* %9, align 8
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %17
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
