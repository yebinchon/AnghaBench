; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_parse_param.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_legacy_parse_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32*, %struct.legacy_fs_context* }
%struct.legacy_fs_context = type { i32, i64, i8* }
%struct.fs_parameter = type { i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"VFS: Legacy: Non-string source\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"VFS: Legacy: Multiple sources\00", align 1
@LEGACY_FS_MONOLITHIC_PARAMS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"VFS: Legacy: Can't mix monolithic and individual options\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"VFS: Legacy: Parameter type for '%s' not supported\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"VFS: Legacy: Cumulative options too large\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"VFS: Legacy: Option '%s' contained comma\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LEGACY_FS_INDIVIDUAL_PARAMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, %struct.fs_parameter*)* @legacy_parse_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_parse_param(%struct.fs_context* %0, %struct.fs_parameter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca %struct.fs_parameter*, align 8
  %6 = alloca %struct.legacy_fs_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store %struct.fs_parameter* %1, %struct.fs_parameter** %5, align 8
  %9 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %10 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %9, i32 0, i32 1
  %11 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %10, align 8
  store %struct.legacy_fs_context* %11, %struct.legacy_fs_context** %6, align 8
  %12 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %13 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %15 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %16 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = call i64 @strcmp(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %22 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %27 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %3, align 4
  br label %204

28:                                               ; preds = %20
  %29 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %30 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %35 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i32 %35, i32* %3, align 4
  br label %204

36:                                               ; preds = %28
  %37 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %38 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %43 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  store i32 0, i32* %3, align 4
  br label %204

44:                                               ; preds = %2
  %45 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %46 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @LEGACY_FS_MONOLITHIC_PARAMS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %52 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  store i32 %52, i32* %3, align 4
  br label %204

53:                                               ; preds = %44
  %54 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %55 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %70 [
    i32 128, label %57
    i32 129, label %63
  ]

57:                                               ; preds = %53
  %58 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %59 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 1, %60
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %53, %57
  %64 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %65 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = call i64 @strlen(i32* %66)
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  br label %76

70:                                               ; preds = %53
  %71 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %72 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %73 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32* %74)
  store i32 %75, i32* %3, align 4
  br label %204

76:                                               ; preds = %63
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = sub nsw i32 %78, 2
  %80 = load i32, i32* %7, align 4
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = icmp ugt i64 %77, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %86 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 %86, i32* %3, align 4
  br label %204

87:                                               ; preds = %76
  %88 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %89 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = call i64 @strchr(i32* %90, i8 signext 44)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %87
  %94 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %95 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 128
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %100 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %103 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @memchr(i32* %101, i8 signext 44, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98, %87
  %108 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %109 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %110 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 (%struct.fs_context*, i8*, ...) @invalf(%struct.fs_context* %108, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32* %111)
  store i32 %112, i32* %3, align 4
  br label %204

113:                                              ; preds = %98, %93
  %114 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %115 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %132, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @kmalloc(i32 %119, i32 %120)
  %122 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %123 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %125 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %118
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %204

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %134 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = zext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  store i8 44, i8* %139, align 1
  %140 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %141 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = call i64 @strlen(i32* %142)
  store i64 %143, i64* %8, align 8
  %144 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %145 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %151 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = call i32 @memcpy(i8* %149, i32* %152, i64 %153)
  %155 = load i64, i64* %8, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = add i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %7, align 4
  %160 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %161 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 128
  br i1 %163, label %164, label %191

164:                                              ; preds = %132
  %165 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %166 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %7, align 4
  %170 = zext i32 %168 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  store i8 61, i8* %171, align 1
  %172 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %173 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %172, i32 0, i32 2
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %179 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %182 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = call i32 @memcpy(i8* %177, i32* %180, i64 %184)
  %186 = load %struct.fs_parameter*, %struct.fs_parameter** %5, align 8
  %187 = getelementptr inbounds %struct.fs_parameter, %struct.fs_parameter* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %164, %132
  %192 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %193 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 0, i8* %197, align 1
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %200 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load i64, i64* @LEGACY_FS_INDIVIDUAL_PARAMS, align 8
  %202 = load %struct.legacy_fs_context*, %struct.legacy_fs_context** %6, align 8
  %203 = getelementptr inbounds %struct.legacy_fs_context, %struct.legacy_fs_context* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %191, %128, %107, %84, %70, %50, %36, %33, %25
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @invalf(%struct.fs_context*, i8*, ...) #1

declare dso_local i64 @strlen(i32*) #1

declare dso_local i64 @strchr(i32*, i8 signext) #1

declare dso_local i64 @memchr(i32*, i8 signext, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
