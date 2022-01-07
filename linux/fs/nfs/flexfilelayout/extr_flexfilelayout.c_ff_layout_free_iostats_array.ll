; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_iostats_array.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_free_iostats_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs42_layoutstat_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs42_layoutstat_devinfo*, i32)* @ff_layout_free_iostats_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_free_iostats_array(%struct.nfs42_layoutstat_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.nfs42_layoutstat_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfs42_layoutstat_devinfo* %0, %struct.nfs42_layoutstat_devinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %11, i64 %13
  %15 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %48

20:                                               ; preds = %10
  %21 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %21, i64 %23
  %25 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %28, align 8
  %30 = icmp ne i32 (%struct.TYPE_4__*)* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %48

32:                                               ; preds = %20
  %33 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %33, i64 %35
  %37 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %40, align 8
  %42 = load %struct.nfs42_layoutstat_devinfo*, %struct.nfs42_layoutstat_devinfo** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %42, i64 %44
  %46 = getelementptr inbounds %struct.nfs42_layoutstat_devinfo, %struct.nfs42_layoutstat_devinfo* %45, i32 0, i32 0
  %47 = call i32 %41(%struct.TYPE_4__* %46)
  br label %48

48:                                               ; preds = %32, %31, %19
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

51:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
