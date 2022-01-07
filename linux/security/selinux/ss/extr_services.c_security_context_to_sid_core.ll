; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_context_to_sid_core.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_security_context_to_sid_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.sidtab*, %struct.policydb }
%struct.sidtab = type { i32 }
%struct.policydb = type { i32 }
%struct.context = type { i8*, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SECINITSID_NUM = common dso_local global i32 0, align 4
@initial_sid_to_string = common dso_local global i32* null, align 8
@SECINITSID_KERNEL = common dso_local global i32 0, align 4
@SECSID_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selinux_state*, i8*, i32, i32*, i32, i32, i32)* @security_context_to_sid_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @security_context_to_sid_core(%struct.selinux_state* %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.selinux_state*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.policydb*, align 8
  %17 = alloca %struct.sidtab*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.context, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.selinux_state* %0, %struct.selinux_state** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* null, i8** %19, align 8
  store i32 0, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %138

28:                                               ; preds = %7
  %29 = load i8*, i8** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i8* @kmemdup_nul(i8* %29, i32 %30, i32 %31)
  store i8* %32, i8** %18, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %138

38:                                               ; preds = %28
  %39 = load %struct.selinux_state*, %struct.selinux_state** %9, align 8
  %40 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  store i32 1, i32* %22, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* @SECINITSID_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32*, i32** @initial_sid_to_string, align 8
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %18, align 8
  %55 = call i32 @strcmp(i32 %53, i8* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %22, align 4
  %59 = load i32*, i32** %12, align 8
  store i32 %58, i32* %59, align 4
  br label %132

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %22, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %22, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* @SECINITSID_KERNEL, align 4
  %66 = load i32*, i32** %12, align 8
  store i32 %65, i32* %66, align 4
  br label %132

67:                                               ; preds = %38
  %68 = load i32, i32* @SECSID_NULL, align 4
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %21, align 4
  %75 = load i8*, i8** %18, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i8* @kstrdup(i8* %75, i32 %76)
  store i8* %77, i8** %19, align 8
  %78 = load i8*, i8** %19, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %132

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.selinux_state*, %struct.selinux_state** %9, align 8
  %84 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @read_lock(i32* %86)
  %88 = load %struct.selinux_state*, %struct.selinux_state** %9, align 8
  %89 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store %struct.policydb* %91, %struct.policydb** %16, align 8
  %92 = load %struct.selinux_state*, %struct.selinux_state** %9, align 8
  %93 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load %struct.sidtab*, %struct.sidtab** %95, align 8
  store %struct.sidtab* %96, %struct.sidtab** %17, align 8
  %97 = load %struct.policydb*, %struct.policydb** %16, align 8
  %98 = load %struct.sidtab*, %struct.sidtab** %17, align 8
  %99 = load i8*, i8** %18, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @string_to_context_struct(%struct.policydb* %97, %struct.sidtab* %98, i8* %99, %struct.context* %20, i32 %100)
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %82
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i8*, i8** %19, align 8
  %111 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 0
  store i8* %110, i8** %111, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = call i64 @strlen(i8* %112)
  %114 = add nsw i64 %113, 1
  %115 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 1
  store i64 %114, i64* %115, align 8
  store i8* null, i8** %19, align 8
  br label %121

116:                                              ; preds = %106, %82
  %117 = load i32, i32* %21, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  br label %126

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %120, %109
  %122 = load %struct.sidtab*, %struct.sidtab** %17, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @sidtab_context_to_sid(%struct.sidtab* %122, %struct.context* %20, i32* %123)
  store i32 %124, i32* %21, align 4
  %125 = call i32 @context_destroy(%struct.context* %20)
  br label %126

126:                                              ; preds = %121, %119
  %127 = load %struct.selinux_state*, %struct.selinux_state** %9, align 8
  %128 = getelementptr inbounds %struct.selinux_state, %struct.selinux_state* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = call i32 @read_unlock(i32* %130)
  br label %132

132:                                              ; preds = %126, %80, %64, %57
  %133 = load i8*, i8** %18, align 8
  %134 = call i32 @kfree(i8* %133)
  %135 = load i8*, i8** %19, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = load i32, i32* %21, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %132, %35, %25
  %139 = load i32, i32* %8, align 4
  ret i32 %139
}

declare dso_local i8* @kmemdup_nul(i8*, i32, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @string_to_context_struct(%struct.policydb*, %struct.sidtab*, i8*, %struct.context*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sidtab_context_to_sid(%struct.sidtab*, %struct.context*, i32*) #1

declare dso_local i32 @context_destroy(%struct.context*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
