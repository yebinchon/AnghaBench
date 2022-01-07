; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_list_choose.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_list_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_list = type { i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"list_choose i=%d x=%d r=%d item %d weight %x sw %x rand %llx\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"bad list sums for bucket %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_bucket_list*, i32, i32)* @bucket_list_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_list_choose(%struct.crush_bucket_list* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crush_bucket_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crush_bucket_list* %0, %struct.crush_bucket_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %11 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %97, %3
  %16 = load i32, i32* %8, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %100

18:                                               ; preds = %15
  %19 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %20 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %25 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %34 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @crush_hash32_4(i32 %22, i32 %23, i32 %31, i32 %32, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 65535
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %44 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %52 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %59 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %50, i32 %57, i32 %64, i32 %65)
  %67 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %68 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 16
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %80 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %78, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %18
  %88 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %89 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %4, align 4
  br label %112

96:                                               ; preds = %18
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %8, align 4
  br label %15

100:                                              ; preds = %15
  %101 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %102 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load %struct.crush_bucket_list*, %struct.crush_bucket_list** %5, align 8
  %107 = getelementptr inbounds %struct.crush_bucket_list, %struct.crush_bucket_list* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %100, %87
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @crush_hash32_4(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
