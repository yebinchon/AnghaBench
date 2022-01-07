; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_oloc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_ceph_oloc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_object_locator = type { i64, i8* }

@e_inval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"got v %d < 3 cv %d of ceph_object_locator\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"got v %d cv %d > 6 of ceph_object_locator\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ceph_object_locator::key is set\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ceph_object_locator::nspace is changed\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"ceph_object_locator::hash is set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_object_locator*)* @ceph_oloc_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_oloc_decode(i8** %0, i8* %1, %struct.ceph_object_locator* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_object_locator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ceph_object_locator* %2, %struct.ceph_object_locator** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @e_inval, align 4
  %17 = call i32 @ceph_decode_need(i8** %14, i8* %15, i32 6, i32 %16)
  %18 = load i8**, i8*** %4, align 8
  %19 = call i32 @ceph_decode_8(i8** %18)
  store i32 %19, i32* %7, align 4
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @ceph_decode_8(i8** %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %125

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 6
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %33)
  br label %125

35:                                               ; preds = %28
  %36 = load i8**, i8*** %4, align 8
  %37 = call i32 @ceph_decode_32(i8** %36)
  store i32 %37, i32* %9, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @e_inval, align 4
  %42 = call i32 @ceph_decode_need(i8** %38, i8* %39, i32 %40, i32 %41)
  %43 = load i8**, i8*** %4, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %44, i64 %46
  store i8* %47, i8** %10, align 8
  %48 = load i8**, i8*** %4, align 8
  %49 = call i8* @ceph_decode_64(i8** %48)
  %50 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %51 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load i8**, i8*** %4, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr i8, i8* %53, i64 4
  store i8* %54, i8** %52, align 8
  %55 = load i8**, i8*** %4, align 8
  %56 = call i32 @ceph_decode_32(i8** %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %35
  %60 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %125

61:                                               ; preds = %35
  %62 = load i32, i32* %7, align 4
  %63 = icmp sge i32 %62, 5
  br i1 %63, label %64, label %108

64:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  %65 = load i8**, i8*** %4, align 8
  %66 = call i32 @ceph_decode_32(i8** %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %95

69:                                               ; preds = %64
  %70 = load i8**, i8*** %4, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @e_inval, align 4
  %74 = call i32 @ceph_decode_need(i8** %70, i8* %71, i32 %72, i32 %73)
  %75 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %76 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %81 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i8**, i8*** %4, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @ceph_compare_string(i64 %82, i8* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79, %69
  store i32 1, i32* %12, align 4
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %9, align 4
  %91 = load i8**, i8*** %4, align 8
  %92 = load i8*, i8** %91, align 8
  %93 = sext i32 %90 to i64
  %94 = getelementptr i8, i8* %92, i64 %93
  store i8* %94, i8** %91, align 8
  br label %102

95:                                               ; preds = %64
  %96 = load %struct.ceph_object_locator*, %struct.ceph_object_locator** %6, align 8
  %97 = getelementptr inbounds %struct.ceph_object_locator, %struct.ceph_object_locator* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %12, align 4
  br label %101

101:                                              ; preds = %100, %95
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %125

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %61
  %109 = load i32, i32* %7, align 4
  %110 = icmp sge i32 %109, 6
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i8**, i8*** %4, align 8
  %113 = call i8* @ceph_decode_64(i8** %112)
  %114 = ptrtoint i8* %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, -1
  br i1 %116, label %117, label %119

117:                                              ; preds = %111
  %118 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %125

119:                                              ; preds = %111
  br label %120

120:                                              ; preds = %119, %108
  %121 = load i8*, i8** %10, align 8
  %122 = load i8**, i8*** %4, align 8
  store i8* %121, i8** %122, align 8
  br label %123

123:                                              ; preds = %125, %120
  %124 = load i32, i32* %11, align 4
  ret i32 %124

125:                                              ; preds = %117, %105, %59, %31, %24
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %11, align 4
  br label %123
}

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_8(i8**) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @ceph_decode_32(i8**) #1

declare dso_local i8* @ceph_decode_64(i8**) #1

declare dso_local i64 @ceph_compare_string(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
