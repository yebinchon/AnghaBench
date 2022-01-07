; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_MOSDBackoff.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osd_client.c_decode_MOSDBackoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }
%struct.MOSDBackoff = type { i8*, i8*, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"spg_t\00", align 1
@e_inval = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_msg*, %struct.MOSDBackoff*)* @decode_MOSDBackoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_MOSDBackoff(%struct.ceph_msg* %0, %struct.MOSDBackoff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.MOSDBackoff*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ceph_msg* %0, %struct.ceph_msg** %4, align 8
  store %struct.MOSDBackoff* %1, %struct.MOSDBackoff** %5, align 8
  %11 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %12 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %15, i64 %20
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @ceph_start_decoding(i8** %6, i8* %22, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %3, align 4
  br label %127

28:                                               ; preds = %2
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %31 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @ceph_decode_pgid(i8** %6, i8* %29, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %3, align 4
  br label %127

38:                                               ; preds = %28
  %39 = load i8*, i8** %7, align 8
  %40 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %41 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @e_inval, align 4
  %45 = call i32 @ceph_decode_8_safe(i8** %6, i8* %39, i32 %43, i32 %44)
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %48 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @e_inval, align 4
  %51 = call i32 @ceph_decode_32_safe(i8** %6, i8* %46, i32 %49, i32 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %54 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @e_inval, align 4
  %57 = call i32 @ceph_decode_8_safe(i8** %6, i8* %52, i32 %55, i32 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %60 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @e_inval, align 4
  %63 = call i32 @ceph_decode_64_safe(i8** %6, i8* %58, i32 %61, i32 %62)
  %64 = load i32, i32* @GFP_NOIO, align 4
  %65 = call i8* @kzalloc(i32 1, i32 %64)
  %66 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %67 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %69 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %38
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %127

75:                                               ; preds = %38
  %76 = load i8*, i8** %7, align 8
  %77 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %78 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @decode_hoid(i8** %6, i8* %76, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %85 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @free_hoid(i8* %86)
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %3, align 4
  br label %127

89:                                               ; preds = %75
  %90 = load i32, i32* @GFP_NOIO, align 4
  %91 = call i8* @kzalloc(i32 1, i32 %90)
  %92 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %93 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %95 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %105, label %98

98:                                               ; preds = %89
  %99 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %100 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @free_hoid(i8* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %127

105:                                              ; preds = %89
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %108 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @decode_hoid(i8** %6, i8* %106, i8* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %115 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @free_hoid(i8* %116)
  %118 = load %struct.MOSDBackoff*, %struct.MOSDBackoff** %5, align 8
  %119 = getelementptr inbounds %struct.MOSDBackoff, %struct.MOSDBackoff* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @free_hoid(i8* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %3, align 4
  br label %127

123:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %127

124:                                              ; No predecessors!
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %124, %123, %113, %98, %83, %72, %36, %26
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @ceph_start_decoding(i8**, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @ceph_decode_pgid(i8**, i8*, i32*) #1

declare dso_local i32 @ceph_decode_8_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i32, i32) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @decode_hoid(i8**, i8*, i8*) #1

declare dso_local i32 @free_hoid(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
