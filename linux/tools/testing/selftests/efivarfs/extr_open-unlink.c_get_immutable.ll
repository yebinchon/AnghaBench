; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/efivarfs/extr_open-unlink.c_get_immutable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/efivarfs/extr_open-unlink.c_get_immutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@FS_IOC_GETFLAGS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_immutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_immutable(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = call i32 @open(i8* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FS_IOC_GETFLAGS, align 4
  %18 = call i32 @ioctl(i32 %16, i32 %17, i32* %4)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @close(i32 %23)
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* @errno, align 4
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @close(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %21, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
