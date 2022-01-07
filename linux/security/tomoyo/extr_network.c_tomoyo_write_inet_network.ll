; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_write_inet_network.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_write_inet_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i8* }
%struct.tomoyo_inet_acl = type { i64, i32, %struct.TYPE_6__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@TOMOYO_TYPE_INET_ACL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TOMOYO_SOCK_MAX = common dso_local global i64 0, align 8
@tomoyo_proto_keyword = common dso_local global i32* null, align 8
@TOMOYO_MAX_NETWORK_OPERATION = common dso_local global i64 0, align 8
@tomoyo_socket_keyword = common dso_local global i32* null, align 8
@TOMOYO_ADDRESS_GROUP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tomoyo_same_inet_acl = common dso_local global i32 0, align 4
@tomoyo_merge_inet_acl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_write_inet_network(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca %struct.tomoyo_inet_acl, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  %9 = bitcast %struct.tomoyo_inet_acl* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* @TOMOYO_TYPE_INET_ACL, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %16 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %15)
  store i8* %16, i8** %7, align 8
  %17 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %18 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %17)
  store i8* %18, i8** %8, align 8
  %19 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %36, %1
  %21 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TOMOYO_SOCK_MAX, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = load i32*, i32** @tomoyo_proto_keyword, align 8
  %28 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strcmp(i8* %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  br label %40

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %20

40:                                               ; preds = %34, %20
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %61, %40
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @TOMOYO_MAX_NETWORK_OPERATION, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = load i32*, i32** @tomoyo_socket_keyword, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @tomoyo_permstr(i8* %46, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 1, %55
  %57 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %53, %45
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %6, align 8
  br label %41

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @TOMOYO_SOCK_MAX, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %136

76:                                               ; preds = %69
  %77 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %78 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %84, label %102

84:                                               ; preds = %76
  %85 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %86 = getelementptr inbounds %struct.tomoyo_acl_param, %struct.tomoyo_acl_param* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %86, align 8
  %89 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %90 = load i32, i32* @TOMOYO_ADDRESS_GROUP, align 4
  %91 = call i32 @tomoyo_get_group(%struct.tomoyo_acl_param* %89, i32 %90)
  %92 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %136

101:                                              ; preds = %84
  br label %109

102:                                              ; preds = %76
  %103 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %104 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 3
  %105 = call i32 @tomoyo_parse_ipaddr_union(%struct.tomoyo_acl_param* %103, %struct.TYPE_7__* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  br label %128

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %101
  %110 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %111 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 2
  %112 = call i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param* %110, %struct.TYPE_6__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp sgt i32 %119, 65535
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %109
  br label %128

122:                                              ; preds = %114
  %123 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 4
  %124 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %125 = load i32, i32* @tomoyo_same_inet_acl, align 4
  %126 = load i32, i32* @tomoyo_merge_inet_acl, align 4
  %127 = call i32 @tomoyo_update_domain(%struct.TYPE_5__* %123, i32 32, %struct.tomoyo_acl_param* %124, i32 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %122, %121, %107
  %129 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @tomoyo_put_group(i32 %131)
  %133 = getelementptr inbounds %struct.tomoyo_inet_acl, %struct.tomoyo_inet_acl* %4, i32 0, i32 2
  %134 = call i32 @tomoyo_put_number_union(%struct.TYPE_6__* %133)
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %128, %98, %73
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #2

declare dso_local i32 @strcmp(i8*, i32) #2

declare dso_local i64 @tomoyo_permstr(i8*, i32) #2

declare dso_local i32 @tomoyo_get_group(%struct.tomoyo_acl_param*, i32) #2

declare dso_local i32 @tomoyo_parse_ipaddr_union(%struct.tomoyo_acl_param*, %struct.TYPE_7__*) #2

declare dso_local i32 @tomoyo_parse_number_union(%struct.tomoyo_acl_param*, %struct.TYPE_6__*) #2

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_5__*, i32, %struct.tomoyo_acl_param*, i32, i32) #2

declare dso_local i32 @tomoyo_put_group(i32) #2

declare dso_local i32 @tomoyo_put_number_union(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
