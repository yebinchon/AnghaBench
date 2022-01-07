; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }

@PROT_READ = common dso_local global i64 0, align 8
@MAY_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i64 0, align 8
@MAP_PRIVATE = common dso_local global i64 0, align 8
@MAY_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i64 0, align 8
@AA_EXEC_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.file*, i64, i64)* @common_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_mmap(i8* %0, %struct.file* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.file*, %struct.file** %7, align 8
  %12 = icmp ne %struct.file* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load %struct.file*, %struct.file** %7, align 8
  %15 = call i32 @file_ctx(%struct.file* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %4
  store i32 0, i32* %5, align 4
  br label %55

18:                                               ; preds = %13
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @PROT_READ, align 8
  %21 = and i64 %19, %20
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @MAY_READ, align 4
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @PROT_WRITE, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MAP_PRIVATE, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @MAY_WRITE, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %37, %32, %27
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @PROT_EXEC, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @AA_EXEC_MMAP, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.file*, %struct.file** %7, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @common_file_perm(i8* %51, %struct.file* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %50, %17
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @file_ctx(%struct.file*) #1

declare dso_local i32 @common_file_perm(i8*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
