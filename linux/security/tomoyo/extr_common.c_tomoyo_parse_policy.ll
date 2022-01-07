; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_parse_policy.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_parse_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i64, i32 (%struct.tomoyo_io_buffer*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"delete \00", align 1
@TOMOYO_EXCEPTIONPOLICY = common dso_local global i64 0, align 8
@TOMOYO_PROFILE = common dso_local global i64 0, align 8
@tomoyo_kernel_namespace = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_io_buffer*, i8*)* @tomoyo_parse_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_parse_policy(%struct.tomoyo_io_buffer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tomoyo_io_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 7
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 7
  %26 = call i64 @strlen(i8* %25)
  %27 = add nsw i64 %26, 1
  %28 = call i32 @memmove(i8* %21, i8* %23, i64 %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TOMOYO_EXCEPTIONPOLICY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %37 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TOMOYO_PROFILE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %84

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 60
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 32)
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 0, i8* %52, align 1
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @tomoyo_assign_namespace(i8* %54)
  %56 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %57 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32* %55, i32** %58, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = add nsw i64 %62, 1
  %64 = call i32 @memmove(i8* %59, i8* %60, i64 %63)
  br label %69

65:                                               ; preds = %46
  %66 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %67 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %65, %51
  br label %74

70:                                               ; preds = %41
  %71 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32* @tomoyo_kernel_namespace, i32** %73, align 8
  br label %74

74:                                               ; preds = %70, %69
  %75 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %90

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %86 = getelementptr inbounds %struct.tomoyo_io_buffer, %struct.tomoyo_io_buffer* %85, i32 0, i32 1
  %87 = load i32 (%struct.tomoyo_io_buffer*)*, i32 (%struct.tomoyo_io_buffer*)** %86, align 8
  %88 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %4, align 8
  %89 = call i32 %87(%struct.tomoyo_io_buffer* %88)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @tomoyo_assign_namespace(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
