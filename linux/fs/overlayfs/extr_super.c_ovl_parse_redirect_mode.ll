; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_parse_redirect_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_parse_redirect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_config = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"follow\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@ovl_redirect_always_follow = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"nofollow\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"overlayfs: bad mount option \22redirect_dir=%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_config*, i8*)* @ovl_parse_redirect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_parse_redirect_mode(%struct.ovl_config* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_config*, align 8
  %5 = alloca i8*, align 8
  store %struct.ovl_config* %0, %struct.ovl_config** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ovl_config*, %struct.ovl_config** %4, align 8
  %11 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %10, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load %struct.ovl_config*, %struct.ovl_config** %4, align 8
  %13 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.ovl_config*, %struct.ovl_config** %4, align 8
  %20 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  br label %43

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i64, i64* @ovl_redirect_always_follow, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.ovl_config*, %struct.ovl_config** %4, align 8
  %30 = getelementptr inbounds %struct.ovl_config, %struct.ovl_config* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %28, %25
  br label %42

32:                                               ; preds = %21
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %18
  br label %44

44:                                               ; preds = %43, %9
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
