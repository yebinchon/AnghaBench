; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_choose_args.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_osdmap.c_decode_choose_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crush_map = type { i64, i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }
%struct.crush_choose_arg_map = type { i64, %struct.crush_choose_arg*, i32 }
%struct.crush_choose_arg = type { i64 }

@e_inval = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.crush_map*)* @decode_choose_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_choose_args(i8** %0, i8* %1, %struct.crush_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.crush_map*, align 8
  %8 = alloca %struct.crush_choose_arg_map*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.crush_choose_arg*, align 8
  %13 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.crush_map* %2, %struct.crush_map** %7, align 8
  store %struct.crush_choose_arg_map* null, %struct.crush_choose_arg_map** %8, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i32, i32* @e_inval, align 4
  %18 = call i32 @ceph_decode_32_safe(i8** %14, i8* %15, i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %112, %3
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %9, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %117

23:                                               ; preds = %19
  %24 = call %struct.crush_choose_arg_map* (...) @alloc_choose_arg_map()
  store %struct.crush_choose_arg_map* %24, %struct.crush_choose_arg_map** %8, align 8
  %25 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %26 = icmp ne %struct.crush_choose_arg_map* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %121

30:                                               ; preds = %23
  %31 = load i8**, i8*** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %34 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @e_inval, align 4
  %37 = call i32 @ceph_decode_64_safe(i8** %31, i8* %32, i32 %35, i32 %36)
  %38 = load %struct.crush_map*, %struct.crush_map** %7, align 8
  %39 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %42 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %44 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* @GFP_NOIO, align 4
  %47 = call %struct.crush_choose_arg* @kcalloc(i64 %45, i32 8, i32 %46)
  %48 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %49 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %48, i32 0, i32 1
  store %struct.crush_choose_arg* %47, %struct.crush_choose_arg** %49, align 8
  %50 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %51 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %50, i32 0, i32 1
  %52 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %51, align 8
  %53 = icmp ne %struct.crush_choose_arg* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %30
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %121

57:                                               ; preds = %30
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i32, i32* @e_inval, align 4
  %62 = call i32 @ceph_decode_32_safe(i8** %58, i8* %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %111, %57
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %10, align 8
  %66 = icmp ne i64 %64, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* @e_inval, align 4
  %72 = call i32 @ceph_decode_32_safe(i8** %68, i8* %69, i64 %70, i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %75 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp uge i64 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %118

79:                                               ; preds = %67
  %80 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %81 = getelementptr inbounds %struct.crush_choose_arg_map, %struct.crush_choose_arg_map* %80, i32 0, i32 1
  %82 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %82, i64 %83
  store %struct.crush_choose_arg* %84, %struct.crush_choose_arg** %12, align 8
  %85 = load i8**, i8*** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %12, align 8
  %88 = call i32 @decode_choose_arg(i8** %85, i8* %86, %struct.crush_choose_arg* %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %121

92:                                               ; preds = %79
  %93 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %12, align 8
  %94 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %92
  %98 = load %struct.crush_choose_arg*, %struct.crush_choose_arg** %12, align 8
  %99 = getelementptr inbounds %struct.crush_choose_arg, %struct.crush_choose_arg* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.crush_map*, %struct.crush_map** %7, align 8
  %102 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %103, i64 %104
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %100, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %97
  br label %118

111:                                              ; preds = %97, %92
  br label %63

112:                                              ; preds = %63
  %113 = load %struct.crush_map*, %struct.crush_map** %7, align 8
  %114 = getelementptr inbounds %struct.crush_map, %struct.crush_map* %113, i32 0, i32 1
  %115 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %116 = call i32 @insert_choose_arg_map(i32* %114, %struct.crush_choose_arg_map* %115)
  br label %19

117:                                              ; preds = %19
  store i32 0, i32* %4, align 4
  br label %125

118:                                              ; preds = %110, %78
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %118, %91, %54, %27
  %122 = load %struct.crush_choose_arg_map*, %struct.crush_choose_arg_map** %8, align 8
  %123 = call i32 @free_choose_arg_map(%struct.crush_choose_arg_map* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %121, %117
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @ceph_decode_32_safe(i8**, i8*, i64, i32) #1

declare dso_local %struct.crush_choose_arg_map* @alloc_choose_arg_map(...) #1

declare dso_local i32 @ceph_decode_64_safe(i8**, i8*, i32, i32) #1

declare dso_local %struct.crush_choose_arg* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @decode_choose_arg(i8**, i8*, %struct.crush_choose_arg*) #1

declare dso_local i32 @insert_choose_arg_map(i32*, %struct.crush_choose_arg_map*) #1

declare dso_local i32 @free_choose_arg_map(%struct.crush_choose_arg_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
