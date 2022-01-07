; ModuleID = '/home/carl/AnghaBench/linux/tools/build/extr_fixdep.c_print_deps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/build/extr_fixdep.c_print_deps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@depfile = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"fixdep: error opening depfile: \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"fixdep: error fstat'ing depfile: \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fixdep: %s is empty\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"fixdep: mmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_deps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_deps() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @depfile, align 8
  %5 = load i32, i32* @O_RDONLY, align 4
  %6 = call i32 @open(i8* %4, i32 %5)
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %0
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 (i32, i8*, ...) @fprintf(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** @depfile, align 8
  %13 = call i32 @perror(i8* %12)
  %14 = call i32 @exit(i32 2) #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @fstat(i32 %16, %struct.stat* %1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** @depfile, align 8
  %23 = call i32 @perror(i8* %22)
  %24 = call i32 @exit(i32 2) #3
  unreachable

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** @depfile, align 8
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @close(i32 %33)
  br label %60

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = load i32, i32* @MAP_PRIVATE, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i8* @mmap(i32* null, i64 %37, i32 %38, i32 %39, i32 %40, i32 0)
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = icmp eq i64 %43, -1
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @close(i32 %47)
  br label %60

49:                                               ; preds = %35
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @parse_dep_file(i8* %50, i64 %52)
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @munmap(i8* %54, i64 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @close(i32 %58)
  br label %60

60:                                               ; preds = %49, %45, %29
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @parse_dep_file(i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
