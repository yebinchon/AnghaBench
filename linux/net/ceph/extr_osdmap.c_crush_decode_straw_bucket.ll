; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_straw_bucket.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_crush_decode_straw_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw = type { i8**, i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"crush_decode_straw_bucket %p to %p\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.crush_bucket_straw*)* @crush_decode_straw_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crush_decode_straw_bucket(i8** %0, i8* %1, %struct.crush_bucket_straw* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crush_bucket_straw*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crush_bucket_straw* %2, %struct.crush_bucket_straw** %7, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %10, i8* %11)
  %13 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %14 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to i8**
  %20 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %21 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %20, i32 0, i32 1
  store i8** %19, i8*** %21, align 8
  %22 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %23 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %90

29:                                               ; preds = %3
  %30 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %31 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call i8* @kcalloc(i32 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to i8**
  %37 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %38 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %37, i32 0, i32 0
  store i8** %36, i8*** %38, align 8
  %39 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %40 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = icmp eq i8** %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %90

46:                                               ; preds = %29
  %47 = load i8**, i8*** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %50 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 2, %52
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @bad, align 4
  %58 = call i32 @ceph_decode_need(i8** %47, i8* %48, i32 %56, i32 %57)
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %83, %46
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %62 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load i8**, i8*** %5, align 8
  %68 = call i8* @ceph_decode_32(i8** %67)
  %69 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %70 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %69, i32 0, i32 1
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load i8**, i8*** %5, align 8
  %76 = call i8* @ceph_decode_32(i8** %75)
  %77 = load %struct.crush_bucket_straw*, %struct.crush_bucket_straw** %7, align 8
  %78 = getelementptr inbounds %struct.crush_bucket_straw, %struct.crush_bucket_straw* %77, i32 0, i32 0
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %66
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %59

86:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %90

87:                                               ; No predecessors!
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %86, %43, %26
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @dout(i8*, i8*, i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i8* @ceph_decode_32(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
