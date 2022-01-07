; ModuleID = '/home/carl/AnghaBench/linux/samples/vfs/extr_test-fsmount.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/vfs/extr_test-fsmount.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"afs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fsopen\00", align 1
@FSCONFIG_SET_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"#grand.central.org:root.cell.\00", align 1
@FSCONFIG_CMD_CREATE = common dso_local global i32 0, align 4
@MOUNT_ATTR_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"fsmount\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"/mnt\00", align 1
@MOVE_MOUNT_F_EMPTY_PATH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"move_mount\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call i32 @fsopen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @FSCONFIG_SET_STRING, align 4
  %17 = call i32 @E_fsconfig(i32 %15, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FSCONFIG_CMD_CREATE, align 4
  %20 = call i32 @E_fsconfig(i32 %18, i32 %19, i8* null, i8* null, i32 0)
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MOUNT_ATTR_RDONLY, align 4
  %23 = call i32 @fsmount(i32 %21, i32 0, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @mount_error(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %14
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @close(i32 %30)
  %32 = call i32 @E(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @AT_FDCWD, align 4
  %35 = load i32, i32* @MOVE_MOUNT_F_EMPTY_PATH, align 4
  %36 = call i64 @move_mount(i32 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %40 = call i32 @exit(i32 1) #3
  unreachable

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @close(i32 %42)
  %44 = call i32 @E(i32 %43)
  %45 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @fsopen(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @E_fsconfig(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @fsmount(i32, i32, i32) #1

declare dso_local i32 @mount_error(i32, i8*) #1

declare dso_local i32 @E(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @move_mount(i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
