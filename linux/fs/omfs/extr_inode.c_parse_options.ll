; ModuleID = '/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/omfs/extr_inode.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omfs_sb_info = type { i32, i32, i32, i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.omfs_sb_info*)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.omfs_sb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omfs_sb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.omfs_sb_info* %1, %struct.omfs_sb_info** %5, align 8
  %12 = load i32, i32* @MAX_OPT_ARGS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %99, %27, %19
  %21 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %100

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %20

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @tokens, align 4
  %31 = call i32 @match_token(i8* %29, i32 %30, i32* %15)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  switch i32 %32, label %98 [
    i32 129, label %33
    i32 130, label %51
    i32 128, label %69
    i32 132, label %80
    i32 131, label %89
  ]

33:                                               ; preds = %28
  %34 = getelementptr inbounds i32, i32* %15, i64 0
  %35 = call i32 @match_int(i32* %34, i32* %9)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

38:                                               ; preds = %33
  %39 = call i32 (...) @current_user_ns()
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @make_kuid(i32 %39, i32 %40)
  %42 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %43 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @uid_valid(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

50:                                               ; preds = %38
  br label %99

51:                                               ; preds = %28
  %52 = getelementptr inbounds i32, i32* %15, i64 0
  %53 = call i32 @match_int(i32* %52, i32* %9)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

56:                                               ; preds = %51
  %57 = call i32 (...) @current_user_ns()
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @make_kgid(i32 %57, i32 %58)
  %60 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %61 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %63 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gid_valid(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

68:                                               ; preds = %56
  br label %99

69:                                               ; preds = %28
  %70 = getelementptr inbounds i32, i32* %15, i64 0
  %71 = call i32 @match_octal(i32* %70, i32* %9)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %77 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %79 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  br label %99

80:                                               ; preds = %28
  %81 = getelementptr inbounds i32, i32* %15, i64 0
  %82 = call i32 @match_octal(i32* %81, i32* %9)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

85:                                               ; preds = %80
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %88 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %99

89:                                               ; preds = %28
  %90 = getelementptr inbounds i32, i32* %15, i64 0
  %91 = call i32 @match_octal(i32* %90, i32* %9)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

94:                                               ; preds = %89
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %5, align 8
  %97 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %99

98:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

99:                                               ; preds = %94, %85, %74, %68, %50
  br label %20

100:                                              ; preds = %20
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %100, %98, %93, %84, %73, %67, %55, %49, %37, %18
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i32 @make_kuid(i32, i32) #2

declare dso_local i32 @current_user_ns(...) #2

declare dso_local i32 @uid_valid(i32) #2

declare dso_local i32 @make_kgid(i32, i32) #2

declare dso_local i32 @gid_valid(i32) #2

declare dso_local i32 @match_octal(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
