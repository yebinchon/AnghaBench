; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_parse_mount_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_super.c_parse_mount_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.orangefs_sb_info_s = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@SB_POSIXACL = common dso_local global i32 0, align 4
@ORANGEFS_OPT_INTR = common dso_local global i32 0, align 4
@ORANGEFS_OPT_LOCAL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@tokens = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Error: mount option [%s] is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @parse_mount_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mount_options(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.orangefs_sb_info_s*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.orangefs_sb_info_s* @ORANGEFS_SB(%struct.super_block* %14)
  store %struct.orangefs_sb_info_s* %15, %struct.orangefs_sb_info_s** %8, align 8
  %16 = load i32, i32* @MAX_OPT_ARGS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %9, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %20 = load i32, i32* @SB_POSIXACL, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @ORANGEFS_OPT_INTR, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %8, align 8
  %29 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @ORANGEFS_OPT_LOCAL_LOCK, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %8, align 8
  %35 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %70, %45, %3
  %39 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %39, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = load i8, i8* %42, align 1
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %38

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* @tokens, align 4
  %49 = call i32 @match_token(i8* %47, i32 %48, i32* %19)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  switch i32 %50, label %69 [
    i32 130, label %51
    i32 129, label %57
    i32 128, label %63
  ]

51:                                               ; preds = %46
  %52 = load i32, i32* @SB_POSIXACL, align 4
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %70

57:                                               ; preds = %46
  %58 = load i32, i32* @ORANGEFS_OPT_INTR, align 4
  %59 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %8, align 8
  %60 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %70

63:                                               ; preds = %46
  %64 = load i32, i32* @ORANGEFS_OPT_LOCAL_LOCK, align 4
  %65 = load %struct.orangefs_sb_info_s*, %struct.orangefs_sb_info_s** %8, align 8
  %66 = getelementptr inbounds %struct.orangefs_sb_info_s, %struct.orangefs_sb_info_s* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %70

69:                                               ; preds = %46
  br label %72

70:                                               ; preds = %63, %57, %51
  br label %38

71:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @gossip_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.orangefs_sb_info_s* @ORANGEFS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @match_token(i8*, i32, i32*) #1

declare dso_local i32 @gossip_err(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
