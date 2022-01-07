; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_setup_one_bio.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_setup_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.o2hb_bio_wait_ctxt*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.o2hb_region = type { i32, i32, i32, %struct.page**, i32 }
%struct.page = type { i32 }
%struct.o2hb_bio_wait_ctxt = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not alloc slots BIO!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@o2hb_bio_end_io = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ML_HB_BIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"page %d, vec_len = %u, vec_start = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.o2hb_region*, %struct.o2hb_bio_wait_ctxt*, i32*, i32, i32, i32)* @o2hb_setup_one_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @o2hb_setup_one_bio(%struct.o2hb_region* %0, %struct.o2hb_bio_wait_ctxt* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.o2hb_region*, align 8
  %8 = alloca %struct.o2hb_bio_wait_ctxt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.bio*, align 8
  %21 = alloca %struct.page*, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %7, align 8
  store %struct.o2hb_bio_wait_ctxt* %1, %struct.o2hb_bio_wait_ctxt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %22 = load %struct.o2hb_region*, %struct.o2hb_region** %7, align 8
  %23 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  %25 = load %struct.o2hb_region*, %struct.o2hb_region** %7, align 8
  %26 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %18, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.bio* @bio_alloc(i32 %30, i32 16)
  store %struct.bio* %31, %struct.bio** %20, align 8
  %32 = load %struct.bio*, %struct.bio** %20, align 8
  %33 = icmp ne %struct.bio* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ML_ERROR, align 4
  %36 = call i32 (i32, i8*, ...) @mlog(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.bio* @ERR_PTR(i32 %38)
  store %struct.bio* %39, %struct.bio** %20, align 8
  br label %121

40:                                               ; preds = %6
  %41 = load %struct.o2hb_region*, %struct.o2hb_region** %7, align 8
  %42 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %19, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %17, align 4
  %47 = sub i32 %46, 9
  %48 = shl i32 %45, %47
  %49 = load %struct.bio*, %struct.bio** %20, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.bio*, %struct.bio** %20, align 8
  %53 = load %struct.o2hb_region*, %struct.o2hb_region** %7, align 8
  %54 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bio_set_dev(%struct.bio* %52, i32 %55)
  %57 = load %struct.o2hb_bio_wait_ctxt*, %struct.o2hb_bio_wait_ctxt** %8, align 8
  %58 = load %struct.bio*, %struct.bio** %20, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 1
  store %struct.o2hb_bio_wait_ctxt* %57, %struct.o2hb_bio_wait_ctxt** %59, align 8
  %60 = load i32, i32* @o2hb_bio_end_io, align 4
  %61 = load %struct.bio*, %struct.bio** %20, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.bio*, %struct.bio** %20, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @bio_set_op_attrs(%struct.bio* %63, i32 %64, i32 %65)
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %17, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = urem i32 %69, %70
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %112, %40
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %120

76:                                               ; preds = %72
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %18, align 4
  %79 = udiv i32 %77, %78
  store i32 %79, i32* %14, align 4
  %80 = load %struct.o2hb_region*, %struct.o2hb_region** %7, align 8
  %81 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %80, i32 0, i32 3
  %82 = load %struct.page**, %struct.page*** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.page*, %struct.page** %82, i64 %84
  %86 = load %struct.page*, %struct.page** %85, align 8
  store %struct.page* %86, %struct.page** %21, align 8
  %87 = load i32, i32* @PAGE_SIZE, align 4
  %88 = load i32, i32* %16, align 4
  %89 = sub i32 %87, %88
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %19, align 4
  %92 = sub i32 %90, %91
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = load i32, i32* %18, align 4
  %95 = udiv i32 %93, %94
  %96 = mul i32 %92, %95
  %97 = call i32 @min(i32 %89, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @ML_HB_BIO, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = call i32 (i32, i8*, ...) @mlog(i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load %struct.bio*, %struct.bio** %20, align 8
  %104 = load %struct.page*, %struct.page** %21, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @bio_add_page(%struct.bio* %103, %struct.page* %104, i32 %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %76
  br label %120

112:                                              ; preds = %76
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = load i32, i32* %18, align 4
  %116 = udiv i32 %114, %115
  %117 = udiv i32 %113, %116
  %118 = load i32, i32* %19, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %72

120:                                              ; preds = %111, %72
  br label %121

121:                                              ; preds = %120, %34
  %122 = load i32, i32* %19, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %124 = load %struct.bio*, %struct.bio** %20, align 8
  ret %struct.bio* %124
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local %struct.bio* @ERR_PTR(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
