; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsi_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/auth_gss/extr_svcauth_gss.c_rsi_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.rsi = type { %struct.TYPE_2__, i32, i32, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, i8*, i32)* @rsi_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_parse(%struct.cache_detail* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rsi, align 8
  %11 = alloca %struct.rsi*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %7, align 8
  store %struct.rsi* null, %struct.rsi** %11, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %13, align 4
  %17 = call i32 @memset(%struct.rsi* %10, i32 0, i32 48)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @qword_get(i8** %5, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %137

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %13, align 4
  %27 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 6
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @dup_to_netobj(i32* %27, i8* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %137

33:                                               ; preds = %24
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @qword_get(i8** %5, i8* %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %137

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %13, align 4
  %45 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 5
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i64 @dup_to_netobj(i32* %45, i8* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %137

51:                                               ; preds = %42
  %52 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %53 = call %struct.rsi* @rsi_lookup(%struct.cache_detail* %52, %struct.rsi* %10)
  store %struct.rsi* %53, %struct.rsi** %11, align 8
  %54 = load %struct.rsi*, %struct.rsi** %11, align 8
  %55 = icmp ne %struct.rsi* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %137

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = call i64 @get_expiry(i8** %5)
  store i64 %60, i64* %12, align 8
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %137

66:                                               ; preds = %57
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @qword_get(i8** %5, i8* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %137

73:                                               ; preds = %66
  %74 = load i8*, i8** %7, align 8
  %75 = call i8* @simple_strtoul(i8* %74, i8** %8, i32 10)
  %76 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 4
  store i8* %75, i8** %76, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %137

81:                                               ; preds = %73
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @qword_get(i8** %5, i8* %82, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %137

88:                                               ; preds = %81
  %89 = load i8*, i8** %7, align 8
  %90 = call i8* @simple_strtoul(i8* %89, i8** %8, i32 10)
  %91 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 3
  store i8* %90, i8** %91, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = icmp ne i8 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %137

96:                                               ; preds = %88
  %97 = load i8*, i8** %7, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @qword_get(i8** %5, i8* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %137

103:                                              ; preds = %96
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %13, align 4
  %106 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 2
  %107 = load i8*, i8** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i64 @dup_to_netobj(i32* %106, i8* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %137

112:                                              ; preds = %103
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = call i32 @qword_get(i8** %5, i8* %113, i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  br label %137

121:                                              ; preds = %112
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %13, align 4
  %124 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 1
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i64 @dup_to_netobj(i32* %124, i8* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %137

130:                                              ; preds = %121
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds %struct.rsi, %struct.rsi* %10, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %135 = load %struct.rsi*, %struct.rsi** %11, align 8
  %136 = call %struct.rsi* @rsi_update(%struct.cache_detail* %134, %struct.rsi* %10, %struct.rsi* %135)
  store %struct.rsi* %136, %struct.rsi** %11, align 8
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %130, %129, %120, %111, %102, %95, %87, %80, %72, %65, %56, %50, %41, %32, %23
  %138 = call i32 @rsi_free(%struct.rsi* %10)
  %139 = load %struct.rsi*, %struct.rsi** %11, align 8
  %140 = icmp ne %struct.rsi* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %137
  %142 = load %struct.rsi*, %struct.rsi** %11, align 8
  %143 = getelementptr inbounds %struct.rsi, %struct.rsi* %142, i32 0, i32 0
  %144 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %145 = call i32 @cache_put(%struct.TYPE_2__* %143, %struct.cache_detail* %144)
  br label %149

146:                                              ; preds = %137
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %146, %141
  %150 = load i32, i32* %13, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.rsi*, i32, i32) #1

declare dso_local i32 @qword_get(i8**, i8*, i32) #1

declare dso_local i64 @dup_to_netobj(i32*, i8*, i32) #1

declare dso_local %struct.rsi* @rsi_lookup(%struct.cache_detail*, %struct.rsi*) #1

declare dso_local i64 @get_expiry(i8**) #1

declare dso_local i8* @simple_strtoul(i8*, i8**, i32) #1

declare dso_local %struct.rsi* @rsi_update(%struct.cache_detail*, %struct.rsi*, %struct.rsi*) #1

declare dso_local i32 @rsi_free(%struct.rsi*) #1

declare dso_local i32 @cache_put(%struct.TYPE_2__*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
