; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agfl_needs_reset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_alloc.c_xfs_agfl_needs_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_mount = type { i32 }
%struct.xfs_agf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_mount*, %struct.xfs_agf*)* @xfs_agfl_needs_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_agfl_needs_reset(%struct.xfs_mount* %0, %struct.xfs_agf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_mount*, align 8
  %5 = alloca %struct.xfs_agf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xfs_mount* %0, %struct.xfs_mount** %4, align 8
  store %struct.xfs_agf* %1, %struct.xfs_agf** %5, align 8
  %11 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %12 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.xfs_agf*, %struct.xfs_agf** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_agf, %struct.xfs_agf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @be32_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %24 = call i32 @xfs_agfl_size(%struct.xfs_mount* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.xfs_mount*, %struct.xfs_mount** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %25, i32 0, i32 0
  %27 = call i32 @xfs_sb_version_hascrc(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  store i32 1, i32* %3, align 4
  br label %73

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %73

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %68

56:                                               ; preds = %47, %44
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %51
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %43, %38, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_agfl_size(%struct.xfs_mount*) #1

declare dso_local i32 @xfs_sb_version_hascrc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
