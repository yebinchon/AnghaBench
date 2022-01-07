; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_encode_value.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_fdtput.c_encode_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display_info = type { i8, i32, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Decoding value:\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Out of mmory: cannot alloc %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\09string: '%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\09%s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Value size %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.display_info*, i8**, i32, i8**, i32*)* @encode_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_value(%struct.display_info* %0, i8** %1, i32 %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.display_info*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8], align 1
  %19 = alloca i32*, align 8
  store %struct.display_info* %0, %struct.display_info** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.display_info*, %struct.display_info** %7, align 8
  %21 = getelementptr inbounds %struct.display_info, %struct.display_info* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %5
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  store i8 37, i8* %28, align 1
  %29 = load %struct.display_info*, %struct.display_info** %7, align 8
  %30 = getelementptr inbounds %struct.display_info, %struct.display_info* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 8
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.display_info*, %struct.display_info** %7, align 8
  %36 = getelementptr inbounds %struct.display_info, %struct.display_info* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  br label %40

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39, %34
  %41 = phi i32 [ %38, %34 ], [ 100, %39 ]
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 2
  store i8 0, i8* %44, align 1
  br label %45

45:                                               ; preds = %159, %40
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %167

48:                                               ; preds = %45
  %49 = load %struct.display_info*, %struct.display_info** %7, align 8
  %50 = getelementptr inbounds %struct.display_info, %struct.display_info* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 8
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 115
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load i8**, i8*** %8, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %15, align 4
  br label %71

59:                                               ; preds = %48
  %60 = load %struct.display_info*, %struct.display_info** %7, align 8
  %61 = getelementptr inbounds %struct.display_info, %struct.display_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.display_info*, %struct.display_info** %7, align 8
  %67 = getelementptr inbounds %struct.display_info, %struct.display_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = phi i32 [ 4, %64 ], [ %68, %65 ]
  store i32 %70, i32* %15, align 4
  br label %71

71:                                               ; preds = %69, %54
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 500
  store i32 %81, i32* %13, align 4
  %82 = load i8*, i8** %12, align 8
  %83 = load i32, i32* %13, align 4
  %84 = call i8* @realloc(i8* %82, i32 %83)
  store i8* %84, i8** %12, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %77
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  store i32 -1, i32* %6, align 4
  br label %181

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i8*, i8** %12, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8* %96, i8** %14, align 8
  %97 = load %struct.display_info*, %struct.display_info** %7, align 8
  %98 = getelementptr inbounds %struct.display_info, %struct.display_info* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 8
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 115
  br i1 %101, label %102, label %117

102:                                              ; preds = %92
  %103 = load i8*, i8** %14, align 8
  %104 = load i8**, i8*** %8, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i32 @memcpy(i8* %103, i8* %105, i32 %106)
  %108 = load %struct.display_info*, %struct.display_info** %7, align 8
  %109 = getelementptr inbounds %struct.display_info, %struct.display_info* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %102
  %113 = load i32, i32* @stderr, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %102
  br label %158

117:                                              ; preds = %92
  %118 = load i8*, i8** %14, align 8
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %19, align 8
  %120 = load i8**, i8*** %8, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = getelementptr inbounds [3 x i8], [3 x i8]* %18, i64 0, i64 0
  %123 = call i32 @sscanf(i8* %121, i8* %122, i32* %16)
  %124 = load i32, i32* %15, align 4
  %125 = icmp eq i32 %124, 4
  br i1 %125, label %126, label %130

126:                                              ; preds = %117
  %127 = load i32, i32* %16, align 4
  %128 = call i32 @cpu_to_fdt32(i32 %127)
  %129 = load i32*, i32** %19, align 8
  store i32 %128, i32* %129, align 4
  br label %134

130:                                              ; preds = %117
  %131 = load i32, i32* %16, align 4
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %14, align 8
  store i8 %132, i8* %133, align 1
  br label %134

134:                                              ; preds = %130, %126
  %135 = load %struct.display_info*, %struct.display_info** %7, align 8
  %136 = getelementptr inbounds %struct.display_info, %struct.display_info* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %134
  %140 = load i32, i32* @stderr, align 4
  %141 = load %struct.display_info*, %struct.display_info** %7, align 8
  %142 = getelementptr inbounds %struct.display_info, %struct.display_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %153

146:                                              ; preds = %139
  %147 = load %struct.display_info*, %struct.display_info** %7, align 8
  %148 = getelementptr inbounds %struct.display_info, %struct.display_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 2
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  br label %153

153:                                              ; preds = %146, %145
  %154 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %145 ], [ %152, %146 ]
  %155 = load i32, i32* %16, align 4
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %134
  br label %158

158:                                              ; preds = %157, %116
  br label %159

159:                                              ; preds = %158
  %160 = load i8**, i8*** %8, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i32 1
  store i8** %161, i8*** %8, align 8
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %17, align 4
  br label %45

167:                                              ; preds = %45
  %168 = load i32, i32* %17, align 4
  %169 = load i32*, i32** %11, align 8
  store i32 %168, i32* %169, align 4
  %170 = load i8*, i8** %12, align 8
  %171 = load i8**, i8*** %10, align 8
  store i8* %170, i8** %171, align 8
  %172 = load %struct.display_info*, %struct.display_info** %7, align 8
  %173 = getelementptr inbounds %struct.display_info, %struct.display_info* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %167
  %177 = load i32, i32* @stderr, align 4
  %178 = load i32, i32* %17, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %176, %167
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %87
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
