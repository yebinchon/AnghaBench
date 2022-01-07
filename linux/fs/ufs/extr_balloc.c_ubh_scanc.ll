; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ubh_scanc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_balloc.c_ubh_scanc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_sb_private_info = type { i32, i32, i32 }
%struct.ufs_buffer_head = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32, i32, i8*, i8)* @ubh_scanc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubh_scanc(%struct.ufs_sb_private_info* %0, %struct.ufs_buffer_head* %1, i32 %2, i32 %3, i8* %4, i8 zeroext %5) #0 {
  %7 = alloca %struct.ufs_sb_private_info*, align 8
  %8 = alloca %struct.ufs_buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ufs_sb_private_info* %0, %struct.ufs_sb_private_info** %7, align 8
  store %struct.ufs_buffer_head* %1, %struct.ufs_buffer_head** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8 %5, i8* %12, align 1
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %18 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %23 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = lshr i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %86, %6
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %28, %29
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %32 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %13, align 4
  br label %43

37:                                               ; preds = %27
  %38 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %7, align 8
  %39 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub i32 %40, %41
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %37, %35
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %8, align 8
  %48 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %49, i64 %51
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %15, align 8
  br label %59

59:                                               ; preds = %78, %43
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i8, i8* %60, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* %12, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %59
  %73 = load i32, i32* %13, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %59
  %77 = phi i1 [ false, %59 ], [ %75, %72 ]
  br i1 %77, label %78, label %79

78:                                               ; preds = %76
  br label %59

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %82, %79
  br label %89

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %27

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %90, %91
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
