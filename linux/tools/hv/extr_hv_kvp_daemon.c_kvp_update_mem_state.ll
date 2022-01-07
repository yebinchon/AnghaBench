; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_update_mem_state.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_update_mem_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, %struct.kvp_record*, i32 }
%struct.kvp_record = type { i32 }

@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to open file, pool: %d; error: %d %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to read file, pool: %d; error: %d %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kvp_update_mem_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvp_update_mem_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvp_record*, align 8
  %6 = alloca %struct.kvp_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %4, align 8
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.kvp_record*, %struct.kvp_record** %13, align 8
  store %struct.kvp_record* %14, %struct.kvp_record** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @kvp_acquire_lock(i32 %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @fopen(i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %3, align 8
  %34 = load i32*, i32** %3, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @LOG_ERR, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @errno, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i32, i8*, ...) @syslog(i32 %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %39, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @kvp_release_lock(i32 %43)
  %45 = load i32, i32* @EXIT_FAILURE, align 4
  %46 = call i32 @exit(i32 %45) #3
  unreachable

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %99, %47
  %49 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.kvp_record, %struct.kvp_record* %49, i64 %50
  store %struct.kvp_record* %51, %struct.kvp_record** %6, align 8
  %52 = load %struct.kvp_record*, %struct.kvp_record** %6, align 8
  %53 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %4, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %3, align 8
  %61 = call i64 @fread(%struct.kvp_record* %52, i32 4, i32 %59, i32* %60)
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %4, align 8
  %64 = load i32*, i32** %3, align 8
  %65 = call i64 @ferror(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %48
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = load i32, i32* %2, align 4
  %70 = load i32, i32* @errno, align 4
  %71 = load i32, i32* @errno, align 4
  %72 = call i32 @strerror(i32 %71)
  %73 = call i32 (i32, i8*, ...) @syslog(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70, i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = call i32 @kvp_release_lock(i32 %74)
  %76 = load i32, i32* @EXIT_FAILURE, align 4
  %77 = call i32 @exit(i32 %76) #3
  unreachable

78:                                               ; preds = %48
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @feof(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = mul nsw i32 %86, %87
  %89 = call %struct.kvp_record* @realloc(%struct.kvp_record* %85, i32 %88)
  store %struct.kvp_record* %89, %struct.kvp_record** %5, align 8
  %90 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %91 = icmp eq %struct.kvp_record* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load i32, i32* @LOG_ERR, align 4
  %94 = call i32 (i32, i8*, ...) @syslog(i32 %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @kvp_release_lock(i32 %95)
  %97 = load i32, i32* @EXIT_FAILURE, align 4
  %98 = call i32 @exit(i32 %97) #3
  unreachable

99:                                               ; preds = %82
  br label %48

100:                                              ; preds = %78
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %104 = load i32, i32* %2, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 8
  %108 = load %struct.kvp_record*, %struct.kvp_record** %5, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 2
  store %struct.kvp_record* %108, %struct.kvp_record** %113, align 8
  %114 = load i64, i64* %4, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %116 = load i32, i32* %2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i64 %114, i64* %119, align 8
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @fclose(i32* %120)
  %122 = load i32, i32* %2, align 4
  %123 = call i32 @kvp_release_lock(i32 %122)
  ret void
}

declare dso_local i32 @kvp_acquire_lock(i32) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @kvp_release_lock(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fread(%struct.kvp_record*, i32, i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local %struct.kvp_record* @realloc(%struct.kvp_record*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
