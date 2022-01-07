; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_group.c_tomoyo_write_group.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_group.c_tomoyo_write_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8*, i32* }
%struct.tomoyo_group = type { i32 }
%struct.tomoyo_path_group = type { i32, i32 }
%struct.tomoyo_number_group = type { i32, i32 }
%struct.tomoyo_address_group = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TOMOYO_PATH_GROUP = common dso_local global i64 0, align 8
@tomoyo_same_path_group = common dso_local global i32 0, align 4
@TOMOYO_NUMBER_GROUP = common dso_local global i64 0, align 8
@tomoyo_same_number_group = common dso_local global i32 0, align 4
@tomoyo_same_address_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_group(%struct.tomoyo_acl_param* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tomoyo_group*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tomoyo_path_group, align 4
  %9 = alloca %struct.tomoyo_number_group, align 4
  %10 = alloca %struct.tomoyo_address_group, align 4
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call %struct.tomoyo_group* @tomoyo_get_group(%struct.tomoyo_acl_param* %11, i64 %12)
  store %struct.tomoyo_group* %13, %struct.tomoyo_group** %6, align 8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.tomoyo_group*, %struct.tomoyo_group** %6, align 8
  %17 = icmp ne %struct.tomoyo_group* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %99

21:                                               ; preds = %2
  %22 = load %struct.tomoyo_group*, %struct.tomoyo_group** %6, align 8
  %23 = getelementptr inbounds %struct.tomoyo_group, %struct.tomoyo_group* %22, i32 0, i32 0
  %24 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %25 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @TOMOYO_PATH_GROUP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %21
  %30 = bitcast %struct.tomoyo_path_group* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 8, i1 false)
  %31 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %32 = call i32 @tomoyo_read_token(%struct.tomoyo_acl_param* %31)
  %33 = call i32 @tomoyo_get_name(i32 %32)
  %34 = getelementptr inbounds %struct.tomoyo_path_group, %struct.tomoyo_path_group* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.tomoyo_path_group, %struct.tomoyo_path_group* %8, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %95

41:                                               ; preds = %29
  %42 = getelementptr inbounds %struct.tomoyo_path_group, %struct.tomoyo_path_group* %8, i32 0, i32 1
  %43 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %44 = load i32, i32* @tomoyo_same_path_group, align 4
  %45 = call i32 @tomoyo_update_policy(i32* %42, i32 8, %struct.tomoyo_acl_param* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = getelementptr inbounds %struct.tomoyo_path_group, %struct.tomoyo_path_group* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tomoyo_put_name(i32 %47)
  br label %94

49:                                               ; preds = %21
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @TOMOYO_NUMBER_GROUP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %49
  %54 = bitcast %struct.tomoyo_number_group* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 8, i1 false)
  %55 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %56 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 64
  br i1 %61, label %67, label %62

62:                                               ; preds = %53
  %63 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %64 = getelementptr inbounds %struct.tomoyo_number_group, %struct.tomoyo_number_group* %9, i32 0, i32 1
  %65 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %63, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %53
  br label %95

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tomoyo_number_group, %struct.tomoyo_number_group* %9, i32 0, i32 0
  %70 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %71 = load i32, i32* @tomoyo_same_number_group, align 4
  %72 = call i32 @tomoyo_update_policy(i32* %69, i32 8, %struct.tomoyo_acl_param* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %93

73:                                               ; preds = %49
  %74 = bitcast %struct.tomoyo_address_group* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %74, i8 0, i64 8, i1 false)
  %75 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %76 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 64
  br i1 %81, label %87, label %82

82:                                               ; preds = %73
  %83 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %84 = getelementptr inbounds %struct.tomoyo_address_group, %struct.tomoyo_address_group* %10, i32 0, i32 1
  %85 = call i32 @tomoyo_parse_ipaddr_union(%struct.tomoyo_acl_param* %83, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %73
  br label %95

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.tomoyo_address_group, %struct.tomoyo_address_group* %10, i32 0, i32 0
  %90 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %91 = load i32, i32* @tomoyo_same_address_group, align 4
  %92 = call i32 @tomoyo_update_policy(i32* %89, i32 8, %struct.tomoyo_acl_param* %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %88, %68
  br label %94

94:                                               ; preds = %93, %41
  br label %95

95:                                               ; preds = %94, %87, %67, %38
  %96 = load %struct.tomoyo_group*, %struct.tomoyo_group** %6, align 8
  %97 = call i32 @tomoyo_put_group(%struct.tomoyo_group* %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %18
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local %struct.tomoyo_group* @tomoyo_get_group(%struct.tomoyo_acl_param*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @tomoyo_get_name(i32) #1

declare dso_local i32 @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_update_policy(i32*, i32, %struct.tomoyo_acl_param*, i32) #1

declare dso_local i32 @tomoyo_put_name(i32) #1

declare dso_local i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param*, i32*) #1

declare dso_local i32 @tomoyo_parse_ipaddr_union(%struct.tomoyo_acl_param*, i32*) #1

declare dso_local i32 @tomoyo_put_group(%struct.tomoyo_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
