; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_exception.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_write_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.tomoyo_acl_param = type { i32, i32, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [12 x i8] c"aggregator \00", align 1
@TOMOYO_MAX_TRANSITION_TYPE = common dso_local global i64 0, align 8
@tomoyo_transition_type = common dso_local global i8** null, align 8
@TOMOYO_MAX_GROUP = common dso_local global i64 0, align 8
@tomoyo_group_name = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"acl_group \00", align 1
@TOMOYO_MAX_ACL_GROUPS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*)* @tomoyo_write_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_exception(%struct.tomoyo_io_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tomoyo_acl_param, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  %9 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %13, align 8
  %15 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %16 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 2
  %20 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %19, align 8
  %24 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %25 = call i64 @tomoyo_str_starts(i32* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 @tomoyo_write_aggregator(%struct.tomoyo_acl_param* %5)
  store i32 %28, i32* %2, align 4
  br label %107

29:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %30

30:                                               ; preds = %46, %29
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @TOMOYO_MAX_TRANSITION_TYPE, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %36 = load i8**, i8*** @tomoyo_transition_type, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i8*, i8** %36, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @tomoyo_str_starts(i32* %35, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @tomoyo_write_transition_control(%struct.tomoyo_acl_param* %5, i64 %43)
  store i32 %44, i32* %2, align 4
  br label %107

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %6, align 8
  br label %30

49:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %50

50:                                               ; preds = %66, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @TOMOYO_MAX_GROUP, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %56 = load i8**, i8*** @tomoyo_group_name, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds i8*, i8** %56, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @tomoyo_str_starts(i32* %55, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @tomoyo_write_group(%struct.tomoyo_acl_param* %5, i64 %63)
  store i32 %64, i32* %2, align 4
  br label %107

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %6, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %6, align 8
  br label %50

69:                                               ; preds = %50
  %70 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %71 = call i64 @tomoyo_str_starts(i32* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %5, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @simple_strtoul(i32 %75, i8** %8, i32 10)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @TOMOYO_MAX_ACL_GROUPS, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %73
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %8, align 8
  %83 = load i8, i8* %81, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %86, label %103

86:                                               ; preds = %80
  %87 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %88 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %92 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i32 @tomoyo_write_domain2(%struct.TYPE_4__* %90, i32* %99, i8* %100, i32 %101)
  store i32 %102, i32* %2, align 4
  br label %107

103:                                              ; preds = %80, %73
  br label %104

104:                                              ; preds = %103, %69
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %86, %62, %42, %27
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i64 @tomoyo_str_starts(i32*, i8*) #1

declare dso_local i32 @tomoyo_write_aggregator(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_write_transition_control(%struct.tomoyo_acl_param*, i64) #1

declare dso_local i32 @tomoyo_write_group(%struct.tomoyo_acl_param*, i64) #1

declare dso_local i32 @simple_strtoul(i32, i8**, i32) #1

declare dso_local i32 @tomoyo_write_domain2(%struct.TYPE_4__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
