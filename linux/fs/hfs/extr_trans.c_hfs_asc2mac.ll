; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_trans.c_hfs_asc2mac.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_trans.c_hfs_asc2mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_name = type { i8*, i32 }
%struct.qstr = type { i8*, i32 }
%struct.nls_table = type { i32 (i8*, i32, i8*)*, i32 (i8, i8*, i32)* }
%struct.TYPE_2__ = type { %struct.nls_table*, %struct.nls_table* }

@HFS_NAMELEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfs_asc2mac(%struct.super_block* %0, %struct.hfs_name* %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.hfs_name*, align 8
  %6 = alloca %struct.qstr*, align 8
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
  store %struct.hfs_name* %1, %struct.hfs_name** %5, align 8
  store %struct.qstr* %2, %struct.qstr** %6, align 8
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
  %24 = load %struct.qstr*, %struct.qstr** %6, align 8
  %25 = getelementptr inbounds %struct.qstr, %struct.qstr* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.qstr*, %struct.qstr** %6, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load %struct.hfs_name*, %struct.hfs_name** %5, align 8
  %31 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* @HFS_NAMELEN, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %35 = icmp ne %struct.nls_table* %34, null
  br i1 %35, label %36, label %108

36:                                               ; preds = %3
  br label %37

37:                                               ; preds = %106, %36
  %38 = load i32, i32* %11, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %107

40:                                               ; preds = %37
  %41 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %42 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %41, i32 0, i32 0
  %43 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %42, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 %43(i8* %44, i32 %45, i8* %14)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i8 63, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* %13, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i8, i8* %14, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 58
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store i8 47, i8* %14, align 1
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %64 = icmp ne %struct.nls_table* %63, null
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %67 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %66, i32 0, i32 1
  %68 = load i32 (i8, i8*, i32)*, i32 (i8, i8*, i32)** %67, align 8
  %69 = load i8, i8* %14, align 1
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 %68(i8 signext %69, i8* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %65
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @ENAMETOOLONG, align 4
  %78 = sub nsw i32 0, %77
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %136

81:                                               ; preds = %75
  %82 = load i8*, i8** %10, align 8
  store i8 63, i8* %82, align 1
  store i32 1, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %65
  %84 = load i32, i32* %13, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8* %87, i8** %10, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %106

91:                                               ; preds = %62
  %92 = load i8, i8* %14, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp sgt i32 %93, 255
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %99

96:                                               ; preds = %91
  %97 = load i8, i8* %14, align 1
  %98 = sext i8 %97 to i32
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ 63, %95 ], [ %98, %96 ]
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %99, %83
  br label %37

107:                                              ; preds = %37
  br label %135

108:                                              ; preds = %3
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %12, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %115
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  %122 = load i8, i8* %120, align 1
  store i8 %122, i8* %15, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 58
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  br label %129

126:                                              ; preds = %119
  %127 = load i8, i8* %15, align 1
  %128 = sext i8 %127 to i32
  br label %129

129:                                              ; preds = %126, %125
  %130 = phi i32 [ 47, %125 ], [ %128, %126 ]
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %10, align 8
  store i8 %131, i8* %132, align 1
  br label %115

134:                                              ; preds = %115
  br label %135

135:                                              ; preds = %134, %107
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i8*, i8** %10, align 8
  %138 = load %struct.hfs_name*, %struct.hfs_name** %5, align 8
  %139 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = ptrtoint i8* %137 to i64
  %142 = ptrtoint i8* %140 to i64
  %143 = sub i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = load %struct.hfs_name*, %struct.hfs_name** %5, align 8
  %146 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 8
  %147 = load i32, i32* @HFS_NAMELEN, align 4
  %148 = load %struct.hfs_name*, %struct.hfs_name** %5, align 8
  %149 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = sub nsw i32 %147, %150
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %156, %136
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %12, align 4
  %155 = icmp sge i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %10, align 8
  store i8 0, i8* %157, align 1
  br label %152

159:                                              ; preds = %152
  ret void
}

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
