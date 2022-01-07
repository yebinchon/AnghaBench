; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_unix_gid_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svcauth_unix.c_unix_gid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.unix_gid = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.cache_head = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @unix_gid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unix_gid_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cache_detail*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.unix_gid, align 8
  %16 = alloca %struct.unix_gid*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.cache_head*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %156

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8 0, i8* %36, align 1
  %37 = call i32 @get_int(i8** %6, i32* %8)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %156

43:                                               ; preds = %31
  %44 = call i32 (...) @current_user_ns()
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @make_kuid(i32 %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = call i64 @get_expiry(i8** %6)
  store i64 %49, i64* %14, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %156

55:                                               ; preds = %43
  %56 = call i32 @get_int(i8** %6, i32* %10)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 8192
  br i1 %64, label %65, label %68

65:                                               ; preds = %62, %59, %55
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %156

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.TYPE_7__* @groups_alloc(i32 %69)
  %71 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  store %struct.TYPE_7__* %70, %struct.TYPE_7__** %71, align 8
  %72 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = icmp ne %struct.TYPE_7__* %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %156

78:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %107, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = call i32 @get_int(i8** %6, i32* %17)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %146

90:                                               ; preds = %83
  %91 = call i32 (...) @current_user_ns()
  %92 = load i32, i32* %17, align 4
  %93 = call i32 @make_kgid(i32 %91, i32 %92)
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @gid_valid(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  br label %146

98:                                               ; preds = %90
  %99 = load i32, i32* %18, align 4
  %100 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 %99, i32* %106, align 4
  br label %107

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %79

110:                                              ; preds = %79
  %111 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = call i32 @groups_sort(%struct.TYPE_7__* %112)
  %114 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call %struct.unix_gid* @unix_gid_lookup(%struct.cache_detail* %114, i32 %115)
  store %struct.unix_gid* %116, %struct.unix_gid** %16, align 8
  %117 = load %struct.unix_gid*, %struct.unix_gid** %16, align 8
  %118 = icmp ne %struct.unix_gid* %117, null
  br i1 %118, label %119, label %142

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load i64, i64* %14, align 8
  %123 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %126 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 1
  %127 = load %struct.unix_gid*, %struct.unix_gid** %16, align 8
  %128 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %127, i32 0, i32 1
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @unix_gid_hash(i32 %129)
  %131 = call %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail* %125, %struct.TYPE_6__* %126, %struct.TYPE_6__* %128, i32 %130)
  store %struct.cache_head* %131, %struct.cache_head** %19, align 8
  %132 = load %struct.cache_head*, %struct.cache_head** %19, align 8
  %133 = icmp ne %struct.cache_head* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %119
  %135 = load i32, i32* @ENOMEM, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %13, align 4
  br label %141

137:                                              ; preds = %119
  store i32 0, i32* %13, align 4
  %138 = load %struct.cache_head*, %struct.cache_head** %19, align 8
  %139 = load %struct.cache_detail*, %struct.cache_detail** %5, align 8
  %140 = call i32 @cache_put(%struct.cache_head* %138, %struct.cache_detail* %139)
  br label %141

141:                                              ; preds = %137, %134
  br label %145

142:                                              ; preds = %110
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %13, align 4
  br label %145

145:                                              ; preds = %142, %141
  br label %146

146:                                              ; preds = %145, %97, %89
  %147 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %147, align 8
  %149 = icmp ne %struct.TYPE_7__* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.unix_gid, %struct.unix_gid* %15, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = call i32 @put_group_info(%struct.TYPE_7__* %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %75, %65, %52, %40, %28
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @get_int(i8**, i32*) #1

declare dso_local i32 @make_kuid(i32, i32) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local %struct.TYPE_7__* @groups_alloc(i32) #1

declare dso_local i32 @make_kgid(i32, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @groups_sort(%struct.TYPE_7__*) #1

declare dso_local %struct.unix_gid* @unix_gid_lookup(%struct.cache_detail*, i32) #1

declare dso_local %struct.cache_head* @sunrpc_cache_update(%struct.cache_detail*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @unix_gid_hash(i32) #1

declare dso_local i32 @cache_put(%struct.cache_head*, %struct.cache_detail*) #1

declare dso_local i32 @put_group_info(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
