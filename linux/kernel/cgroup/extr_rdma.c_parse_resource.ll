; ModuleID = '/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_parse_resource.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/cgroup/extr_rdma.c_parse_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@rdmacg_resource_names = common dso_local global i32 0, align 4
@RDMACG_RESOURCE_MAX = common dso_local global i32 0, align 4
@RDMACG_MAX_STR = common dso_local global i32 0, align 4
@S32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @parse_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_resource(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %8, align 8
  %13 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %66

22:                                               ; preds = %16
  %23 = load i32, i32* @rdmacg_resource_names, align 4
  %24 = load i32, i32* @RDMACG_RESOURCE_MAX, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @match_string(i32 %23, i32 %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %66

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %9, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @match_int(%struct.TYPE_3__* %6, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %66

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %66

53:                                               ; preds = %31
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @RDMACG_MAX_STR, align 4
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @strncmp(i8* %54, i32 %55, i64 %56)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @S32_MAX, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %3, align 4
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %59, %51, %48, %29, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @match_int(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
