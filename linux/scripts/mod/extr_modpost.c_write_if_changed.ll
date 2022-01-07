; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_if_changed.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_write_if_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i32 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, i8*)* @write_if_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_if_changed(%struct.buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.stat, align 4
  store %struct.buffer* %0, %struct.buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @fileno(i32* %14)
  %16 = call i64 @fstat(i32 %15, %struct.stat* %7)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %63

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.buffer*, %struct.buffer** %3, align 8
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %63

27:                                               ; preds = %19
  %28 = load %struct.buffer*, %struct.buffer** %3, align 8
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @malloc(i32 %30)
  %32 = call i8* @NOFAIL(i32 %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.buffer*, %struct.buffer** %3, align 8
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fread(i8* %33, i32 1, i32 %36, i32* %37)
  %39 = load %struct.buffer*, %struct.buffer** %3, align 8
  %40 = getelementptr inbounds %struct.buffer, %struct.buffer* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %60

44:                                               ; preds = %27
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.buffer*, %struct.buffer** %3, align 8
  %47 = getelementptr inbounds %struct.buffer, %struct.buffer* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.buffer*, %struct.buffer** %3, align 8
  %50 = getelementptr inbounds %struct.buffer, %struct.buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @memcmp(i8* %45, i32 %48, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %60

55:                                               ; preds = %44
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %95

60:                                               ; preds = %54, %43
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @free(i8* %61)
  br label %63

63:                                               ; preds = %60, %26, %18
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @fclose(i32* %64)
  br label %66

66:                                               ; preds = %63, %12
  %67 = load i8*, i8** %4, align 8
  %68 = call i32* @fopen(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @perror(i8* %72)
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %66
  %76 = load %struct.buffer*, %struct.buffer** %3, align 8
  %77 = getelementptr inbounds %struct.buffer, %struct.buffer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.buffer*, %struct.buffer** %3, align 8
  %80 = getelementptr inbounds %struct.buffer, %struct.buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @fwrite(i32 %78, i32 1, i32 %81, i32* %82)
  %84 = load %struct.buffer*, %struct.buffer** %3, align 8
  %85 = getelementptr inbounds %struct.buffer, %struct.buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %75
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @perror(i8* %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %75
  %93 = load i32*, i32** %6, align 8
  %94 = call i32 @fclose(i32* %93)
  br label %95

95:                                               ; preds = %92, %55
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i8* @NOFAIL(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fwrite(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
