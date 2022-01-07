; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_hoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_hoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_hobject_id = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"hobject_t\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"got struct_v %d < 4 of hobject_t\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@e_inval = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.ceph_hobject_id*)* @decode_hoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_hoid(i8** %0, i8* %1, %struct.ceph_hobject_id* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_hobject_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ceph_hobject_id* %2, %struct.ceph_hobject_id** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @ceph_start_decoding(i8** %11, i8* %12, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %4, align 4
  br label %127

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %124

24:                                               ; preds = %18
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %28 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %27, i32 0, i32 9
  %29 = load i32, i32* @GFP_NOIO, align 4
  %30 = call i8* @ceph_extract_encoded_string(i8** %25, i8* %26, i32* %28, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %33 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %32, i32 0, i32 8
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %35 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %34, i32 0, i32 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @IS_ERR(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %24
  %40 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %41 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @PTR_ERR(i32* %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %45 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %44, i32 0, i32 8
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %127

47:                                               ; preds = %24
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %51 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %50, i32 0, i32 7
  %52 = load i32, i32* @GFP_NOIO, align 4
  %53 = call i8* @ceph_extract_encoded_string(i8** %48, i8* %49, i32* %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %56 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %55, i32 0, i32 6
  store i32* %54, i32** %56, align 8
  %57 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %58 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = call i64 @IS_ERR(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %47
  %63 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %64 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @PTR_ERR(i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %68 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %67, i32 0, i32 6
  store i32* null, i32** %68, align 8
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %127

70:                                               ; preds = %47
  %71 = load i8**, i8*** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %74 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @e_inval, align 4
  %77 = call i32 @ceph_decode_64_safe(i8** %71, i8* %72, i32 %75, i32 %76)
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %81 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @e_inval, align 4
  %84 = call i32 @ceph_decode_32_safe(i8** %78, i8* %79, i32 %82, i32 %83)
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %88 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @e_inval, align 4
  %91 = call i32 @ceph_decode_8_safe(i8** %85, i8* %86, i32 %89, i32 %90)
  %92 = load i8**, i8*** %5, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %95 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %94, i32 0, i32 2
  %96 = load i32, i32* @GFP_NOIO, align 4
  %97 = call i8* @ceph_extract_encoded_string(i8** %92, i8* %93, i32* %95, i32 %96)
  %98 = bitcast i8* %97 to i32*
  %99 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %100 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %99, i32 0, i32 1
  store i32* %98, i32** %100, align 8
  %101 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %102 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i64 @IS_ERR(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %70
  %107 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %108 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @PTR_ERR(i32* %109)
  store i32 %110, i32* %10, align 4
  %111 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %112 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %127

114:                                              ; preds = %70
  %115 = load i8**, i8*** %5, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %118 = getelementptr inbounds %struct.ceph_hobject_id, %struct.ceph_hobject_id* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @e_inval, align 4
  %121 = call i32 @ceph_decode_64_safe(i8** %115, i8* %116, i32 %119, i32 %120)
  %122 = load %struct.ceph_hobject_id*, %struct.ceph_hobject_id** %7, align 8
  %123 = call i32 @ceph_hoid_build_hash_cache(%struct.ceph_hobject_id* %122)
  store i32 0, i32* %4, align 4
  br label %127

124:                                              ; preds = %21
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %114, %106, %62, %39, %16
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ceph_start_decoding(i8**, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i8* @ceph_extract_encoded_string(i8**, i8*, i32*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_hoid_build_hash_cache(%struct.ceph_hobject_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
