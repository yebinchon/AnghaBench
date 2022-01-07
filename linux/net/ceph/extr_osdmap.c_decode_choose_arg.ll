; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_choose_arg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_choose_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_choose_arg = type { i64, i32*, i32, %struct.crush_weight_set* }
%struct.crush_weight_set = type { i32*, i32 }

@e_inval = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.crush_choose_arg*)* @decode_choose_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_choose_arg(i8** %0, i8* %1, %struct.crush_choose_arg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crush_choose_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.crush_weight_set*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crush_choose_arg* %2, %struct.crush_choose_arg** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %14 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @e_inval, align 4
  %17 = call i32 @ceph_decode_32_safe(i8** %11, i8* %12, i64 %15, i32 %16)
  %18 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %19 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %76

22:                                               ; preds = %3
  %23 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %24 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @GFP_NOIO, align 4
  %27 = call %struct.crush_weight_set* @kmalloc_array(i64 %25, i32 16, i32 %26)
  %28 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %29 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %28, i32 0, i32 3
  store %struct.crush_weight_set* %27, %struct.crush_weight_set** %29, align 8
  %30 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %31 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %30, i32 0, i32 3
  %32 = load %struct.crush_weight_set*, %struct.crush_weight_set** %31, align 8
  %33 = icmp ne %struct.crush_weight_set* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %22
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %102

37:                                               ; preds = %22
  store i64 0, i64* %9, align 8
  br label %38

38:                                               ; preds = %72, %37
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %41 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %75

44:                                               ; preds = %38
  %45 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %46 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %45, i32 0, i32 3
  %47 = load %struct.crush_weight_set*, %struct.crush_weight_set** %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %47, i64 %48
  store %struct.crush_weight_set* %49, %struct.crush_weight_set** %10, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.crush_weight_set*, %struct.crush_weight_set** %10, align 8
  %53 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %52, i32 0, i32 1
  %54 = call i8* @decode_array_32_alloc(i8** %50, i8* %51, i32* %53)
  %55 = bitcast i8* %54 to i32*
  %56 = load %struct.crush_weight_set*, %struct.crush_weight_set** %10, align 8
  %57 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.crush_weight_set*, %struct.crush_weight_set** %10, align 8
  %59 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @IS_ERR(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %44
  %64 = load %struct.crush_weight_set*, %struct.crush_weight_set** %10, align 8
  %65 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @PTR_ERR(i32* %66)
  store i32 %67, i32* %8, align 4
  %68 = load %struct.crush_weight_set*, %struct.crush_weight_set** %10, align 8
  %69 = getelementptr inbounds %struct.crush_weight_set, %struct.crush_weight_set* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %102

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %38

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %75, %3
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %80 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %79, i32 0, i32 2
  %81 = call i8* @decode_array_32_alloc(i8** %77, i8* %78, i32* %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %84 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %86 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %76
  %91 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %92 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %7, align 8
  %96 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %95, i32 0, i32 1
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %4, align 4
  br label %102

98:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %102

99:                                               ; No predecessors!
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %98, %90, %63, %34
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i64, i32) #1

declare dso_local %struct.crush_weight_set* @kmalloc_array(i64, i32, i32) #1

declare dso_local i8* @decode_array_32_alloc(i8**, i8*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
