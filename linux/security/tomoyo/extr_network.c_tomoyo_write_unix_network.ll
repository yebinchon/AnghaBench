; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_write_unix_network.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_write_unix_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_unix_acl = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TOMOYO_TYPE_UNIX_ACL = common dso_local global i32 0, align 4
@TOMOYO_SOCK_MAX = common dso_local global i64 0, align 8
@tomoyo_proto_keyword = common dso_local global i32* null, align 8
@TOMOYO_MAX_NETWORK_OPERATION = common dso_local global i64 0, align 8
@tomoyo_socket_keyword = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_unix_acl = common dso_local global i32 0, align 4
@tomoyo_merge_unix_acl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_unix_network(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca %struct.tomoyo_unix_acl, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  %9 = bitcast %struct.tomoyo_unix_acl* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* @TOMOYO_TYPE_UNIX_ACL, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %14 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %13)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %16 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %15)
  store i8* %16, i8** %8, align 8
  %17 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %34, %1
  %19 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TOMOYO_SOCK_MAX, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** @tomoyo_proto_keyword, align 8
  %26 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcmp(i8* %24, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %38

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %18

38:                                               ; preds = %32, %18
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %59, %38
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @TOMOYO_MAX_NETWORK_OPERATION, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = load i32*, i32** @tomoyo_socket_keyword, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @tomoyo_permstr(i8* %44, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = shl i32 1, %53
  %55 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %51, %43
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %39

62:                                               ; preds = %39
  %63 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @TOMOYO_SOCK_MAX, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67, %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %91

74:                                               ; preds = %67
  %75 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %76 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 2
  %77 = call i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %91

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 3
  %84 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %85 = load i32, i32* @tomoyo_same_unix_acl, align 4
  %86 = load i32, i32* @tomoyo_merge_unix_acl, align 4
  %87 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %83, i32 24, %struct.tomoyo_acl_param* %84, i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = getelementptr inbounds %struct.tomoyo_unix_acl, %struct.tomoyo_unix_acl* %4, i32 0, i32 2
  %89 = call i32 @tomoyo_put_name_union(i32* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %82, %79, %71
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i64 @tomoyo_permstr(i8*, i32) #2

declare dso_local i32 @tomoyo_parse_name_union(%struct.tomoyo_acl_param*, i32*) #2

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32) #2

declare dso_local i32 @tomoyo_put_name_union(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
