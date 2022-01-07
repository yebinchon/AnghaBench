; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_entry_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_misc.c_entry_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@Enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@VERBOSE_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"%s\0Ainterpreter %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"flags: \00", align 1
@MISC_FMT_PRESERVE_ARGV0 = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_BINARY = common dso_local global i32 0, align 4
@MISC_FMT_CREDENTIALS = common dso_local global i32 0, align 4
@MISC_FMT_OPEN_FILE = common dso_local global i32 0, align 4
@Magic = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"extension .%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"offset %i\0Amagic \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"\0Amask \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @entry_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entry_status(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  store i8* %7, i8** %5, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %8 = load i32, i32* @Enabled, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load i32, i32* @VERBOSE_STATUS, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  br label %128

21:                                               ; preds = %14
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %23, i8* %26)
  %28 = load i8*, i8** %5, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %5, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %33 = load i8*, i8** %5, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %5, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MISC_FMT_PRESERVE_ARGV0, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %5, align 8
  store i8 80, i8* %43, align 1
  br label %45

45:                                               ; preds = %42, %21
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MISC_FMT_OPEN_BINARY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 79, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MISC_FMT_CREDENTIALS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %5, align 8
  store i8 67, i8* %63, align 1
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MISC_FMT_OPEN_FILE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %5, align 8
  store i8 70, i8* %73, align 1
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %5, align 8
  store i8 10, i8* %76, align 1
  %78 = load i32, i32* @Magic, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %128

89:                                               ; preds = %75
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %5, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %5, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @bin2hex(i8* %98, i8* %101, i32 %104)
  store i8* %105, i8** %5, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  %108 = load i8*, i8** %107, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %124

110:                                              ; preds = %89
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %113 = load i8*, i8** %5, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %5, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 4
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = call i8* @bin2hex(i8* %116, i8* %119, i32 %122)
  store i8* %123, i8** %5, align 8
  br label %124

124:                                              ; preds = %110, %89
  %125 = load i8*, i8** %5, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %5, align 8
  store i8 10, i8* %125, align 1
  %127 = load i8*, i8** %5, align 8
  store i8 0, i8* %127, align 1
  br label %128

128:                                              ; preds = %17, %124, %83
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i8* @bin2hex(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
