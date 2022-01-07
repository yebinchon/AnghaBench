; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_stat64_to_hostfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_user.c_stat64_to_hostfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hostfs_stat = type { i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stat64*, %struct.hostfs_stat*)* @stat64_to_hostfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat64_to_hostfs(%struct.stat64* %0, %struct.hostfs_stat* %1) #0 {
  %3 = alloca %struct.stat64*, align 8
  %4 = alloca %struct.hostfs_stat*, align 8
  store %struct.stat64* %0, %struct.stat64** %3, align 8
  store %struct.hostfs_stat* %1, %struct.hostfs_stat** %4, align 8
  %5 = load %struct.stat64*, %struct.stat64** %3, align 8
  %6 = getelementptr inbounds %struct.stat64, %struct.stat64* %5, i32 0, i32 11
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %9 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load %struct.stat64*, %struct.stat64** %3, align 8
  %11 = getelementptr inbounds %struct.stat64, %struct.stat64* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %14 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %13, i32 0, i32 11
  store i32 %12, i32* %14, align 8
  %15 = load %struct.stat64*, %struct.stat64** %3, align 8
  %16 = getelementptr inbounds %struct.stat64, %struct.stat64* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %19 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load %struct.stat64*, %struct.stat64** %3, align 8
  %21 = getelementptr inbounds %struct.stat64, %struct.stat64* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %24 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 8
  %25 = load %struct.stat64*, %struct.stat64** %3, align 8
  %26 = getelementptr inbounds %struct.stat64, %struct.stat64* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %29 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %28, i32 0, i32 8
  store i32 %27, i32* %29, align 4
  %30 = load %struct.stat64*, %struct.stat64** %3, align 8
  %31 = getelementptr inbounds %struct.stat64, %struct.stat64* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %34 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.stat64*, %struct.stat64** %3, align 8
  %36 = getelementptr inbounds %struct.stat64, %struct.stat64* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %39 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %42 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.stat64*, %struct.stat64** %3, align 8
  %45 = getelementptr inbounds %struct.stat64, %struct.stat64* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %48 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 8
  %50 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %51 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.stat64*, %struct.stat64** %3, align 8
  %54 = getelementptr inbounds %struct.stat64, %struct.stat64* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %57 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %60 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.stat64*, %struct.stat64** %3, align 8
  %63 = getelementptr inbounds %struct.stat64, %struct.stat64* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %66 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.stat64*, %struct.stat64** %3, align 8
  %68 = getelementptr inbounds %struct.stat64, %struct.stat64* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %71 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.stat64*, %struct.stat64** %3, align 8
  %73 = getelementptr inbounds %struct.stat64, %struct.stat64* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @os_major(i32 %74)
  %76 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %77 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.stat64*, %struct.stat64** %3, align 8
  %79 = getelementptr inbounds %struct.stat64, %struct.stat64* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @os_minor(i32 %80)
  %82 = load %struct.hostfs_stat*, %struct.hostfs_stat** %4, align 8
  %83 = getelementptr inbounds %struct.hostfs_stat, %struct.hostfs_stat* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  ret void
}

declare dso_local i32 @os_major(i32) #1

declare dso_local i32 @os_minor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
