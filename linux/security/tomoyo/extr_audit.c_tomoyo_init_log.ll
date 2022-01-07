; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_init_log.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_audit.c_tomoyo_init_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_request_info = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.linux_binprm*, i32 }
%struct.linux_binprm = type { i32, i32, %struct.file* }
%struct.file = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c" exec={ realpath=\22%s\22 argc=%d envc=%d %s }\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" symlink.target=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tomoyo_init_log(%struct.tomoyo_request_info* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tomoyo_request_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.linux_binprm*, align 8
  store %struct.tomoyo_request_info* %0, %struct.tomoyo_request_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %19 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %20 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %16, align 8
  %26 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %27 = call i8* @tomoyo_print_header(%struct.tomoyo_request_info* %26)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %200

31:                                               ; preds = %4
  %32 = load i8*, i8** %16, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = load i8*, i8** %12, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %33, %35
  %37 = add nsw i64 %36, 10
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %43 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %84

46:                                               ; preds = %31
  %47 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %48 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.linux_binprm*, %struct.linux_binprm** %50, align 8
  %52 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %51, i32 0, i32 2
  %53 = load %struct.file*, %struct.file** %52, align 8
  store %struct.file* %53, %struct.file** %17, align 8
  %54 = load %struct.file*, %struct.file** %17, align 8
  %55 = getelementptr inbounds %struct.file, %struct.file* %54, i32 0, i32 0
  %56 = call i8* @tomoyo_realpath_from_path(i32* %55)
  store i8* %56, i8** %13, align 8
  %57 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %58 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.linux_binprm*, %struct.linux_binprm** %60, align 8
  %62 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %63 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = call i8* @tomoyo_print_bprm(%struct.linux_binprm* %61, i32* %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %46
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69, %46
  br label %192

73:                                               ; preds = %69
  %74 = load i8*, i8** %13, align 8
  %75 = call i64 @strlen(i8* %74)
  %76 = add nsw i64 %75, 80
  %77 = load i8*, i8** %11, align 8
  %78 = call i64 @strlen(i8* %77)
  %79 = add nsw i64 %76, %78
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %7, align 4
  br label %112

84:                                               ; preds = %31
  %85 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %86 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = icmp ne %struct.TYPE_9__* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %84
  %90 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %91 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %93, align 8
  %95 = icmp ne %struct.TYPE_8__* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %98 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %14, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i64 @strlen(i8* %104)
  %106 = add nsw i64 18, %105
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %96, %89, %84
  br label %112

112:                                              ; preds = %111, %73
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @tomoyo_round2(i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* @GFP_NOFS, align 4
  %117 = call i8* @kzalloc(i32 %115, i32 %116)
  store i8* %117, i8** %10, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %192

121:                                              ; preds = %112
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %7, align 4
  %124 = load i8*, i8** %10, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load i8*, i8** %12, align 8
  %127 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %124, i32 %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %126)
  store i32 %127, i32* %15, align 4
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %154

130:                                              ; preds = %121
  %131 = load %struct.tomoyo_request_info*, %struct.tomoyo_request_info** %6, align 8
  %132 = getelementptr inbounds %struct.tomoyo_request_info, %struct.tomoyo_request_info* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.linux_binprm*, %struct.linux_binprm** %134, align 8
  store %struct.linux_binprm* %135, %struct.linux_binprm** %18, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %15, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %15, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i8*, i8** %13, align 8
  %144 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %145 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.linux_binprm*, %struct.linux_binprm** %18, align 8
  %148 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %11, align 8
  %151 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %139, i32 %142, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %143, i32 %146, i32 %149, i8* %150)
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %15, align 4
  br label %170

154:                                              ; preds = %121
  %155 = load i8*, i8** %14, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %15, align 4
  %164 = sub nsw i32 %162, %163
  %165 = load i8*, i8** %14, align 8
  %166 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %161, i32 %164, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %165)
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %157, %154
  br label %170

170:                                              ; preds = %169, %130
  %171 = load i8*, i8** %10, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i8*, i8** %16, align 8
  %179 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %174, i32 %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %178)
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %15, align 4
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* %15, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @vsnprintf(i8* %185, i32 %188, i8* %189, i32 %190)
  br label %192

192:                                              ; preds = %170, %120, %72
  %193 = load i8*, i8** %13, align 8
  %194 = call i32 @kfree(i8* %193)
  %195 = load i8*, i8** %11, align 8
  %196 = call i32 @kfree(i8* %195)
  %197 = load i8*, i8** %12, align 8
  %198 = call i32 @kfree(i8* %197)
  %199 = load i8*, i8** %10, align 8
  store i8* %199, i8** %5, align 8
  br label %200

200:                                              ; preds = %192, %30
  %201 = load i8*, i8** %5, align 8
  ret i8* %201
}

declare dso_local i8* @tomoyo_print_header(%struct.tomoyo_request_info*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @tomoyo_realpath_from_path(i32*) #1

declare dso_local i8* @tomoyo_print_bprm(%struct.linux_binprm*, i32*) #1

declare dso_local i32 @tomoyo_round2(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
