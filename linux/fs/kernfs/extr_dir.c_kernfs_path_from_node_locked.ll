; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_path_from_node_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_path_from_node_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i8*, %struct.kernfs_node* }
%struct.TYPE_2__ = type { %struct.kernfs_node* }

@__const.kernfs_path_from_node_locked.parent_str = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*, i64)* @kernfs_path_from_node_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_path_from_node_locked(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.kernfs_node*, align 8
  %11 = alloca %struct.kernfs_node*, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = bitcast [4 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.kernfs_path_from_node_locked.parent_str, i32 0, i32 0), i64 4, i1 false)
  store i64 0, i64* %15, align 8
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %20 = icmp ne %struct.kernfs_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @strlcpy(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 %24, i32* %5, align 4
  br label %160

25:                                               ; preds = %4
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %27 = icmp ne %struct.kernfs_node* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %30 = call %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node* %29)
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %31, align 8
  store %struct.kernfs_node* %32, %struct.kernfs_node** %7, align 8
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %36 = icmp eq %struct.kernfs_node* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @strlcpy(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  store i32 %40, i32* %5, align 4
  br label %160

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %160

47:                                               ; preds = %41
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %50 = call %struct.kernfs_node* @kernfs_common_ancestor(%struct.kernfs_node* %48, %struct.kernfs_node* %49)
  store %struct.kernfs_node* %50, %struct.kernfs_node** %11, align 8
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %52 = icmp ne %struct.kernfs_node* %51, null
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %160

60:                                               ; preds = %47
  %61 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %63 = call i64 @kernfs_depth(%struct.kernfs_node* %61, %struct.kernfs_node* %62)
  store i64 %63, i64* %14, align 8
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %11, align 8
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %66 = call i64 @kernfs_depth(%struct.kernfs_node* %64, %struct.kernfs_node* %65)
  store i64 %66, i64* %13, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 0, i8* %68, align 1
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %93, %60
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %13, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %69
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %15, align 8
  %85 = sub i64 %83, %84
  br label %87

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %82
  %88 = phi i64 [ %85, %82 ], [ 0, %86 ]
  %89 = call i32 @strlcpy(i8* %77, i8* %78, i64 %88)
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %15, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %15, align 8
  br label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %16, align 4
  br label %69

96:                                               ; preds = %69
  %97 = load i64, i64* %14, align 8
  %98 = sub i64 %97, 1
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %154, %96
  %101 = load i32, i32* %16, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %157

103:                                              ; preds = %100
  %104 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %104, %struct.kernfs_node** %10, align 8
  store i32 0, i32* %17, align 4
  br label %105

105:                                              ; preds = %113, %103
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %111 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %110, i32 0, i32 1
  %112 = load %struct.kernfs_node*, %struct.kernfs_node** %111, align 8
  store %struct.kernfs_node* %112, %struct.kernfs_node** %10, align 8
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %105

116:                                              ; preds = %105
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %9, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %15, align 8
  %126 = sub i64 %124, %125
  br label %128

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %123
  %129 = phi i64 [ %126, %123 ], [ 0, %127 ]
  %130 = call i32 @strlcpy(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64 %129)
  %131 = sext i32 %130 to i64
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %15, align 8
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %15, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load %struct.kernfs_node*, %struct.kernfs_node** %10, align 8
  %138 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i64, i64* %15, align 8
  %141 = load i64, i64* %9, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %128
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %15, align 8
  %146 = sub i64 %144, %145
  br label %148

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %143
  %149 = phi i64 [ %146, %143 ], [ 0, %147 ]
  %150 = call i32 @strlcpy(i8* %136, i8* %139, i64 %149)
  %151 = sext i32 %150 to i64
  %152 = load i64, i64* %15, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %15, align 8
  br label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %16, align 4
  br label %100

157:                                              ; preds = %100
  %158 = load i64, i64* %15, align 8
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %157, %57, %44, %37, %21
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local %struct.TYPE_2__* @kernfs_root(%struct.kernfs_node*) #2

declare dso_local %struct.kernfs_node* @kernfs_common_ancestor(%struct.kernfs_node*, %struct.kernfs_node*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local i64 @kernfs_depth(%struct.kernfs_node*, %struct.kernfs_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
