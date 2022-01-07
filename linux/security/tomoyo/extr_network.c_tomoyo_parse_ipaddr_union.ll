; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_parse_ipaddr_union.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_network.c_tomoyo_parse_ipaddr_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_ipaddr_union = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_parse_ipaddr_union(%struct.tomoyo_acl_param* %0, %struct.tomoyo_ipaddr_union* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_acl_param*, align 8
  %5 = alloca %struct.tomoyo_ipaddr_union*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %4, align 8
  store %struct.tomoyo_ipaddr_union* %1, %struct.tomoyo_ipaddr_union** %5, align 8
  %10 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %11 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %18 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %4, align 8
  %25 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strchr(i8* %26, i8 signext 58)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %75, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @in4_pton(i8* %30, i32 -1, i32* %31, i8 signext 45, i8** %9)
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %36 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %42 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %50 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %48, i32* %55, align 4
  br label %74

56:                                               ; preds = %34
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  %59 = load i8, i8* %57, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 45
  br i1 %61, label %72, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @in4_pton(i8* %63, i32 -1, i32* %64, i8 signext 0, i8** %9)
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %9, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %62, %56
  store i32 0, i32* %3, align 4
  br label %110

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %40
  store i32 1, i32* %3, align 4
  br label %110

75:                                               ; preds = %29, %2
  %76 = load i8*, i8** %8, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i64 @in6_pton(i8* %76, i32 -1, i32* %77, i8 signext 45, i8** %9)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %75
  %81 = load %struct.tomoyo_ipaddr_union*, %struct.tomoyo_ipaddr_union** %5, align 8
  %82 = getelementptr inbounds %struct.tomoyo_ipaddr_union, %struct.tomoyo_ipaddr_union* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %83, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load i32*, i32** %7, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @memmove(i32* %87, i32* %88, i32 32)
  br label %108

90:                                               ; preds = %80
  %91 = load i8*, i8** %9, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %9, align 8
  %93 = load i8, i8* %91, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 45
  br i1 %95, label %106, label %96

96:                                               ; preds = %90
  %97 = load i8*, i8** %9, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @in6_pton(i8* %97, i32 -1, i32* %98, i8 signext 0, i8** %9)
  %100 = icmp sle i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101, %96, %90
  store i32 0, i32* %3, align 4
  br label %110

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %86
  store i32 1, i32* %3, align 4
  br label %110

109:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %108, %106, %74, %72
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i64 @in4_pton(i8*, i32, i32*, i8 signext, i8**) #1

declare dso_local i64 @in6_pton(i8*, i32, i32*, i8 signext, i8**) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
