; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_remap_checks.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_generic_remap_checks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@REMAP_FILE_DEDUP = common dso_local global i32 0, align 4
@REMAP_FILE_CAN_SHORTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_remap_checks(%struct.file* %0, i64 %1, %struct.file* %2, i64 %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.file*, %struct.file** %8, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %14, align 8
  %27 = load %struct.file*, %struct.file** %10, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.inode*, %struct.inode** %30, align 8
  store %struct.inode* %31, %struct.inode** %15, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  %34 = load %struct.inode*, %struct.inode** %15, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %20, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %20, align 8
  %41 = call i32 @IS_ALIGNED(i64 %39, i64 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %6
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %20, align 8
  %46 = call i32 @IS_ALIGNED(i64 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %6
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %176

51:                                               ; preds = %43
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i64, i64* %9, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i64, i64* %11, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57, %51
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %176

66:                                               ; preds = %57
  %67 = load %struct.inode*, %struct.inode** %14, align 8
  %68 = call i64 @i_size_read(%struct.inode* %67)
  store i64 %68, i64* %18, align 8
  %69 = load %struct.inode*, %struct.inode** %15, align 8
  %70 = call i64 @i_size_read(%struct.inode* %69)
  store i64 %70, i64* %19, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @REMAP_FILE_DEDUP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp sge i64 %76, %77
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* %16, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i64, i64* %18, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %95, label %85

85:                                               ; preds = %79
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %19, align 8
  %88 = icmp sge i64 %86, %87
  br i1 %88, label %95, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %16, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i64, i64* %19, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %85, %79, %75
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %176

98:                                               ; preds = %89, %66
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %18, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %7, align 4
  br label %176

105:                                              ; preds = %98
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %18, align 8
  %108 = load i64, i64* %9, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i64 @min(i64 %106, i64 %109)
  store i64 %110, i64* %16, align 8
  %111 = load %struct.file*, %struct.file** %10, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @generic_write_check_limits(%struct.file* %111, i64 %112, i64* %16)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* %21, align 4
  store i32 %117, i32* %7, align 4
  br label %176

118:                                              ; preds = %105
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %16, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i64, i64* %18, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load i64, i64* %18, align 8
  %126 = load i64, i64* %20, align 8
  %127 = call i64 @ALIGN(i64 %125, i64 %126)
  %128 = load i64, i64* %9, align 8
  %129 = sub nsw i64 %127, %128
  store i64 %129, i64* %17, align 8
  br label %141

130:                                              ; preds = %118
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %20, align 8
  %133 = call i32 @IS_ALIGNED(i64 %131, i64 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %130
  %136 = load i64, i64* %16, align 8
  %137 = load i64, i64* %20, align 8
  %138 = call i64 @ALIGN_DOWN(i64 %136, i64 %137)
  store i64 %138, i64* %16, align 8
  br label %139

139:                                              ; preds = %135, %130
  %140 = load i64, i64* %16, align 8
  store i64 %140, i64* %17, align 8
  br label %141

141:                                              ; preds = %139, %124
  %142 = load %struct.inode*, %struct.inode** %14, align 8
  %143 = load %struct.inode*, %struct.inode** %15, align 8
  %144 = icmp eq %struct.inode* %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %17, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i64, i64* %9, align 8
  %150 = icmp sgt i64 %148, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %17, align 8
  %155 = add nsw i64 %153, %154
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %7, align 4
  br label %176

160:                                              ; preds = %151, %145, %141
  %161 = load i64*, i64** %12, align 8
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %16, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %160
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* @REMAP_FILE_CAN_SHORTEN, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %173, label %170

170:                                              ; preds = %165
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %7, align 4
  br label %176

173:                                              ; preds = %165, %160
  %174 = load i64, i64* %16, align 8
  %175 = load i64*, i64** %12, align 8
  store i64 %174, i64* %175, align 8
  store i32 0, i32* %7, align 4
  br label %176

176:                                              ; preds = %173, %170, %157, %116, %102, %95, %63, %48
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @IS_ALIGNED(i64, i64) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @generic_write_check_limits(%struct.file*, i64, i64*) #1

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i64 @ALIGN_DOWN(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
