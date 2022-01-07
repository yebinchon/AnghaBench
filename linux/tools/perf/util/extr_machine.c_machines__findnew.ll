; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machines__findnew.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machines__findnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.strlist = type { i32 }
%struct.machine = type { i64 }
%struct.machines = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HOST_KERNEL_ID = common dso_local global i64 0, align 8
@DEFAULT_GUEST_KERNEL_ID = common dso_local global i64 0, align 8
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%d\00", align 1
@R_OK = common dso_local global i32 0, align 4
@machines__findnew.seen = internal global %struct.strlist* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Can't access file %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.machine* @machines__findnew(%struct.machines* %0, i64 %1) #0 {
  %3 = alloca %struct.machines*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.machine*, align 8
  store %struct.machines* %0, %struct.machines** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @PATH_MAX, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %13 = load %struct.machines*, %struct.machines** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.machine* @machines__find(%struct.machines* %13, i64 %14)
  store %struct.machine* %15, %struct.machine** %8, align 8
  %16 = load %struct.machine*, %struct.machine** %8, align 8
  %17 = icmp ne %struct.machine* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.machine*, %struct.machine** %8, align 8
  %20 = getelementptr inbounds %struct.machine, %struct.machine* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %63

25:                                               ; preds = %18, %2
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @HOST_KERNEL_ID, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %25
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @DEFAULT_GUEST_KERNEL_ID, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %37, i64 %38)
  %40 = load i32, i32* @R_OK, align 4
  %41 = call i64 @access(i8* %12, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.strlist*, %struct.strlist** @machines__findnew.seen, align 8
  %45 = icmp ne %struct.strlist* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call %struct.strlist* @strlist__new(i32* null, i32* null)
  store %struct.strlist* %47, %struct.strlist** @machines__findnew.seen, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.strlist*, %struct.strlist** @machines__findnew.seen, align 8
  %50 = call i32 @strlist__has_entry(%struct.strlist* %49, i8* %12)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %12)
  %54 = load %struct.strlist*, %struct.strlist** @machines__findnew.seen, align 8
  %55 = call i32 @strlist__add(%struct.strlist* %54, i8* %12)
  br label %56

56:                                               ; preds = %52, %48
  store %struct.machine* null, %struct.machine** %8, align 8
  br label %63

57:                                               ; preds = %36
  store i8* %12, i8** %7, align 8
  br label %58

58:                                               ; preds = %57, %33, %29, %25
  %59 = load %struct.machines*, %struct.machines** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call %struct.machine* @machines__add(%struct.machines* %59, i64 %60, i8* %61)
  store %struct.machine* %62, %struct.machine** %8, align 8
  br label %63

63:                                               ; preds = %58, %56, %24
  %64 = load %struct.machine*, %struct.machine** %8, align 8
  %65 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %65)
  ret %struct.machine* %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.machine* @machines__find(%struct.machines*, i64) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i64) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local %struct.strlist* @strlist__new(i32*, i32*) #2

declare dso_local i32 @strlist__has_entry(%struct.strlist*, i8*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i32 @strlist__add(%struct.strlist*, i8*) #2

declare dso_local %struct.machine* @machines__add(%struct.machines*, i64, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
