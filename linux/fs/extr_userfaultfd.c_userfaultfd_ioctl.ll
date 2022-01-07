; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_userfaultfd.c_userfaultfd_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.userfaultfd_ctx* }
%struct.userfaultfd_ctx = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@UFFD_STATE_WAIT_API = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @userfaultfd_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @userfaultfd_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.userfaultfd_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @EINVAL, align 8
  %11 = sub nsw i64 0, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %14, align 8
  store %struct.userfaultfd_ctx* %15, %struct.userfaultfd_ctx** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 133
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %20 = getelementptr inbounds %struct.userfaultfd_ctx, %struct.userfaultfd_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @UFFD_STATE_WAIT_API, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %56

27:                                               ; preds = %18, %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %53 [
    i32 133, label %29
    i32 131, label %33
    i32 130, label %37
    i32 129, label %41
    i32 132, label %45
    i32 128, label %49
  ]

29:                                               ; preds = %27
  %30 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @userfaultfd_api(%struct.userfaultfd_ctx* %30, i64 %31)
  store i32 %32, i32* %8, align 4
  br label %53

33:                                               ; preds = %27
  %34 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @userfaultfd_register(%struct.userfaultfd_ctx* %34, i64 %35)
  store i32 %36, i32* %8, align 4
  br label %53

37:                                               ; preds = %27
  %38 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @userfaultfd_unregister(%struct.userfaultfd_ctx* %38, i64 %39)
  store i32 %40, i32* %8, align 4
  br label %53

41:                                               ; preds = %27
  %42 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @userfaultfd_wake(%struct.userfaultfd_ctx* %42, i64 %43)
  store i32 %44, i32* %8, align 4
  br label %53

45:                                               ; preds = %27
  %46 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @userfaultfd_copy(%struct.userfaultfd_ctx* %46, i64 %47)
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %27
  %50 = load %struct.userfaultfd_ctx*, %struct.userfaultfd_ctx** %9, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @userfaultfd_zeropage(%struct.userfaultfd_ctx* %50, i64 %51)
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %27, %49, %45, %41, %37, %33, %29
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %4, align 8
  br label %56

56:                                               ; preds = %53, %24
  %57 = load i64, i64* %4, align 8
  ret i64 %57
}

declare dso_local i32 @userfaultfd_api(%struct.userfaultfd_ctx*, i64) #1

declare dso_local i32 @userfaultfd_register(%struct.userfaultfd_ctx*, i64) #1

declare dso_local i32 @userfaultfd_unregister(%struct.userfaultfd_ctx*, i64) #1

declare dso_local i32 @userfaultfd_wake(%struct.userfaultfd_ctx*, i64) #1

declare dso_local i32 @userfaultfd_copy(%struct.userfaultfd_ctx*, i64) #1

declare dso_local i32 @userfaultfd_zeropage(%struct.userfaultfd_ctx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
