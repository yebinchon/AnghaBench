; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__mmap_flush_parse.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__mmap_flush_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_tag = type { i8, i32 }
%struct.option = type { i64 }
%struct.record_opts = type { i32, i32 }

@record__mmap_flush_parse.tags = internal global [5 x %struct.parse_tag] [%struct.parse_tag { i8 66, i32 1 }, %struct.parse_tag { i8 75, i32 1024 }, %struct.parse_tag { i8 77, i32 1048576 }, %struct.parse_tag { i8 71, i32 1073741824 }, %struct.parse_tag zeroinitializer], align 16
@MMAP_FLUSH_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.option*, i8*, i32)* @record__mmap_flush_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record__mmap_flush_parse(%struct.option* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.record_opts*, align 8
  store %struct.option* %0, %struct.option** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.option*, %struct.option** %5, align 8
  %11 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.record_opts*
  store %struct.record_opts* %13, %struct.record_opts** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %17
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @parse_tag_value(i8* %21, %struct.parse_tag* getelementptr inbounds ([5 x %struct.parse_tag], [5 x %struct.parse_tag]* @record__mmap_flush_parse.tags, i64 0, i64 0))
  %23 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %24 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %26 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strtol(i8* %30, i32* null, i32 0)
  %32 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %33 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %20
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %37 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @MMAP_FLUSH_DEFAULT, align 4
  %42 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %43 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %46 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @evlist__mmap_size(i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sdiv i32 %49, 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %52 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.record_opts*, %struct.record_opts** %9, align 8
  %59 = getelementptr inbounds %struct.record_opts, %struct.record_opts* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %44
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @parse_tag_value(i8*, %struct.parse_tag*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @evlist__mmap_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
