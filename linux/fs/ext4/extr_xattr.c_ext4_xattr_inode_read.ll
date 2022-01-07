; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFSCORRUPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i64)* @ext4_xattr_inode_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_inode_read(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x %struct.buffer_head*], align 16
  %12 = alloca %struct.buffer_head**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %19, %21
  %23 = sub i64 %22, 1
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = lshr i64 %23, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = urem i64 %30, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i64 [ %33, %35 ], [ %38, %36 ]
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = getelementptr inbounds [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %11, i64 0, i64 0
  store %struct.buffer_head** %42, %struct.buffer_head*** %12, align 8
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %11, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(%struct.buffer_head** %44)
  %46 = icmp sgt i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %39
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @GFP_NOFS, align 4
  %50 = call %struct.buffer_head** @kmalloc_array(i32 %48, i32 8, i32 %49)
  store %struct.buffer_head** %50, %struct.buffer_head*** %12, align 8
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %52 = icmp ne %struct.buffer_head** %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %134

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %61 = call i32 @ext4_bread_batch(%struct.inode* %58, i32 0, i32 %59, i32 1, %struct.buffer_head** %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %125

65:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %71, i64 %73
  %75 = load %struct.buffer_head*, %struct.buffer_head** %74, align 8
  %76 = icmp ne %struct.buffer_head* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @EFSCORRUPTED, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %14, align 4
  br label %109

80:                                               ; preds = %70
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %13, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %81, i64 %85
  %87 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %87, i64 %89
  %91 = load %struct.buffer_head*, %struct.buffer_head** %90, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %80
  %99 = load i32, i32* %8, align 4
  br label %102

100:                                              ; preds = %80
  %101 = load i32, i32* %10, align 4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %99, %98 ], [ %101, %100 ]
  %104 = call i32 @memcpy(i8* %86, i32 %93, i32 %103)
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %13, align 4
  br label %66

108:                                              ; preds = %66
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %77
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %121, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %115, i64 %117
  %119 = load %struct.buffer_head*, %struct.buffer_head** %118, align 8
  %120 = call i32 @brelse(%struct.buffer_head* %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %110

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %64
  %126 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %127 = getelementptr inbounds [8 x %struct.buffer_head*], [8 x %struct.buffer_head*]* %11, i64 0, i64 0
  %128 = icmp ne %struct.buffer_head** %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %131 = call i32 @kfree(%struct.buffer_head** %130)
  br label %132

132:                                              ; preds = %129, %125
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %132, %53
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @ARRAY_SIZE(%struct.buffer_head**) #1

declare dso_local %struct.buffer_head** @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ext4_bread_batch(%struct.inode*, i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
