; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_write_transition_control.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_write_transition_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8*, %struct.TYPE_2__*, i32*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.tomoyo_transition_control = type { i64, i32, i8*, i8*, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" from \00", align 1
@TOMOYO_TRANSITION_CONTROL_NO_KEEP = common dso_local global i64 0, align 8
@TOMOYO_TRANSITION_CONTROL_KEEP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TOMOYO_ID_TRANSITION_CONTROL = common dso_local global i64 0, align 8
@tomoyo_same_transition_control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_transition_control(%struct.tomoyo_acl_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tomoyo_transition_control, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = bitcast %struct.tomoyo_transition_control* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  store i64 %12, i64* %11, align 8
  %13 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %14 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ %19, %17 ], [ %22, %20 ]
  store i32 %24, i32* %7, align 4
  %25 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %26 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strstr(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 6
  store i8* %35, i8** %9, align 8
  br label %47

36:                                               ; preds = %23
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @TOMOYO_TRANSITION_CONTROL_NO_KEEP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @TOMOYO_TRANSITION_CONTROL_KEEP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %36
  %45 = load i8*, i8** %8, align 8
  store i8* %45, i8** %9, align 8
  store i8* null, i8** %8, align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %32
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load i8*, i8** %8, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @tomoyo_correct_path(i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %119

61:                                               ; preds = %54
  %62 = load i8*, i8** %8, align 8
  %63 = call i8* @tomoyo_get_name(i8* %62)
  %64 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 2
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %111

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %50, %47
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @tomoyo_correct_domain(i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %9, align 8
  %83 = call i32 @tomoyo_correct_path(i8* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %111

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %86, %77
  %89 = load i8*, i8** %9, align 8
  %90 = call i8* @tomoyo_get_name(i8* %89)
  %91 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  br label %111

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %73, %70
  %98 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %99 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @TOMOYO_ID_TRANSITION_CONTROL, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %106 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %105, i32 0, i32 2
  store i32* %104, i32** %106, align 8
  %107 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 4
  %108 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %109 = load i32, i32* @tomoyo_same_transition_control, align 4
  %110 = call i32 @tomoyo_update_policy(i32* %107, i32 40, %struct.tomoyo_acl_param* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %97, %95, %85, %68
  %112 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @tomoyo_put_name(i8* %113)
  %115 = getelementptr inbounds %struct.tomoyo_transition_control, %struct.tomoyo_transition_control* %6, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @tomoyo_put_name(i8* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %111, %58
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @tomoyo_correct_path(i8*) #2

declare dso_local i8* @tomoyo_get_name(i8*) #2

declare dso_local i32 @tomoyo_correct_domain(i8*) #2

declare dso_local i32 @tomoyo_update_policy(i32*, i32, %struct.tomoyo_acl_param*, i32) #2

declare dso_local i32 @tomoyo_put_name(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
