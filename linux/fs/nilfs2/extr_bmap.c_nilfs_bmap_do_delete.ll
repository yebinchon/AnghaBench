; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_do_delete.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_bmap.c_nilfs_bmap_do_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}*, i32 (%struct.nilfs_bmap*, i32*, i32*, i32)*, {}* }
%struct.TYPE_3__ = type { i32 }

@NILFS_BMAP_LARGE_LOW = common dso_local global i32 0, align 4
@NILFS_BMAP_LARGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_bmap*, i32)* @nilfs_bmap_do_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_bmap_do_delete(%struct.nilfs_bmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nilfs_bmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @NILFS_BMAP_LARGE_LOW, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @NILFS_BMAP_LARGE_LOW, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %21 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %22 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.nilfs_bmap*, i32)**
  %26 = load i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.nilfs_bmap*, i32)* %26, null
  br i1 %27, label %28, label %78

28:                                               ; preds = %2
  %29 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %30 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.nilfs_bmap*, i32)**
  %34 = load i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*, i32)** %33, align 8
  %35 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 %34(%struct.nilfs_bmap* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %28
  %41 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %42 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32 (%struct.nilfs_bmap*, i32*, i32*, i32)*, i32 (%struct.nilfs_bmap*, i32*, i32*, i32)** %44, align 8
  %46 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %47 = load i32, i32* @NILFS_BMAP_LARGE_LOW, align 4
  %48 = add nsw i32 %47, 1
  %49 = call i32 %45(%struct.nilfs_bmap* %46, i32* %16, i32* %20, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

54:                                               ; preds = %40
  %55 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @nilfs_direct_delete_and_convert(%struct.nilfs_bmap* %55, i32 %56, i32* %16, i32* %20, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* @NILFS_BMAP_LARGE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %65 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %63
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %61, %54
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

71:                                               ; preds = %28
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %80 = getelementptr inbounds %struct.nilfs_bmap, %struct.nilfs_bmap* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = bitcast {}** %82 to i32 (%struct.nilfs_bmap*, i32)**
  %84 = load i32 (%struct.nilfs_bmap*, i32)*, i32 (%struct.nilfs_bmap*, i32)** %83, align 8
  %85 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 %84(%struct.nilfs_bmap* %85, i32 %86)
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %88

88:                                               ; preds = %78, %74, %69, %52
  %89 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nilfs_direct_delete_and_convert(%struct.nilfs_bmap*, i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
