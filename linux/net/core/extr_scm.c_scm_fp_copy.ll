; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_scm.c_scm_fp_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_scm.c_scm_fp_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i32 }
%struct.scm_fp_list = type { i64, i32, i32*, %struct.file** }
%struct.file = type { i32 }

@SCM_MAX_FD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmsghdr*, %struct.scm_fp_list**)* @scm_fp_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scm_fp_copy(%struct.cmsghdr* %0, %struct.scm_fp_list** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca %struct.scm_fp_list**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.scm_fp_list*, align 8
  %8 = alloca %struct.file**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  store %struct.cmsghdr* %0, %struct.cmsghdr** %4, align 8
  store %struct.scm_fp_list** %1, %struct.scm_fp_list*** %5, align 8
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %14 = call i64 @CMSG_DATA(%struct.cmsghdr* %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %6, align 8
  %16 = load %struct.scm_fp_list**, %struct.scm_fp_list*** %5, align 8
  %17 = load %struct.scm_fp_list*, %struct.scm_fp_list** %16, align 8
  store %struct.scm_fp_list* %17, %struct.scm_fp_list** %7, align 8
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %19 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 4
  %23 = udiv i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @SCM_MAX_FD, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %121

35:                                               ; preds = %28
  %36 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %37 = icmp ne %struct.scm_fp_list* %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.scm_fp_list* @kmalloc(i32 32, i32 %39)
  store %struct.scm_fp_list* %40, %struct.scm_fp_list** %7, align 8
  %41 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %42 = icmp ne %struct.scm_fp_list* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %121

46:                                               ; preds = %38
  %47 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %48 = load %struct.scm_fp_list**, %struct.scm_fp_list*** %5, align 8
  store %struct.scm_fp_list* %47, %struct.scm_fp_list** %48, align 8
  %49 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %50 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @SCM_MAX_FD, align 4
  %52 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %53 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %55 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %54, i32 0, i32 2
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %46, %35
  %57 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %58 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %57, i32 0, i32 3
  %59 = load %struct.file**, %struct.file*** %58, align 8
  %60 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %61 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.file*, %struct.file** %59, i64 %62
  store %struct.file** %63, %struct.file*** %8, align 8
  %64 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %65 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %66, %68
  %70 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %71 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ugt i64 %69, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %121

78:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %106, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %79
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.file* @fget_raw(i32 %92)
  store %struct.file* %93, %struct.file** %12, align 8
  %94 = icmp ne %struct.file* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %91, %83
  %96 = load i32, i32* @EBADF, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %121

98:                                               ; preds = %91
  %99 = load %struct.file*, %struct.file** %12, align 8
  %100 = load %struct.file**, %struct.file*** %8, align 8
  %101 = getelementptr inbounds %struct.file*, %struct.file** %100, i32 1
  store %struct.file** %101, %struct.file*** %8, align 8
  store %struct.file* %99, %struct.file** %100, align 8
  %102 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %103 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %103, align 8
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %79

109:                                              ; preds = %79
  %110 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %111 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = call i32 (...) @current_user()
  %116 = call i32* @get_uid(i32 %115)
  %117 = load %struct.scm_fp_list*, %struct.scm_fp_list** %7, align 8
  %118 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %117, i32 0, i32 2
  store i32* %116, i32** %118, align 8
  br label %119

119:                                              ; preds = %114, %109
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %95, %75, %43, %32, %27
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.scm_fp_list* @kmalloc(i32, i32) #1

declare dso_local %struct.file* @fget_raw(i32) #1

declare dso_local i32* @get_uid(i32) #1

declare dso_local i32 @current_user(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
