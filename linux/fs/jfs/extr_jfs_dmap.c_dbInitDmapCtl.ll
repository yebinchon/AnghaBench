; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbInitDmapCtl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_dmap.c_dbInitDmapCtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmapctl = type { i32*, i64, i8*, i8*, i8*, i8* }
%struct.dmaptree = type { i32 }

@LPERCTL = common dso_local global i32 0, align 4
@L2LPERCTL = common dso_local global i32 0, align 4
@CTLLEAFIND = common dso_local global i32 0, align 4
@L2BPERDMAP = common dso_local global i64 0, align 8
@NOFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmapctl*, i32, i32)* @dbInitDmapCtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbInitDmapCtl(%struct.dmapctl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dmapctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dmapctl* %0, %struct.dmapctl** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @LPERCTL, align 4
  %9 = call i8* @cpu_to_le32(i32 %8)
  %10 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %11 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @L2LPERCTL, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %15 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* @CTLLEAFIND, align 4
  %17 = call i8* @cpu_to_le32(i32 %16)
  %18 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %19 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = call i8* @cpu_to_le32(i32 5)
  %21 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %22 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* @L2BPERDMAP, align 8
  %24 = load i32, i32* @L2LPERCTL, align 4
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %23, %27
  %29 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %30 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %32 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* @CTLLEAFIND, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %47, %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @LPERCTL, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* @NOFREE, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %39

50:                                               ; preds = %39
  %51 = load %struct.dmapctl*, %struct.dmapctl** %4, align 8
  %52 = bitcast %struct.dmapctl* %51 to %struct.dmaptree*
  %53 = call i32 @dbInitTree(%struct.dmaptree* %52)
  ret i32 %53
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dbInitTree(%struct.dmaptree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
