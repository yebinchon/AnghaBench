; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_parse_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.the_nilfs* }
%struct.the_nilfs = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"relaxed\00", align 1
@STRICT_ORDER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@ERROR_MODE = common dso_local global i32 0, align 4
@ERRORS_PANIC = common dso_local global i32 0, align 4
@ERRORS_RO = common dso_local global i32 0, align 4
@ERRORS_CONT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"\22%s\22 option is invalid for remount\00", align 1
@NORECOVERY = common dso_local global i32 0, align 4
@DISCARD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"unrecognized mount option \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.super_block*, i32)* @parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_options(i8* %0, %struct.super_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.the_nilfs*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.super_block*, %struct.super_block** %6, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.the_nilfs*, %struct.the_nilfs** %15, align 8
  store %struct.the_nilfs* %16, %struct.the_nilfs** %8, align 8
  %17 = load i32, i32* @MAX_OPT_ARGS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca %struct.TYPE_3__, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %112

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %110, %32, %24
  %26 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %26, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %111

28:                                               ; preds = %25
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = icmp ne i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %25

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* @tokens, align 4
  %36 = call i32 @match_token(i8* %34, i32 %35, %struct.TYPE_3__* %20)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  switch i32 %37, label %105 [
    i32 137, label %38
    i32 132, label %42
    i32 129, label %46
    i32 134, label %69
    i32 133, label %74
    i32 135, label %79
    i32 128, label %84
    i32 130, label %93
    i32 136, label %97
    i32 131, label %101
  ]

38:                                               ; preds = %33
  %39 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %40 = load i32, i32* @BARRIER, align 4
  %41 = call i32 @nilfs_set_opt(%struct.the_nilfs* %39, i32 %40)
  br label %110

42:                                               ; preds = %33
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %44 = load i32, i32* @BARRIER, align 4
  %45 = call i32 @nilfs_clear_opt(%struct.the_nilfs* %43, i32 %44)
  br label %110

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 16
  %50 = call i32 @strcmp(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %54 = load i32, i32* @STRICT_ORDER, align 4
  %55 = call i32 @nilfs_clear_opt(%struct.the_nilfs* %53, i32 %54)
  br label %68

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 16
  %60 = call i32 @strcmp(i32 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %64 = load i32, i32* @STRICT_ORDER, align 4
  %65 = call i32 @nilfs_set_opt(%struct.the_nilfs* %63, i32 %64)
  br label %67

66:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %112

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %52
  br label %110

69:                                               ; preds = %33
  %70 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %71 = load i32, i32* @ERROR_MODE, align 4
  %72 = load i32, i32* @ERRORS_PANIC, align 4
  %73 = call i32 @nilfs_write_opt(%struct.the_nilfs* %70, i32 %71, i32 %72)
  br label %110

74:                                               ; preds = %33
  %75 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %76 = load i32, i32* @ERROR_MODE, align 4
  %77 = load i32, i32* @ERRORS_RO, align 4
  %78 = call i32 @nilfs_write_opt(%struct.the_nilfs* %75, i32 %76, i32 %77)
  br label %110

79:                                               ; preds = %33
  %80 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %81 = load i32, i32* @ERROR_MODE, align 4
  %82 = load i32, i32* @ERRORS_CONT, align 4
  %83 = call i32 @nilfs_write_opt(%struct.the_nilfs* %80, i32 %81, i32 %82)
  br label %110

84:                                               ; preds = %33
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.super_block*, %struct.super_block** %6, align 8
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @nilfs_msg(%struct.super_block* %88, i32 %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %112

92:                                               ; preds = %84
  br label %110

93:                                               ; preds = %33
  %94 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %95 = load i32, i32* @NORECOVERY, align 4
  %96 = call i32 @nilfs_set_opt(%struct.the_nilfs* %94, i32 %95)
  br label %110

97:                                               ; preds = %33
  %98 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %99 = load i32, i32* @DISCARD, align 4
  %100 = call i32 @nilfs_set_opt(%struct.the_nilfs* %98, i32 %99)
  br label %110

101:                                              ; preds = %33
  %102 = load %struct.the_nilfs*, %struct.the_nilfs** %8, align 8
  %103 = load i32, i32* @DISCARD, align 4
  %104 = call i32 @nilfs_clear_opt(%struct.the_nilfs* %102, i32 %103)
  br label %110

105:                                              ; preds = %33
  %106 = load %struct.super_block*, %struct.super_block** %6, align 8
  %107 = load i32, i32* @KERN_ERR, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @nilfs_msg(%struct.super_block* %106, i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %108)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %112

110:                                              ; preds = %101, %97, %93, %92, %79, %74, %69, %68, %42, %38
  br label %25

111:                                              ; preds = %25
  store i32 1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %105, %87, %66, %23
  %113 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @nilfs_set_opt(%struct.the_nilfs*, i32) #2

declare dso_local i32 @nilfs_clear_opt(%struct.the_nilfs*, i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @nilfs_write_opt(%struct.the_nilfs*, i32, i32) #2

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
