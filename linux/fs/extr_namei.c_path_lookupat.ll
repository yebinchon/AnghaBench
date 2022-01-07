; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_lookupat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_lookupat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.path }
%struct.path = type { i32*, i32* }

@LOOKUP_DOWN = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32, %struct.path*)* @path_lookupat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_lookupat(%struct.nameidata* %0, i32 %1, %struct.path* %2) #0 {
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.path* %2, %struct.path** %6, align 8
  %9 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i8* @path_init(%struct.nameidata* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @LOOKUP_DOWN, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @IS_ERR(i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %23 = call i32 @handle_lookup_down(%struct.nameidata* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = call i8* @ERR_PTR(i32 %30)
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %29, %21
  br label %33

33:                                               ; preds = %32, %17, %3
  br label %34

34:                                               ; preds = %45, %33
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %37 = call i32 @link_path_walk(i8* %35, %struct.nameidata* %36)
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %41 = call i32 @lookup_last(%struct.nameidata* %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp sgt i32 %41, 0
  br label %43

43:                                               ; preds = %39, %34
  %44 = phi i1 [ false, %34 ], [ %42, %39 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %47 = call i8* @trailing_symlink(%struct.nameidata* %46)
  store i8* %47, i8** %7, align 8
  br label %34

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %53 = call i32 @complete_walk(%struct.nameidata* %52)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %54
  %58 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %57
  %65 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.path, %struct.path* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @d_can_lookup(i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOTDIR, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %57, %54
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %90, label %78

78:                                               ; preds = %75
  %79 = load %struct.path*, %struct.path** %6, align 8
  %80 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %81 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %80, i32 0, i32 1
  %82 = bitcast %struct.path* %79 to i8*
  %83 = bitcast %struct.path* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %85 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.path, %struct.path* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %88 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.path, %struct.path* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %78, %75
  %91 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %92 = call i32 @terminate_walk(%struct.nameidata* %91)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i8* @path_init(%struct.nameidata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @handle_lookup_down(%struct.nameidata*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @link_path_walk(i8*, %struct.nameidata*) #1

declare dso_local i32 @lookup_last(%struct.nameidata*) #1

declare dso_local i8* @trailing_symlink(%struct.nameidata*) #1

declare dso_local i32 @complete_walk(%struct.nameidata*) #1

declare dso_local i32 @d_can_lookup(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @terminate_walk(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
