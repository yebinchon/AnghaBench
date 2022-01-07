; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/test/extr_test.c_test_disks.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/test/extr_test.c_test_disks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@recovi = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@recovj = common dso_local global i32 0, align 4
@dataptrs = common dso_local global i32* null, align 8
@NDISKS = common dso_local global i32 0, align 4
@data = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"algo=%-8s  faila=%3d(%c)  failb=%3d(%c)  %s\0A\00", align 1
@raid6_call = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ERRB\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ERRA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ERRAB\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_disks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_disks(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @recovi, align 4
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = call i32 @memset(i32 %7, i32 240, i32 %8)
  %10 = load i32, i32* @recovj, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = call i32 @memset(i32 %10, i32 186, i32 %11)
  %13 = load i32, i32* @recovi, align 4
  %14 = load i32*, i32** @dataptrs, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @recovj, align 4
  %19 = load i32*, i32** @dataptrs, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  %23 = load i32, i32* @NDISKS, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @raid6_dual_recov(i32 %23, i32 %24, i32 %25, i32 %26, i8** bitcast (i32** @dataptrs to i8**))
  %28 = load i32*, i32** @data, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @recovi, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = call i32 @memcmp(i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32*, i32** @data, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @recovj, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i32 @memcmp(i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @NDISKS, align 4
  %46 = sub nsw i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @NDISKS, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %83

54:                                               ; preds = %48, %2
  %55 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @raid6_call, i32 0, i32 0), align 8
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @disk_type(i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @disk_type(i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %80

68:                                               ; preds = %64, %54
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  br label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  br label %78

78:                                               ; preds = %72, %71
  %79 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %71 ], [ %77, %72 ]
  br label %80

80:                                               ; preds = %78, %67
  %81 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %67 ], [ %79, %78 ]
  %82 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %55, i32 %56, i32 %58, i32 %59, i32 %61, i8* %81)
  br label %83

83:                                               ; preds = %80, %53
  %84 = load i32*, i32** @data, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** @dataptrs, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  %93 = load i32*, i32** @data, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** @dataptrs, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %83
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %104, %83
  %108 = phi i1 [ true, %83 ], [ %106, %104 ]
  %109 = zext i1 %108 to i32
  ret i32 %109
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @raid6_dual_recov(i32, i32, i32, i32, i8**) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @disk_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
