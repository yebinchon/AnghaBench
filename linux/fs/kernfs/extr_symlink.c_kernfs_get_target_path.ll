; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_get_target_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_symlink.c_kernfs_get_target_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node*, i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"../\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*, %struct.kernfs_node*, i8*)* @kernfs_get_target_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_get_target_path(%struct.kernfs_node* %0, %struct.kernfs_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %5, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  store %struct.kernfs_node* %14, %struct.kernfs_node** %8, align 8
  br label %15

15:                                               ; preds = %57, %3
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %17 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %16, i32 0, i32 0
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %17, align 8
  %19 = icmp ne %struct.kernfs_node* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %15
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %22 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %21, i32 0, i32 0
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %22, align 8
  store %struct.kernfs_node* %23, %struct.kernfs_node** %9, align 8
  br label %24

24:                                               ; preds = %35, %20
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %26 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %25, i32 0, i32 0
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %26, align 8
  %28 = icmp ne %struct.kernfs_node* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %32 = icmp ne %struct.kernfs_node* %30, %31
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi i1 [ false, %24 ], [ %32, %29 ]
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %37 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %36, i32 0, i32 0
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %37, align 8
  store %struct.kernfs_node* %38, %struct.kernfs_node** %9, align 8
  br label %24

39:                                               ; preds = %33
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %41 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %42 = icmp eq %struct.kernfs_node* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %65

44:                                               ; preds = %39
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = add nsw i64 %49, 3
  %51 = load i32, i32* @PATH_MAX, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp sge i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @ENAMETOOLONG, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %155

57:                                               ; preds = %44
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 3
  store i8* %61, i8** %10, align 8
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %63 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %62, i32 0, i32 0
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %63, align 8
  store %struct.kernfs_node* %64, %struct.kernfs_node** %8, align 8
  br label %15

65:                                               ; preds = %43, %15
  %66 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %66, %struct.kernfs_node** %9, align 8
  br label %67

67:                                               ; preds = %78, %65
  %68 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %69 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %68, i32 0, i32 0
  %70 = load %struct.kernfs_node*, %struct.kernfs_node** %69, align 8
  %71 = icmp ne %struct.kernfs_node* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %74 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %75 = icmp ne %struct.kernfs_node* %73, %74
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  br i1 %77, label %78, label %89

78:                                               ; preds = %76
  %79 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %80 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @strlen(i32 %81)
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  %86 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %87 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %86, i32 0, i32 0
  %88 = load %struct.kernfs_node*, %struct.kernfs_node** %87, align 8
  store %struct.kernfs_node* %88, %struct.kernfs_node** %9, align 8
  br label %67

89:                                               ; preds = %76
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %155

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = ptrtoint i8* %98 to i64
  %101 = ptrtoint i8* %99 to i64
  %102 = sub i64 %100, %101
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %102, %104
  %106 = load i32, i32* @PATH_MAX, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp sge i64 %105, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %95
  %110 = load i32, i32* @ENAMETOOLONG, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %155

112:                                              ; preds = %95
  %113 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %113, %struct.kernfs_node** %9, align 8
  br label %114

114:                                              ; preds = %150, %112
  %115 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %116 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %115, i32 0, i32 0
  %117 = load %struct.kernfs_node*, %struct.kernfs_node** %116, align 8
  %118 = icmp ne %struct.kernfs_node* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %121 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %122 = icmp ne %struct.kernfs_node* %120, %121
  br label %123

123:                                              ; preds = %119, %114
  %124 = phi i1 [ false, %114 ], [ %122, %119 ]
  br i1 %124, label %125, label %154

125:                                              ; preds = %123
  %126 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %127 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @strlen(i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %11, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %138 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @memcpy(i8* %136, i32 %139, i32 %140)
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %125
  %145 = load i8*, i8** %10, align 8
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 47, i8* %149, align 1
  br label %150

150:                                              ; preds = %144, %125
  %151 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %152 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %151, i32 0, i32 0
  %153 = load %struct.kernfs_node*, %struct.kernfs_node** %152, align 8
  store %struct.kernfs_node* %153, %struct.kernfs_node** %9, align 8
  br label %114

154:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %154, %109, %92, %54
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
