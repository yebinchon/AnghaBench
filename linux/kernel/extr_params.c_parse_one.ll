; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 (i8*, %struct.kernel_param*)* }

@KERNEL_PARAM_OPS_FL_NOARG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"handling %s with %p\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"doing %s: %s='%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unknown argument '%s'\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, %struct.kernel_param*, i32, i64, i64, i8*, i32 (i8*, i8*, i8*, i8*)*)* @parse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_one(i8* %0, i8* %1, i8* %2, %struct.kernel_param* %3, i32 %4, i64 %5, i64 %6, i8* %7, i32 (i8*, i8*, i8*, i8*)* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.kernel_param*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32 (i8*, i8*, i8*, i8*)*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store %struct.kernel_param* %3, %struct.kernel_param** %14, align 8
  store i32 %4, i32* %15, align 4
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 (i8*, i8*, i8*, i8*)* %8, i32 (i8*, i8*, i8*, i8*)** %19, align 8
  store i32 0, i32* %20, align 4
  br label %22

22:                                               ; preds = %125, %9
  %23 = load i32, i32* %20, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %128

26:                                               ; preds = %22
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %29 = load i32, i32* %20, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %28, i64 %30
  %32 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @parameq(i8* %27, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %124

36:                                               ; preds = %26
  %37 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %38 = load i32, i32* %20, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %37, i64 %39
  %41 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %54, label %45

45:                                               ; preds = %36
  %46 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %47 = load i32, i32* %20, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %46, i64 %48
  %50 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %17, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %45, %36
  store i32 0, i32* %10, align 4
  br label %147

55:                                               ; preds = %45
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %60 = load i32, i32* %20, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %59, i64 %61
  %63 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @KERNEL_PARAM_OPS_FL_NOARG, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %147

73:                                               ; preds = %58, %55
  %74 = load i8*, i8** %11, align 8
  %75 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %76 = load i32, i32* %20, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %75, i64 %77
  %79 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %81, align 8
  %83 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %74, i32 (i8*, %struct.kernel_param*)* %82)
  %84 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %85 = load i32, i32* %20, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %84, i64 %86
  %88 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @kernel_param_lock(i32 %89)
  %91 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %92 = load i32, i32* %20, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %91, i64 %93
  %95 = call i64 @param_check_unsafe(%struct.kernel_param* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %73
  %98 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %99 = load i32, i32* %20, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %98, i64 %100
  %102 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)** %104, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %108 = load i32, i32* %20, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %107, i64 %109
  %111 = call i32 %105(i8* %106, %struct.kernel_param* %110)
  store i32 %111, i32* %21, align 4
  br label %115

112:                                              ; preds = %73
  %113 = load i32, i32* @EPERM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %21, align 4
  br label %115

115:                                              ; preds = %112, %97
  %116 = load %struct.kernel_param*, %struct.kernel_param** %14, align 8
  %117 = load i32, i32* %20, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %116, i64 %118
  %120 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @kernel_param_unlock(i32 %121)
  %123 = load i32, i32* %21, align 4
  store i32 %123, i32* %10, align 4
  br label %147

124:                                              ; preds = %26
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %20, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %22

128:                                              ; preds = %22
  %129 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %19, align 8
  %130 = icmp ne i32 (i8*, i8*, i8*, i8*)* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i8*, i8** %13, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %132, i8* %133, i8* %134)
  %136 = load i32 (i8*, i8*, i8*, i8*)*, i32 (i8*, i8*, i8*, i8*)** %19, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = call i32 %136(i8* %137, i8* %138, i8* %139, i8* %140)
  store i32 %141, i32* %10, align 4
  br label %147

142:                                              ; preds = %128
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 (i8*, i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %143)
  %145 = load i32, i32* @ENOENT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %142, %131, %115, %70, %54
  %148 = load i32, i32* %10, align 4
  ret i32 %148
}

declare dso_local i64 @parameq(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, ...) #1

declare dso_local i32 @kernel_param_lock(i32) #1

declare dso_local i64 @param_check_unsafe(%struct.kernel_param*) #1

declare dso_local i32 @kernel_param_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
