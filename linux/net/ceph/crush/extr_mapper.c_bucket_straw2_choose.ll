; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_straw2_choose.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/crush/extr_mapper.c_bucket_straw2_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_bucket_straw2 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.crush_choose_arg = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"weight 0x%x item %d\0A\00", align 1
@S64_MIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crush_bucket_straw2*, i32, i32, %struct.crush_choose_arg*, i32)* @bucket_straw2_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bucket_straw2_choose(%struct.crush_bucket_straw2* %0, i32 %1, i32 %2, %struct.crush_choose_arg* %3, i32 %4) #0 {
  %6 = alloca %struct.crush_bucket_straw2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.crush_choose_arg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  store %struct.crush_bucket_straw2* %0, %struct.crush_bucket_straw2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.crush_choose_arg* %3, %struct.crush_choose_arg** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %16, align 8
  %19 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %6, align 8
  %20 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i64* @get_choose_arg_weights(%struct.crush_bucket_straw2* %19, %struct.crush_choose_arg* %20, i32 %21)
  store i64* %22, i64** %17, align 8
  %23 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %6, align 8
  %24 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %9, align 8
  %25 = call i32* @get_choose_arg_ids(%struct.crush_bucket_straw2* %23, %struct.crush_choose_arg* %24)
  store i32* %25, i32** %18, align 8
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %89, %5
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %6, align 8
  %29 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %27, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %26
  %34 = load i64*, i64** %17, align 8
  %35 = load i32, i32* %11, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %43)
  %45 = load i64*, i64** %17, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %33
  %52 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %6, align 8
  %53 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %18, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @crush_hash32_3(i32 %55, i32 %56, i32 %61, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, 65535
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i64 @crush_ln(i32 %66)
  %68 = sub nsw i64 %67, 281474976710656
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64*, i64** %17, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @div64_s64(i64 %69, i64 %74)
  store i64 %75, i64* %15, align 8
  br label %78

76:                                               ; preds = %33
  %77 = load i64, i64* @S64_MIN, align 8
  store i64 %77, i64* %15, align 8
  br label %78

78:                                               ; preds = %76, %51
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %16, align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %12, align 4
  %87 = load i64, i64* %15, align 8
  store i64 %87, i64* %16, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %26

92:                                               ; preds = %26
  %93 = load %struct.crush_bucket_straw2*, %struct.crush_bucket_straw2** %6, align 8
  %94 = getelementptr inbounds %struct.crush_bucket_straw2, %struct.crush_bucket_straw2* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  ret i32 %100
}

declare dso_local i64* @get_choose_arg_weights(%struct.crush_bucket_straw2*, %struct.crush_choose_arg*, i32) #1

declare dso_local i32* @get_choose_arg_ids(%struct.crush_bucket_straw2*, %struct.crush_choose_arg*) #1

declare dso_local i32 @dprintk(i8*, i64, i32) #1

declare dso_local i32 @crush_hash32_3(i32, i32, i32, i32) #1

declare dso_local i64 @crush_ln(i32) #1

declare dso_local i64 @div64_s64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
