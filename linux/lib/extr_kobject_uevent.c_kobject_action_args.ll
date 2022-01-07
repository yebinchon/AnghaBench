; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_kobject_action_args.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_kobject_uevent.c_kobject_action_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_uevent_env = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UUID_STRING_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"SYNTH_UUID=%.*s\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"SYNTH_ARG_%.*s=%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.kobj_uevent_env**)* @kobject_action_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kobject_action_args(i8* %0, i64 %1, %struct.kobj_uevent_env** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kobj_uevent_env**, align 8
  %8 = alloca %struct.kobj_uevent_env*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.kobj_uevent_env** %2, %struct.kobj_uevent_env*** %7, align 8
  store %struct.kobj_uevent_env* null, %struct.kobj_uevent_env** %8, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %13, align 4
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26, %18
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, -1
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %34, %26, %3
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %156

43:                                               ; preds = %37
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.kobj_uevent_env* @kzalloc(i32 4, i32 %44)
  store %struct.kobj_uevent_env* %45, %struct.kobj_uevent_env** %8, align 8
  %46 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %8, align 8
  %47 = icmp ne %struct.kobj_uevent_env* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %156

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @UUID_STRING_LEN, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @uuid_is_valid(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %8, align 8
  %61 = load i64, i64* @UUID_STRING_LEN, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 (%struct.kobj_uevent_env*, i8*, i32, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59, %55, %51
  br label %145

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* @UUID_STRING_LEN, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 -1
  store i8* %74, i8** %10, align 8
  br label %75

75:                                               ; preds = %143, %67
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ule i8* %76, %77
  br i1 %78, label %79, label %144

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 32
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %145

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %9, align 8
  store i8* %87, i8** %11, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %145

92:                                               ; preds = %85
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i8* @action_arg_word_end(i8* %94, i8* %95, i8 signext 61)
  store i8* %96, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %92
  %100 = load i8*, i8** %9, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = icmp ugt i8* %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %9, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 61
  br i1 %107, label %108, label %109

108:                                              ; preds = %103, %99, %92
  br label %145

109:                                              ; preds = %103
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %12, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %9, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = icmp ugt i8* %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %145

121:                                              ; preds = %109
  %122 = load i8*, i8** %9, align 8
  store i8* %122, i8** %5, align 8
  %123 = load i8*, i8** %5, align 8
  %124 = load i8*, i8** %10, align 8
  %125 = call i8* @action_arg_word_end(i8* %123, i8* %124, i8 signext 32)
  store i8* %125, i8** %9, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %145

129:                                              ; preds = %121
  %130 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %8, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = ptrtoint i8* %133 to i64
  %136 = ptrtoint i8* %134 to i64
  %137 = sub i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = load i8*, i8** %5, align 8
  %140 = call i64 (%struct.kobj_uevent_env*, i8*, i32, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %130, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %131, i8* %132, i32 %138, i8* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %145

143:                                              ; preds = %129
  br label %75

144:                                              ; preds = %75
  store i32 0, i32* %13, align 4
  br label %145

145:                                              ; preds = %144, %142, %128, %120, %108, %91, %84, %66
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %8, align 8
  %150 = call i32 @kfree(%struct.kobj_uevent_env* %149)
  br label %154

151:                                              ; preds = %145
  %152 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %8, align 8
  %153 = load %struct.kobj_uevent_env**, %struct.kobj_uevent_env*** %7, align 8
  store %struct.kobj_uevent_env* %152, %struct.kobj_uevent_env** %153, align 8
  br label %154

154:                                              ; preds = %151, %148
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %48, %40
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local %struct.kobj_uevent_env* @kzalloc(i32, i32) #1

declare dso_local i32 @uuid_is_valid(i8*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, i8*, ...) #1

declare dso_local i8* @action_arg_word_end(i8*, i8*, i8 signext) #1

declare dso_local i32 @kfree(%struct.kobj_uevent_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
