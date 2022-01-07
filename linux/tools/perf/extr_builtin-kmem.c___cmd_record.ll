; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c___cmd_record.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c___cmd_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-e\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"kmem:kmalloc\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"kmem:kmalloc_node\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"kmem:kfree\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"kmem:kmem_cache_alloc\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"kmem:kmem_cache_alloc_node\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"kmem:kmem_cache_free\00", align 1
@__const.__cmd_record.slab_events = private unnamed_addr constant [12 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0)], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"kmem:mm_page_alloc\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"kmem:mm_page_free\00", align 1
@__const.__cmd_record.page_events = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0)], align 16
@kmem_slab = common dso_local global i64 0, align 8
@kmem_page = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @__cmd_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cmd_record(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [5 x i8*], align 16
  %7 = alloca [12 x i8*], align 16
  %8 = alloca [4 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = bitcast [5 x i8*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 40, i1 false)
  %14 = bitcast i8* %13 to [5 x i8*]*
  %15 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i32 0, i32 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %19, align 16
  %20 = bitcast [12 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([12 x i8*]* @__const.__cmd_record.slab_events to i8*), i64 96, i1 false)
  %21 = bitcast [4 x i8*]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i8*]* @__const.__cmd_record.page_events to i8*), i64 32, i1 false)
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %23 = call i32 @ARRAY_SIZE(i8** %22)
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %23, %24
  %26 = sub i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* @kmem_slab, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = getelementptr inbounds [12 x i8*], [12 x i8*]* %7, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i8** %30)
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i64, i64* @kmem_page, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %39 = call i32 @ARRAY_SIZE(i8** %38)
  %40 = add i32 %39, 1
  %41 = load i32, i32* %9, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  %46 = call i8** @calloc(i32 %45, i32 8)
  store i8** %46, i8*** %12, align 8
  %47 = load i8**, i8*** %12, align 8
  %48 = icmp eq i8** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %151

52:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %10, align 4
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 0
  %56 = call i32 @ARRAY_SIZE(i8** %55)
  %57 = icmp ult i32 %54, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %10, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i8*], [5 x i8*]* %6, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @strdup(i8* %62)
  %64 = load i8**, i8*** %12, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %10, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %53

71:                                               ; preds = %53
  %72 = load i64, i64* @kmem_slab, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds [12 x i8*], [12 x i8*]* %7, i64 0, i64 0
  %78 = call i32 @ARRAY_SIZE(i8** %77)
  %79 = icmp ult i32 %76, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [12 x i8*], [12 x i8*]* %7, i64 0, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = call i8* @strdup(i8* %84)
  %86 = load i8**, i8*** %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* %85, i8** %89, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %75

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95, %71
  %97 = load i64, i64* @kmem_page, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %96
  %100 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %101 = load i8**, i8*** %12, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = zext i32 %102 to i64
  %105 = getelementptr inbounds i8*, i8** %101, i64 %104
  store i8* %100, i8** %105, align 8
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %121, %99
  %107 = load i32, i32* %11, align 4
  %108 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 0
  %109 = call i32 @ARRAY_SIZE(i8** %108)
  %110 = icmp ult i32 %107, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i8*], [4 x i8*]* %8, i64 0, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @strdup(i8* %115)
  %117 = load i8**, i8*** %12, align 8
  %118 = load i32, i32* %10, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %116, i8** %120, align 8
  br label %121

121:                                              ; preds = %111
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %106

126:                                              ; preds = %106
  br label %127

127:                                              ; preds = %126, %96
  store i32 1, i32* %11, align 4
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %128
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %11, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** %12, align 8
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %132
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %128

147:                                              ; preds = %128
  %148 = load i32, i32* %10, align 4
  %149 = load i8**, i8*** %12, align 8
  %150 = call i32 @cmd_record(i32 %148, i8** %149)
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %147, %49
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i8** @calloc(i32, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @cmd_record(i32, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
