; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_trans.c_hfs_mac2asc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_trans.c_hfs_mac2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_name = type { i8*, i32 }
%struct.nls_table = type { i32 (i8*, i32, i8*)*, i32 (i8, i8*, i32)* }
%struct.TYPE_2__ = type { %struct.nls_table*, %struct.nls_table* }

@HFS_NAMELEN = common dso_local global i32 0, align 4
@HFS_MAX_NAMELEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_mac2asc(%struct.super_block* %0, i8* %1, %struct.hfs_name* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfs_name*, align 8
  %7 = alloca %struct.nls_table*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hfs_name* %2, %struct.hfs_name** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.nls_table*, %struct.nls_table** %18, align 8
  store %struct.nls_table* %19, %struct.nls_table** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nls_table*, %struct.nls_table** %22, align 8
  store %struct.nls_table* %23, %struct.nls_table** %8, align 8
  %24 = load %struct.hfs_name*, %struct.hfs_name** %6, align 8
  %25 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.hfs_name*, %struct.hfs_name** %6, align 8
  %28 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @HFS_NAMELEN, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @HFS_NAMELEN, align 4
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %33, %3
  %36 = load i8*, i8** %5, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* @HFS_MAX_NAMELEN, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %39 = icmp ne %struct.nls_table* %38, null
  br i1 %39, label %40, label %103

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %94, %40
  %42 = load i32, i32* %11, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %102

44:                                               ; preds = %41
  %45 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %46 = icmp ne %struct.nls_table* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %49 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %48, i32 0, i32 0
  %50 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = call i32 %50(i8* %51, i32 %52, i8* %14)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i8 63, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %13, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %71

65:                                               ; preds = %44
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %9, align 8
  %68 = load i8, i8* %66, align 1
  store i8 %68, i8* %14, align 1
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %65, %57
  %72 = load i8, i8* %14, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 47
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i8 58, i8* %14, align 1
  br label %76

76:                                               ; preds = %75, %71
  %77 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %78 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %77, i32 0, i32 1
  %79 = load i32 (i8, i8*, i32)*, i32 (i8, i8*, i32)** %78, align 8
  %80 = load i8, i8* %14, align 1
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = call i32 %79(i8 signext %80, i8* %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @ENAMETOOLONG, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %125

92:                                               ; preds = %86
  %93 = load i8*, i8** %10, align 8
  store i8 63, i8* %93, align 1
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %92, %76
  %95 = load i32, i32* %13, align 4
  %96 = load i8*, i8** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %41

102:                                              ; preds = %41
  br label %124

103:                                              ; preds = %35
  br label %104

104:                                              ; preds = %118, %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %11, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  %111 = load i8, i8* %109, align 1
  store i8 %111, i8* %15, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 47
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %118

115:                                              ; preds = %108
  %116 = load i8, i8* %15, align 1
  %117 = sext i8 %116 to i32
  br label %118

118:                                              ; preds = %115, %114
  %119 = phi i32 [ 58, %114 ], [ %117, %115 ]
  %120 = trunc i32 %119 to i8
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %10, align 8
  store i8 %120, i8* %121, align 1
  br label %104

123:                                              ; preds = %104
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %91
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %5, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  ret i32 %131
}

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
