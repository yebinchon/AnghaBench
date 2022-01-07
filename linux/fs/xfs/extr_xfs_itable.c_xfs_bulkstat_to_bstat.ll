; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_to_bstat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_itable.c_xfs_bulkstat_to_bstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_bstat = type { i32, i32, i32, i64, i64, i8*, i32, i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xfs_bulkstat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_bulkstat_to_bstat(%struct.xfs_mount* %0, %struct.xfs_bstat* %1, %struct.xfs_bulkstat* %2) #0 {
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_bstat*, align 8
  %6 = alloca %struct.xfs_bulkstat*, align 8
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_bstat* %1, %struct.xfs_bstat** %5, align 8
  store %struct.xfs_bulkstat* %2, %struct.xfs_bulkstat** %6, align 8
  %7 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %8 = call i32 @memset(%struct.xfs_bstat* %7, i32 0, i32 136)
  %9 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %10 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %9, i32 0, i32 24
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %13 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %12, i32 0, i32 24
  store i32 %11, i32* %13, align 4
  %14 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %15 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %14, i32 0, i32 23
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %17, i32 0, i32 23
  store i32 %16, i32* %18, align 8
  %19 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %19, i32 0, i32 22
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %22, i32 0, i32 22
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %24, i32 0, i32 21
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %27, i32 0, i32 21
  store i32 %26, i32* %28, align 8
  %29 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %30 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %29, i32 0, i32 20
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %32, i32 0, i32 20
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %34, i32 0, i32 19
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %37, i32 0, i32 19
  store i32 %36, i32* %38, align 8
  %39 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %39, i32 0, i32 18
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %42, i32 0, i32 18
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %44, i32 0, i32 17
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %47, i32 0, i32 17
  store i32 %46, i32* %48, align 8
  %49 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %50 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %49, i32 0, i32 16
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %53 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %52, i32 0, i32 16
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %56 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %58, i32 0, i32 15
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %62 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %61, i32 0, i32 14
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %65 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %64, i32 0, i32 14
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %68 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %70, i32 0, i32 16
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %74 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %77 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %76, i32 0, i32 15
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %80 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %83 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %82, i32 0, i32 14
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %86 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 4
  %90 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %91 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %94 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 8
  %95 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %96 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %97 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %95, i32 %98)
  %100 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %101 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %100, i32 0, i32 11
  store i8* %99, i8** %101, align 8
  %102 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %103 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %106 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 8
  %107 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %108 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %111 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %110, i32 0, i32 9
  store i32 %109, i32* %111, align 4
  %112 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %113 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 65535
  %116 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %117 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %119 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %122 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %121, i32 0, i32 8
  store i32 %120, i32* %122, align 8
  %123 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %124 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = ashr i32 %125, 16
  %127 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %128 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %130 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %133 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %135 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %138 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %140 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %141 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @XFS_FSB_TO_B(%struct.xfs_mount* %139, i32 %142)
  %144 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %145 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %144, i32 0, i32 5
  store i8* %143, i8** %145, align 8
  %146 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %147 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %146, i32 0, i32 4
  store i64 0, i64* %147, align 8
  %148 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %149 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load %struct.xfs_bulkstat*, %struct.xfs_bulkstat** %6, align 8
  %151 = getelementptr inbounds %struct.xfs_bulkstat, %struct.xfs_bulkstat* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.xfs_bstat*, %struct.xfs_bstat** %5, align 8
  %154 = getelementptr inbounds %struct.xfs_bstat, %struct.xfs_bstat* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  ret void
}

declare dso_local i32 @memset(%struct.xfs_bstat*, i32, i32) #1

declare dso_local i8* @XFS_FSB_TO_B(%struct.xfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
