; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_dump_psb.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/debug/i386/extr_dump_psb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"hr:n:\00", align 1
@info_opts = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@relevant = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/mem\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Couldn't open /dev/mem. Are you root?\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"AMDK7PNOW!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i8* null, i8** %10, align 8
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i32, i32* @info_opts, align 4
  %16 = call i32 @getopt_long(i32 %13, i8** %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %15, i32* null)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %28 [
    i32 63, label %18
    i32 104, label %18
    i32 114, label %20
    i32 110, label %23
    i32 -1, label %27
  ]

18:                                               ; preds = %12, %12
  %19 = call i32 (...) @print_help()
  store i32 0, i32* %9, align 4
  br label %28

20:                                               ; preds = %12
  %21 = load i32, i32* @optarg, align 4
  %22 = call i8* @strtol(i32 %21, i32* null, i32 16)
  store i8* %22, i8** @relevant, align 8
  br label %28

23:                                               ; preds = %12
  %24 = load i32, i32* @optarg, align 4
  %25 = call i8* @strtol(i32 %24, i32* null, i32 10)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %7, align 4
  br label %28

27:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %12, %27, %23, %20, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %12, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 @exit(i32 1) #3
  unreachable

40:                                               ; preds = %32
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @PROT_READ, align 4
  %43 = load i32, i32* @MAP_SHARED, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @mmap(i8* %41, i32 262144, i32 %42, i32 %43, i32 %44, i32 786432)
  store i8* %45, i8** %10, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i8*, i8** %10, align 8
  store i8* %48, i8** %11, align 8
  br label %49

49:                                               ; preds = %67, %40
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* @LEN, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load i8*, i8** %11, align 8
  %60 = call i64 @memcmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @decode_psb(i8* %63, i32 %64)
  br label %70

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 16
  store i8* %69, i8** %11, align 8
  br label %49

70:                                               ; preds = %62, %49
  %71 = load i8*, i8** %10, align 8
  %72 = load i32, i32* @LEN, align 4
  %73 = call i32 @munmap(i8* %71, i32 %72)
  ret i32 0
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @print_help(...) #1

declare dso_local i8* @strtol(i32, i32*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @decode_psb(i8*, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
