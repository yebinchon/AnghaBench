; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_parse_snapshot_option.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_super.c_nilfs_parse_snapshot_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.nilfs_super_data = type { i32, i64 }

@SB_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"read-only option is not specified\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"too large checkpoint number\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"malformed argument\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid checkpoint number 0\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid option \22%s\22: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, %struct.nilfs_super_data*)* @nilfs_parse_snapshot_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_parse_snapshot_option(i8* %0, %struct.TYPE_3__* %1, %struct.nilfs_super_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.nilfs_super_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.nilfs_super_data* %2, %struct.nilfs_super_data** %7, align 8
  store i8* null, i8** %9, align 8
  %11 = load %struct.nilfs_super_data*, %struct.nilfs_super_data** %7, align 8
  %12 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SB_RDONLY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kstrtoull(i32 %21, i32 0, i64* %8)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %18
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @ERANGE, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %32

31:                                               ; preds = %25
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %32

32:                                               ; preds = %31, %30
  br label %42

33:                                               ; preds = %18
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %42

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.nilfs_super_data*, %struct.nilfs_super_data** %7, align 8
  %41 = getelementptr inbounds %struct.nilfs_super_data, %struct.nilfs_super_data* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  store i32 0, i32* %4, align 4
  br label %47

42:                                               ; preds = %36, %32, %17
  %43 = load i32, i32* @KERN_ERR, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @nilfs_msg(i32* null, i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %44, i8* %45)
  store i32 1, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @kstrtoull(i32, i32, i64*) #1

declare dso_local i32 @nilfs_msg(i32*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
