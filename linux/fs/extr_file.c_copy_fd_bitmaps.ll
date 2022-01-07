; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_file.c_copy_fd_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_file.c_copy_fd_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtable = type { i32, i64, i64, i64 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fdtable*, %struct.fdtable*, i32)* @copy_fd_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_fd_bitmaps(%struct.fdtable* %0, %struct.fdtable* %1, i32 %2) #0 {
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca %struct.fdtable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fdtable* %0, %struct.fdtable** %4, align 8
  store %struct.fdtable* %1, %struct.fdtable** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BITS_PER_BYTE, align 4
  %11 = udiv i32 %9, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %13 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sub i32 %14, %15
  %17 = load i32, i32* @BITS_PER_BYTE, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %20 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %23 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @memcpy(i64 %21, i64 %24, i32 %25)
  %27 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %28 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @memset(i8* %33, i32 0, i32 %34)
  %36 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %37 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %40 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @memcpy(i64 %38, i64 %41, i32 %42)
  %44 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %45 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @memset(i8* %50, i32 0, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @BITBIT_SIZE(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %56 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @BITBIT_SIZE(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = sub i32 %58, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %62 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %65 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @memcpy(i64 %63, i64 %66, i32 %67)
  %69 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %70 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @memset(i8* %75, i32 0, i32 %76)
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @BITBIT_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
