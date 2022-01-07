; ModuleID = '/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_file_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/hv/extr_hv_kvp_daemon.c_kvp_file_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64, i32* }

@ENTRIES_PER_BLOCK = common dso_local global i32 0, align 4
@KVP_CONFIG_LOC = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to create '%s'; error: %d %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@KVP_POOL_COUNT = common dso_local global i32 0, align 4
@kvp_file_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/.kvp_pool_%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvp_file_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvp_file_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ENTRIES_PER_BLOCK, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** @KVP_CONFIG_LOC, align 8
  %11 = load i32, i32* @F_OK, align 4
  %12 = call i64 @access(i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %0
  %15 = load i8*, i8** @KVP_CONFIG_LOC, align 8
  %16 = call i64 @mkdir(i8* %15, i32 493)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i8*, i8** @KVP_CONFIG_LOC, align 8
  %21 = load i32, i32* @errno, align 4
  %22 = load i32, i32* @errno, align 4
  %23 = call i32 @strerror(i32 %22)
  %24 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %21, i32 %23)
  %25 = load i32, i32* @EXIT_FAILURE, align 4
  %26 = call i32 @exit(i32 %25) #3
  unreachable

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %0
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %89, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @KVP_POOL_COUNT, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %29
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i8*, i8** @KVP_CONFIG_LOC, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* @O_RDWR, align 4
  %46 = load i32, i32* @O_CREAT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @O_CLOEXEC, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @open(i8* %44, i32 %49, i32 420)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %54

53:                                               ; preds = %33
  store i32 1, i32* %1, align 4
  br label %93

54:                                               ; preds = %33
  %55 = load i32, i32* %2, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32* @malloc(i32 %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i32* %67, i32** %72, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %54
  store i32 1, i32* %1, align 4
  br label %93

81:                                               ; preds = %54
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvp_file_info, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @kvp_update_mem_state(i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %29

92:                                               ; preds = %29
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %92, %80, %53
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @kvp_update_mem_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
