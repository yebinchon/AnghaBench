; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_parse_sb_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_fs_context.c_vfs_parse_sb_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, i32 }

@forbidden_sb_flag = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@common_set_sb_flag = common dso_local global i32 0, align 4
@common_clear_sb_flag = common dso_local global i32 0, align 4
@ENOPARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*, i8*)* @vfs_parse_sb_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_parse_sb_flag(%struct.fs_context* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32*, i32** @forbidden_sb_flag, align 8
  %11 = call i32 @ARRAY_SIZE(i32* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i32*, i32** @forbidden_sb_flag, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i8* %14, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* @common_set_sb_flag, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @lookup_constant(i32 %30, i8* %31, i32 0)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %43 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %67

46:                                               ; preds = %29
  %47 = load i32, i32* @common_clear_sb_flag, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @lookup_constant(i32 %47, i8* %48, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %56 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.fs_context*, %struct.fs_context** %4, align 8
  %61 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; preds = %46
  %65 = load i32, i32* @ENOPARAM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %52, %35, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @lookup_constant(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
