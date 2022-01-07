; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__mountns_enter.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_namespaces.c_nsinfo__mountns_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i8*, i32 }
%struct.nscookie = type { i32, i32, i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"/proc/self/ns/mnt\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@CLONE_NEWNS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nsinfo__mountns_enter(%struct.nsinfo* %0, %struct.nscookie* %1) #0 {
  %3 = alloca %struct.nsinfo*, align 8
  %4 = alloca %struct.nscookie*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.nsinfo* %0, %struct.nsinfo** %3, align 8
  store %struct.nscookie* %1, %struct.nscookie** %4, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %15 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %16 = icmp eq %struct.nscookie* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %88

18:                                               ; preds = %2
  %19 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %20 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %19, i32 0, i32 0
  store i32 -1, i32* %20, align 8
  %21 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %22 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %24 = icmp ne %struct.nsinfo* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %27 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %18
  store i32 1, i32* %10, align 4
  br label %88

31:                                               ; preds = %25
  %32 = load i32, i32* @PATH_MAX, align 4
  %33 = call i32 @snprintf(i8* %14, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @PATH_MAX, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 1, i32* %10, align 4
  br label %88

37:                                               ; preds = %31
  %38 = call i8* (...) @get_current_dir_name()
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 1, i32* %10, align 4
  br label %88

42:                                               ; preds = %37
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = call i32 @open(i8* %14, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %73

48:                                               ; preds = %42
  %49 = load %struct.nsinfo*, %struct.nsinfo** %3, align 8
  %50 = getelementptr inbounds %struct.nsinfo, %struct.nsinfo* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call i32 @open(i8* %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %73

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @CLONE_NEWNS, align 4
  %60 = call i64 @setns(i32 %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %57
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %66 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %69 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.nscookie*, %struct.nscookie** %4, align 8
  %72 = getelementptr inbounds %struct.nscookie, %struct.nscookie* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 1, i32* %10, align 4
  br label %88

73:                                               ; preds = %62, %56, %47
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @close(i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %8, align 4
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @close(i32 %85)
  br label %87

87:                                               ; preds = %84, %81
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %87, %63, %41, %36, %30, %17
  %89 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %10, align 4
  switch i32 %90, label %92 [
    i32 0, label %91
    i32 1, label %91
  ]

91:                                               ; preds = %88, %88
  ret void

92:                                               ; preds = %88
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @get_current_dir_name(...) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @setns(i32, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
